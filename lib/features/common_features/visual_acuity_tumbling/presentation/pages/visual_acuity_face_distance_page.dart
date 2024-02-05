import 'dart:io';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/permission_service.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/visual_acuity_tumbling_test_left_eye_instruction.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:superapp_scanner/constants/app_color.dart';
import '../providers/machine_learning_camera_service.dart';
import '../widgets/visual_acuity_face_distance_painter.dart';

class VisualAcuityFaceDistancePage extends StatefulWidget {
  const VisualAcuityFaceDistancePage({
    Key? key,
  }) : super(key: key);

  @override
  State<VisualAcuityFaceDistancePage> createState() =>
      _VisualAcuityFaceDistancePageViewState();
}

class _VisualAcuityFaceDistancePageViewState
    extends State<VisualAcuityFaceDistancePage> with WidgetsBindingObserver {
  List<CameraDescription> _cameras = [];
  CustomPaint? _customPaint;
  late CameraController _controller;
  final CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
  final FaceDetector _faceDetector = FaceDetector(
    options: FaceDetectorOptions(
      enableContours: true,
      enableLandmarks: true,
      enableClassification: true,
    ),
  );
  // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
  final ResolutionPreset _defaultResolution = ResolutionPreset.high;
  bool _canProcess = false;
  bool _isBusy = false;
  double _focalLength = 0.001;
  double _sensorX = 0.001;
  double _sensorY = 0.001;
  int? _distanceToFace;
  List<Point<double>> _translatedEyeLandmarks = [];
  Size _canvasSize = Size.zero;
  bool _isLoading = false;
  bool _isPermissionGranted = false;

  @override
  void initState() {
    logger.d("VisualAcuityFaceDistancePage: Init State Called");
    super.initState();
    _isPermissionGranted = false;
    _isLoading = false;
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _checkPermissions(context));
  }

  Future<void> _checkPermissions(BuildContext context) async {
    logger.d("VisualAcuityFaceDistancePage: Check Permission Called");
    final NavigatorState navigator = Navigator.of(context);
    if (mounted) {
      setState(() {
        _isPermissionGranted = false;
        _isLoading = false;
      });
    }
    final bool isGranted =
        await CameraPermissionService.checkPermissions(context);
    if (isGranted) {
      if (mounted) {
        setState(() {
          _isPermissionGranted = true;
        });
      }
      await _initializeCamera();
    } else {
      logger.d("VisualAcuityFaceDistancePage: Permission not granted");
      navigator.pop();
      Fluttertoast.showToast(msg: "Permission not granted");
    }
  }

  Future<void> _initializeCamera() async {
    logger.d("VisualAcuityFaceDistancePage: Initialize Camera Called");
    final NavigatorState navigator = Navigator.of(context);
    try {
      if (_cameras.isEmpty) {
        _cameras = await availableCameras();
      }
      _canProcess = true;
      _isBusy = false;
      await _startLiveFeed();
      await _getCameraInfo();
    } catch (e) {
      logger.e("VisualAcuityFaceDistancePage: Error Initializing Camera: $e");
      navigator.pop();
      Fluttertoast.showToast(msg: "Service not available");
    }
  }

  Future<void> _startLiveFeed() async {
    logger.d("VisualAcuityFaceDistancePage: Start Live Feed Called");
    _controller = CameraController(
      _cameras.firstWhere(
        (element) => element.lensDirection == _cameraLensDirection,
      ),
      _defaultResolution,
      enableAudio: false,
      imageFormatGroup: Platform.isAndroid
          ? ImageFormatGroup.nv21
          : ImageFormatGroup.bgra8888,
    );

    await _controller.initialize().then(
      (value) {
        if (!mounted) {
          return;
        }
        _controller.startImageStream(_processCameraImage);
      },
    );
    if (mounted) {
      setState(() {});
    }
  }

  Future<void> _getCameraInfo() async {
    logger.d("VisualAcuityFaceDistancePage: Get Camera Info Called");
    try {
      final Map<String, double>? cameraInfo =
          await MachineLearningCameraService.getCameraInfo();
      _focalLength = cameraInfo?['focalLength'] ?? 0.001;
      _sensorX = cameraInfo?['sensorX'] ?? 0.001;
      _sensorY = cameraInfo?['sensorY'] ?? 0.001;
    } catch (error) {
      logger.e('Error getting camera info: $error');
      rethrow;
    }
  }

  void _processCameraImage(CameraImage image) {
    final CameraDescription camera = _cameras.firstWhere(
      (element) => element.lensDirection == _cameraLensDirection,
    );
    final DeviceOrientation orientation = _controller.value.deviceOrientation;
    final InputImage? inputImage =
        MachineLearningCameraService.inputImageFromCameraImage(
      image: image,
      camera: camera,
      deviceOrientation: orientation,
    );
    if (inputImage == null) return;

    _processImage(inputImage);
  }

  // Function to process the frames as per our requirements
  Future<void> _processImage(InputImage inputImage) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    setState(() {});
    final List<Face> faces = await _faceDetector.processImage(inputImage);

    // Measurement of the Fixed Center Eye Scanner Box
    const double boxSizeRatio = 0.7;
    const double boxCenterRatio = 0.5;
    final double boxWidth = _canvasSize.width * boxSizeRatio;
    final double boxHeight = _canvasSize.height * boxSizeRatio;
    final Point<double> boxCenter = Point(
      _canvasSize.width * boxCenterRatio,
      _canvasSize.height * boxCenterRatio,
    );

    if (faces.isNotEmpty) {
      final Face face = MachineLearningCameraService.getLargestFace(faces);
      final FaceLandmark? leftEyeLandmark =
          face.landmarks[FaceLandmarkType.leftEye];
      final FaceLandmark? rightEyeLandmark =
          face.landmarks[FaceLandmarkType.rightEye];
      if (leftEyeLandmark != null && rightEyeLandmark != null) {
        final Point<int> leftEyeLandmarkPosition = leftEyeLandmark.position;
        final Point<int> rightEyeLandmarkPosition = rightEyeLandmark.position;

        final List<Point<int>> eyeLandmarks = [
          leftEyeLandmarkPosition,
          rightEyeLandmarkPosition
        ];

        _translatedEyeLandmarks = eyeLandmarks.map((landmark) {
          return MachineLearningCameraService.translator(
            landmark,
            inputImage,
            _canvasSize,
            _cameraLensDirection,
          );
        }).toList();

        final bool eyeLandmarksInsideTheBox =
            MachineLearningCameraService.areEyeLandmarksInsideTheBox(
          _translatedEyeLandmarks,
          boxCenter,
          boxWidth,
          boxHeight,
        );

        if (eyeLandmarksInsideTheBox) {
          _distanceToFace =
              MachineLearningCameraService.calculateDistanceToScreen(
            leftEyeLandmark: leftEyeLandmarkPosition,
            rightEyeLandmark: rightEyeLandmarkPosition,
            focalLength: _focalLength,
            sensorX: _sensorX,
            sensorY: _sensorY,
            imageWidth: inputImage.metadata!.size.width.toInt(),
            imageHeight: inputImage.metadata!.size.height.toInt(),
          );
        } else {
          _distanceToFace = null;
        }
      } else {
        _distanceToFace = null;
      }
    } else {
      _distanceToFace = null;
      _translatedEyeLandmarks = [];
    }

    // Calling the Distance Calculator Painter
    if (inputImage.metadata?.size != null &&
        inputImage.metadata?.rotation != null) {
      final VisualAcuityFaceDistancePainter painter =
          VisualAcuityFaceDistancePainter(
        boxCenter,
        boxWidth,
        boxHeight,
        _translatedEyeLandmarks,
        (size) {
          _canvasSize = size;
        },
      );
      _customPaint = CustomPaint(painter: painter);
    } else {
      _customPaint = null;
    }

    _isBusy = false;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    logger.d({
      "VisualAcuityFaceDistancePage: AppLifecycleState": "$state",
      "isPermissionGranted": "$_isPermissionGranted",
      "isLoading": "$_isLoading",
    });
    if (!_isPermissionGranted) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      logger.d("VisualAcuityFaceDistancePage: AppLifecycleState.inactive");
      _addLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d("VisualAcuityFaceDistancePage: AppLifecycleState.resumed");
      if (mounted) {
        _checkPermissions(context);
      }
    } else if (state == AppLifecycleState.paused) {
      logger.d("VisualAcuityFaceDistancePage: AppLifecycleState.paused");
      _addLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.detached) {
      logger.d("VisualAcuityFaceDistancePage: AppLifecycleState.detached");
      _addLoading();
      _stopLiveFeed();
    }
  }

  @override
  void dispose() {
    logger.d('VisualAcuityFaceDistancePage: Dispose Called');
    WidgetsBinding.instance.removeObserver(this);
    if (mounted) {
      _stopLiveFeed();
    }
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    logger.d("VisualAcuityFaceDistancePage: Stop Live Feed Called");
    try {
      _canProcess = false;
      _faceDetector.close();
      if (_controller.value.isInitialized &&
          _controller.value.isStreamingImages) {
        await _controller.stopImageStream();
        await _controller.dispose();
      }
    } catch (e) {
      logger.d('Error stopping live feed: $e');
    }
  }

  void _addLoading() {
    if (mounted) {
      setState(() {
        _isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isPermissionGranted || _isLoading || _cameras.isEmpty) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    if (!_controller.value.isInitialized) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return PopScope(
        canPop: false,
        onPopInvoked: (value) async {
          final NavigatorState navigator = Navigator.of(context);
          if (value) return;
          logger.d("VisualAcuityFaceDistancePage: Pop Invoked");
          _addLoading();
          navigator.pop();
        },
        child: Scaffold(
          appBar: CustomAppbar(
            leadingIcon: IconButton(
              onPressed: () async {
                final NavigatorState navigator = Navigator.of(context);
                logger.d("VisualAcuityFaceDistancePage: Back Button Pressed");
                _addLoading();
                navigator.pop();
              },
              icon: const Icon(Icons.close),
            ),
            title: const Text(
              'Distance to Face',
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Text(
                  "Please keep your face at 40 cm from the screen",
                  textAlign: TextAlign.center,
                  style: applyRobotoFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.topCenter,
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: _controller.value.isInitialized
                              ? CameraPreview(
                                  _controller,
                                  child: _customPaint,
                                )
                              : Container(),
                        ),
                      ),
                      Positioned(
                        top: AppSize.height(context) * 0.06,
                        left: AppSize.width(context) * 0.2,
                        right: AppSize.width(context) * 0.2,
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black.withOpacity(0.8),
                          ),
                          child: AutoSizeText(
                            _distanceToFace != null
                                ? 'Distance to Face: $_distanceToFace cm'
                                : 'Bring your face inside the box',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: (_distanceToFace != null &&
                                      (_distanceToFace! >= 35 &&
                                          _distanceToFace! <= 45))
                                  ? const Color(0xff22BF85)
                                  : AppColor.red,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: AppSize.height(context) * 0.04,
                        left: AppSize.width(context) * 0.1,
                        right: AppSize.width(context) * 0.1,
                        child: ElevatedButton(
                          onPressed: _distanceToFace != null &&
                                  (_distanceToFace! >= 35 &&
                                      _distanceToFace! <= 45)
                              ? () {
                                  final NavigatorState navigator =
                                      Navigator.of(context);
                                  logger.d("Next Button Pressed");
                                  _addLoading();
                                  navigator.pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const VisualAcuityTumblingLeftEyeInstruction(),
                                    ),
                                  );
                                }
                              : null,
                          child: const Text("Proceed"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
