import 'dart:io';
import 'dart:math';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/services/permission_service.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/widgets/visual_acuity_tumbling_test_left_eye_instruction.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
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
  final bool _enablePainterView = false;
  late CameraController _controller;
  final CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
  final FaceMeshDetector _meshDetector = FaceMeshDetector(
    option: FaceMeshDetectorOptions.faceMesh,
  );
  // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
  final ResolutionPreset defaultResolution = ResolutionPreset.high;
  bool _canProcess = false;
  double _focalLength = 0.001;
  double _sensorX = 0.001;
  double _sensorY = 0.001;
  int? _distanceToFace;
  List<Point<double>> _translatedEyeLandmarks = [];
  Size _canvasSize = Size.zero;
  final List<int> _distanceBuffer = [];
  int bufferSize = 10;
  bool isLoading = false;
  bool isPermissionGranted = false;

  @override
  void initState() {
    super.initState();
    isPermissionGranted = false;
    isLoading = false;
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance
        .addPostFrameCallback((_) => _checkPermissions(context));
  }

  Future<void> _checkPermissions(BuildContext context) async {
    final navigator = Navigator.of(context);
    setState(() {
      isPermissionGranted = false;
    });

    final isGranted = await CameraPermissionService.checkPermissions(context);

    if (isGranted) {
      setState(() {
        isPermissionGranted = true;
      });

      _initializeCamera();
    } else {
      navigator.pop();
      Fluttertoast.showToast(msg: "Permission not granted");
    }
  }

  Future<void> _initializeCamera() async {
    final navigator = Navigator.of(context);
    try {
      if (_cameras.isEmpty) {
        _cameras = await availableCameras();
      }
      _canProcess = true;
      await _startLiveFeed();
      await _getCameraInfo();
    } catch (e) {
      navigator.pop();
      Fluttertoast.showToast(msg: "Service not available");
    }
  }

  Future<void> _startLiveFeed() async {
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
    setState(() {});
  }

  Future<void> _getCameraInfo() async {
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

  Future<void> _processImage(InputImage inputImage) async {
    if (!_canProcess) return;

    final meshes = await _meshDetector.processImage(inputImage);
    const boxSizeRatio = 0.7;
    final boxWidth = _canvasSize.width * boxSizeRatio;
    final boxHeight = _canvasSize.height * boxSizeRatio;
    final boxCenter = Point(
      _canvasSize.width * 0.5,
      _canvasSize.height * 0.5,
    );

    if (meshes.isNotEmpty) {
      final mesh = meshes[0];
      final leftEyeContour = mesh.contours[FaceMeshContourType.leftEye];
      final rightEyeContour = mesh.contours[FaceMeshContourType.rightEye];

      if (leftEyeContour != null && rightEyeContour != null) {
        final eyeLandmarks = [
          MachineLearningCameraService.getEyeLandmark(leftEyeContour),
          MachineLearningCameraService.getEyeLandmark(rightEyeContour),
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
            leftEyeLandmark: eyeLandmarks[0],
            rightEyeLandmark: eyeLandmarks[1],
            focalLength: _focalLength,
            sensorX: _sensorX,
            sensorY: _sensorY,
            imageWidth: inputImage.metadata!.size.width.toInt(),
            imageHeight: inputImage.metadata!.size.height.toInt(),
          );
        } else {
          _resetValues();
        }
      } else {
        _resetValues();
      }
    } else {
      _resetValues();
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

    if (mounted) {
      setState(() {});
    }
  }

  //The updateDistance function is helping to smooth out the fluctuations in the _distanceToFace value by implementing a simple moving average.
  // void _updateDistance(int newDistance) {
  //   _distanceBuffer.add(newDistance);
  //   if (_distanceBuffer.length > bufferSize) {
  //     _distanceBuffer.removeAt(0);
  //   }
  //   _distanceToFace =
  //       _distanceBuffer.reduce((a, b) => a + b) ~/ _distanceBuffer.length;
  //   setState(() {});
  // }

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
        onPopInvoked: (value) {
          if (value) return;
          _stopLiveFeed();
        },
        child: Scaffold(
          backgroundColor: AppColor.black,
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              // _canvasSize = Size(constraints.maxWidth, constraints.maxHeight);
              return Stack(
                children: [
                  Center(
                    child: _enablePainterView
                        ? CameraPreview(
                            _controller,
                            child: _customPaint,
                          )
                        : CameraPreview(
                            _controller,
                          ),
                  ),
                  Positioned(
                    top: 140,
                    left: AppSize.width(context) * 0.2,
                    right: AppSize.width(context) * 0.2,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.primary.withOpacity(0.6),
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        'Distance to Face: ${_distanceToFace ?? 'Not Found'}',
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              final navigator = Navigator.of(context);

              await _stopLiveFeed();

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
    if (!isPermissionGranted) return;
    if (!(_controller.value.isInitialized)) return;
    if (state == AppLifecycleState.inactive) {
      logger.d("AppLifecycleState.inactive");
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d("AppLifecycleState.resumed");
      _checkPermissions(context);
    }
  }

  Future<void> _stopLiveFeed() async {
    logger.d("Stop Live Feed Called");
    setState(() {
      isLoading = true;
    });
    _canProcess = false;
    _meshDetector.close();
    await _controller.stopImageStream();
    await _controller.dispose();
  }
}
