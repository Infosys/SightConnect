import 'dart:io';
import 'dart:math';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import '../providers/machine_learning_camera_service.dart';
import 'visual_acuity_initiate_page.dart';

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

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initializeCamera();
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
    final screenSize = MediaQuery.of(context).size;
    _processImage(inputImage, screenSize);
  }

  Future<void> _processImage(InputImage inputImage, Size screenSize) async {
    if (!_canProcess) return;
    final meshes = await _meshDetector.processImage(inputImage);
    const boxSizeRatio = 0.7;
    final boxWidth = _canvasSize.width * boxSizeRatio;
    final boxHeight = screenSize.height * boxSizeRatio;
    final boxCenter = Point(
      _canvasSize.width * 0.5,
      _canvasSize.height * 0.5,
    );

    if (meshes.isNotEmpty) {
      final mesh = meshes[0];
      final leftEyeContour = mesh.contours[FaceMeshContourType.leftEye];
      final rightEyeContour = mesh.contours[FaceMeshContourType.rightEye];

      if (leftEyeContour != null && rightEyeContour != null) {
        final leftEyeLandmark =
            MachineLearningCameraService.getEyeLandmark(leftEyeContour);
        final rightEyeLandmark =
            MachineLearningCameraService.getEyeLandmark(rightEyeContour);
        List<Point<double>> eyeLandmarks = [];
        eyeLandmarks.add(leftEyeLandmark);
        eyeLandmarks.add(rightEyeLandmark);
        // Translate Eye Points
        _translatedEyeLandmarks = [];
        for (final landmark in eyeLandmarks) {
          _translatedEyeLandmarks.add(
            MachineLearningCameraService.translator(
              landmark,
              inputImage,
              _canvasSize,
              _cameraLensDirection,
            ),
          );
        }
        // Check if Eyes are inside the box
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
            leftEyeLandmark: leftEyeLandmark,
            rightEyeLandmark: rightEyeLandmark,
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
        _translatedEyeLandmarks = [];
        _distanceToFace = null;
      }
    } else {
      _translatedEyeLandmarks = [];
      _distanceToFace = null;
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_cameras.isEmpty) {
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
      return Scaffold(
        backgroundColor: AppColor.black,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            _canvasSize = Size(constraints.maxWidth, constraints.maxHeight);

            return Stack(
              fit: StackFit.expand,
              children: [
                Center(
                  child: CameraPreview(_controller),
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
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const VisualAcuityInitiatePage(),
              ),
            );
          },
          child: const Icon(Icons.navigate_next),
        ),
      );
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!(_controller.value.isInitialized)) return;
    if (state == AppLifecycleState.inactive) {
      logger.d("AppLifecycleState.inactive");
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d("AppLifecycleState.resumed");
      _initializeCamera();
    }
  }

  @override
  void dispose() {
    logger.d("Dispose Called");
    _stopLiveFeed();
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    logger.d("Stop Live Feed Called");
    _canProcess = false;
    _meshDetector.close();
    await _controller.stopImageStream();
    await _controller.dispose();
  }
}
