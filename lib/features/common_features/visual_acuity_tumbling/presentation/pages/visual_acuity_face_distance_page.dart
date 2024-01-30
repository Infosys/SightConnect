import 'dart:io';
import 'dart:math';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/permission_service.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/visual_acuity_tumbling_test_left_eye_instruction.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
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
  final ResolutionPreset defaultResolution = ResolutionPreset.high;
  bool _canProcess = false;
  bool _isBusy = false;
  double _focalLength = 0.001;
  double _sensorX = 0.001;
  double _sensorY = 0.001;
  int? _distanceToFace;
  List<Point<double>> _translatedEyeLandmarks = [];
  Size _canvasSize = Size.zero;
  bool isLoading = false;
  bool isPermissionGranted = false;

  @override
  void initState() {
    logger.d("VisualAcuityFaceDistancePage: Init State Called");
    super.initState();
    isPermissionGranted = false;
    isLoading = false;
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _checkPermissions(context));
  }

  Future<void> _checkPermissions(BuildContext context) async {
    logger.d("VisualAcuityFaceDistancePage: Check Permission Called");
    final navigator = Navigator.of(context);
    if (mounted) {
      setState(() {
        isPermissionGranted = false;
        isLoading = false;
      });
    }
    final isGranted = await CameraPermissionService.checkPermissions(context);
    if (isGranted) {
      _addPermissionLoading();
      await _initializeCamera();
    } else {
      logger.d("VisualAcuityFaceDistancePage: Permission not granted");
      navigator.pop();
      Fluttertoast.showToast(msg: "Permission not granted");
    }
  }

  Future<void> _initializeCamera() async {
    logger.d("VisualAcuityFaceDistancePage: Initialize Camera Called");
    final navigator = Navigator.of(context);
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
      defaultResolution,
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
      final cameraInfo = await MachineLearningCameraService.getCameraInfo();
      _focalLength = cameraInfo?['focalLength'] ?? 0.001;
      _sensorX = cameraInfo?['sensorX'] ?? 0.001;
      _sensorY = cameraInfo?['sensorY'] ?? 0.001;
    } catch (error) {
      logger.e('Error getting camera info: $error');
      rethrow;
    }
  }

  void _processCameraImage(CameraImage image) {
    final camera = _cameras.firstWhere(
      (element) => element.lensDirection == _cameraLensDirection,
    );
    final orientation = _controller.value.deviceOrientation;
    final inputImage = MachineLearningCameraService.inputImageFromCameraImage(
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
    final faces = await _faceDetector.processImage(inputImage);
    const boxSizeRatio = 0.7;
    final boxWidth = _canvasSize.width * boxSizeRatio;
    final boxHeight = _canvasSize.height * boxSizeRatio;
    final boxCenter = Point(
      _canvasSize.width * 0.5,
      _canvasSize.height * 0.5,
    );

    if (faces.isNotEmpty) {
      final face = faces[0];
      final leftEyeLandmark = face.landmarks[FaceLandmarkType.leftEye];
      final rightEyeLandmark = face.landmarks[FaceLandmarkType.rightEye];
      if (leftEyeLandmark != null && rightEyeLandmark != null) {
        final leftEyeLandmarkPosition = leftEyeLandmark.position;
        final rightEyeLandmarkPosition = rightEyeLandmark.position;

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

        final eyeLandmarksInsideTheBox =
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
      final painter = VisualAcuityFaceDistancePainter(
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

  void _resetValues() {
    _translatedEyeLandmarks = [];
    _distanceToFace = null;
  }

  @override
  Widget build(BuildContext context) {
    if (!isPermissionGranted || isLoading || _cameras.isEmpty) {
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
          final navigator = Navigator.of(context);
          if (value) return;
          logger.d("VisualAcuityFaceDistancePage: Pop Invoked");
          _addLoading();
          navigator.pop();
        },
        child: Scaffold(
          appBar: CustomAppbar(
            leadingIcon: IconButton(
              onPressed: () async {
                final navigator = Navigator.of(context);
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
                          child: Text(
                            'Distance to Face: ${_distanceToFace ?? '0'}',
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color(0xff22BF85),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              final navigator = Navigator.of(context);
              logger.d("Next Button Pressed");
              _addLoading();
              navigator.pushReplacement(
                MaterialPageRoute(
                  builder: (context) =>
                      const VisualAcuityTumblingLeftEyeInstruction(),
                ),
              );
            },
            child: const Icon(Icons.navigate_next),
          ),
        ),
      );
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    logger.d({
      "VisualAcuityFaceDistancePage: AppLifecycleState": "$state",
      "isPermissionGranted": "$isPermissionGranted",
      "isLoading": "$isLoading",
    });
    if (!isPermissionGranted) {
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
      logger.e('Error stopping live feed: $e');
    }
  }

  void _addLoading() {
    if (mounted) {
      setState(() {
        isLoading = true;
      });
    }
  }

  void _removeLoading() {
    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  void _addPermissionLoading() {
    if (mounted) {
      setState(() {
        isPermissionGranted = true;
      });
    }
  }

  void _removePermissionLoading() {
    if (mounted) {
      setState(() {
        isPermissionGranted = false;
      });
    }
  }
}
