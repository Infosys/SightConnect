import 'dart:io';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/permission_service.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/machine_learning_camera_service_android.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/machine_learning_camera_service_ios.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/visual_acuity_tumbling_test_left_eye_instruction.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart'
    as ios;
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:superapp_scanner/constants/app_color.dart';
import '../providers/distance_notifier_provider.dart';
import '../widgets/visual_acuity_face_distance_painter.dart';

class VisualAcuityFaceDistancePage extends StatelessWidget {
  const VisualAcuityFaceDistancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FaceDistanceDetector(
      onCameraCreated: (controller, paint, distance, isLoading) {
        final isValidDistance =
            distance != null && distance >= 35 && distance <= 45;
        return Scaffold(
          appBar: const CustomAppbar(
            title: Text('Distance to Face'),
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
                          child: controller.value.isInitialized
                              ? (Platform.isAndroid || Platform.isIOS)
                                  ? CameraPreview(
                                      controller,
                                      child: paint,
                                    )
                                  : CameraPreview(
                                      controller,
                                    )
                              : Container(),
                        ),
                      ),
                      Positioned(
                        top: AppSize.height(context) * 0.06,
                        left: AppSize.width(context) * 0.2,
                        right: AppSize.width(context) * 0.2,
                        child: Visibility(
                          visible: Platform.isAndroid || Platform.isIOS,
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.black.withOpacity(0.8),
                            ),
                            child: AutoSizeText(
                              distance != null
                                  ? 'Distance to Face: $distance cm'
                                  : 'Bring your face inside the box',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: isValidDistance
                                    ? const Color(0xff22BF85)
                                    : AppColor.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: AppSize.height(context) * 0.04,
                        left: AppSize.width(context) * 0.1,
                        right: AppSize.width(context) * 0.1,
                        child: ElevatedButton(
                          onPressed: isValidDistance
                              ? () {
                                  Navigator.of(context).pushReplacement(
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
        );
      },
    );
  }
}

class FaceDistanceDetector extends ConsumerStatefulWidget {
  const FaceDistanceDetector({
    super.key,
    required this.onCameraCreated,
  });

  final Widget Function(CameraController, CustomPaint?, int?, bool)
      onCameraCreated;

  @override
  ConsumerState<FaceDistanceDetector> createState() =>
      _FaceDistanceDetectorState();
}

class _FaceDistanceDetectorState extends ConsumerState<FaceDistanceDetector>
    with WidgetsBindingObserver {
  List<CameraDescription> _cameras = [];
  CustomPaint? _customPaint;
  late CameraController _controller;
  final CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
  final FaceMeshDetector _meshDetector = FaceMeshDetector(
    option: FaceMeshDetectorOptions.faceMesh,
  );

  final ios.FaceDetector _faceDetector = ios.FaceDetector(
    options: ios.FaceDetectorOptions(
      enableContours: true,
      enableLandmarks: true,
      enableClassification: true,
    ),
  );

  // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
  final ResolutionPreset _defaultResolution = ResolutionPreset.high;
  bool _canProcess = false;
  bool _isBusy = false;
  double? _focalLength;
  double? _sensorX;
  double? _sensorY;
  int? _distanceToFace;
  List<Point<double>> _translatedEyeLandmarks = [];
  Size _canvasSize = Size.zero;
  bool _isLoading = false;
  bool _isPermissionGranted = false;

  @override
  void initState() {
    logger.d("VisualAcuityFaceDistancePage: Init State Called");
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (Platform.isAndroid || Platform.isIOS) {
        _checkPermissions(context);
      } else {
        Navigator.of(context).pop();
        Fluttertoast.showToast(msg: "Platform not supported");
      }
    });
  }

  Future<void> _checkPermissions(BuildContext context) async {
    logger.d("VisualAcuityFaceDistancePage: Check Permissions Called");
    final NavigatorState navigator = Navigator.of(context);
    if (mounted) {
      setState(() {
        _isPermissionGranted = false;
        _isLoading = false;
      });
    }
    logger.d("VisualAcuityFaceDistancePage: Checking Permissions");
    final bool isGranted =
        await CameraPermissionService.checkPermissions(context);
    logger.d("VisualAcuityFaceDistancePage: isGranted: $isGranted");
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
      final Map<String, double>? cameraInfo = Platform.isAndroid
          ? await MachineLearningCameraServiceAndroid.getCameraInfo()
          : await MachineLearningCameraServiceIOS.getCameraInfo();
      _focalLength = cameraInfo?['focalLength'];
      _sensorX = cameraInfo?['sensorX'];
      _sensorY = cameraInfo?['sensorY'];
      logger.d({
        "VisualAcuityFaceDistancePage: Focal Length": "$_focalLength",
        "VisualAcuityFaceDistancePage: Sensor X": "$_sensorX",
        "VisualAcuityFaceDistancePage: Sensor Y": "$_sensorY",
      });
      if (_focalLength == null || _sensorX == null || _sensorY == null) {
        throw Exception("Camera info not available");
      }
    } catch (error) {
      rethrow;
    }
  }

  void _processCameraImage(CameraImage image) {
    final CameraDescription camera = _cameras.firstWhere(
      (element) => element.lensDirection == _cameraLensDirection,
    );
    final DeviceOrientation orientation = _controller.value.deviceOrientation;

    if (Platform.isAndroid) {
      final InputImage? inputImage =
          MachineLearningCameraServiceAndroid.inputImageFromCameraImage(
        image: image,
        camera: camera,
        deviceOrientation: orientation,
      );
      if (inputImage == null) return;
      _processImage(inputImage);
    } else {
      final ios.InputImage? inputImage =
          MachineLearningCameraServiceIOS.inputImageFromCameraImage(
        image: image,
        camera: camera,
        deviceOrientation: orientation,
      );
      if (inputImage == null) return;
      _processImageIOS(inputImage);
    }
  }

  // Function to process the frames as per our requirements
  Future<void> _processImage(InputImage inputImage) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    setState(() {});
    final List<FaceMesh> meshes = await _meshDetector.processImage(inputImage);
    // Measurement of the Fixed Center Eye Scanner Box
    const double boxSizeRatio = 0.7;
    const double boxCenterRatio = 0.5;
    final double boxWidth = _canvasSize.width * boxSizeRatio;
    final double boxHeight = _canvasSize.height * boxSizeRatio;
    final Point<double> boxCenter = Point(
      _canvasSize.width * boxCenterRatio,
      _canvasSize.height * boxCenterRatio,
    );

    if (meshes.isNotEmpty) {
      final mesh = MachineLearningCameraServiceAndroid.getLargestFace(meshes);
      final List<FaceMeshPoint>? leftEyeContour =
          mesh.contours[FaceMeshContourType.leftEye];
      final List<FaceMeshPoint>? rightEyeContour =
          mesh.contours[FaceMeshContourType.rightEye];
      if (leftEyeContour != null && rightEyeContour != null) {
        final List<Point<double>> eyeLandmarks = [
          MachineLearningCameraServiceAndroid.getEyeLandmark(leftEyeContour),
          MachineLearningCameraServiceAndroid.getEyeLandmark(rightEyeContour),
        ];

        _translatedEyeLandmarks = eyeLandmarks.map((landmark) {
          return MachineLearningCameraServiceAndroid.translator(
            landmark,
            inputImage,
            _canvasSize,
            _cameraLensDirection,
          );
        }).toList();

        final bool eyeLandmarksInsideTheBox =
            MachineLearningCameraServiceAndroid.areEyeLandmarksInsideTheBox(
          _translatedEyeLandmarks,
          boxCenter,
          boxWidth,
          boxHeight,
        );

        if (eyeLandmarksInsideTheBox) {
          _distanceToFace =
              MachineLearningCameraServiceAndroid.calculateDistanceToScreen(
            leftEyeLandmark: eyeLandmarks[0],
            rightEyeLandmark: eyeLandmarks[1],
            focalLength: _focalLength!,
            sensorX: _sensorX!,
            sensorY: _sensorY!,
            imageWidth: inputImage.metadata!.size.width.toInt(),
            imageHeight: inputImage.metadata!.size.height.toInt(),
          );
          ref.read(distanceNotifierProvider).distance = _distanceToFace ?? 0;
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

  // Function to process the frames as per our requirements
  Future<void> _processImageIOS(ios.InputImage inputImage) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    setState(() {});
    final List<ios.Face> faces =
        await _faceDetector.processImage(inputImage);

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
      final ios.Face face =
          MachineLearningCameraServiceIOS.getLargestFace(faces);
      final ios.FaceLandmark? leftEyeLandmark =
          face.landmarks[ios.FaceLandmarkType.leftEye];
      final ios.FaceLandmark? rightEyeLandmark =
          face.landmarks[ios.FaceLandmarkType.rightEye];
      if (leftEyeLandmark != null && rightEyeLandmark != null) {
        final Point<int> leftEyeLandmarkPosition = leftEyeLandmark.position;
        final Point<int> rightEyeLandmarkPosition = rightEyeLandmark.position;

        final List<Point<int>> eyeLandmarks = [
          leftEyeLandmarkPosition,
          rightEyeLandmarkPosition
        ];

        _translatedEyeLandmarks = eyeLandmarks.map((landmark) {
          return MachineLearningCameraServiceIOS.translator(
            landmark,
            inputImage,
            _canvasSize,
            _cameraLensDirection,
          );
        }).toList();

        final bool eyeLandmarksInsideTheBox =
            MachineLearningCameraServiceIOS.areEyeLandmarksInsideTheBox(
          _translatedEyeLandmarks,
          boxCenter,
          boxWidth,
          boxHeight,
        );
        logger.f("eyeLandmarksInsideTheBox: $eyeLandmarksInsideTheBox");

        if (eyeLandmarksInsideTheBox) {
          _distanceToFace =
              MachineLearningCameraServiceIOS.calculateDistanceToScreen(
            leftEyeLandmark: leftEyeLandmarkPosition,
            rightEyeLandmark: rightEyeLandmarkPosition,
            focalLength: _focalLength!,
            sensorX: _sensorX!,
            sensorY: _sensorY!,
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
      "VisualAcuityFaceDistancePage: isPermissionGranted":
          "$_isPermissionGranted",
      "VisualAcuityFaceDistancePage: isLoading": "$_isLoading",
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
    } else if (state == AppLifecycleState.hidden) {
      logger.d("VisualAcuityFaceDistancePage: AppLifecycleState.hidden");
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
      if (Platform.isAndroid) {
        _meshDetector.close();
      } else if (Platform.isIOS) {
        _faceDetector.close();
      }

      if (_controller.value.isInitialized &&
          _controller.value.isStreamingImages) {
        await _controller.stopImageStream();
        await _controller.dispose();
      }
    } catch (e) {
      logger.d('VisualAcuityFaceDistancePage: Error stopping live feed: $e');
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
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }
    if (!_controller.value.isInitialized) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    } else {
      return widget.onCameraCreated(
        _controller,
        _customPaint,
        _distanceToFace,
        _isLoading,
      );
    }
  }
}
