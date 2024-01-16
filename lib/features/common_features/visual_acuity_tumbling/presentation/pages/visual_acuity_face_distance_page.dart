import 'dart:io';
import 'dart:math';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import '../providers/machine_learning_camera_service.dart';
import '../widgets/visual_acuity_face_distance_painter.dart';
import 'visual_acuity_initiate_page.dart';

class VisualAcuityFaceDistancePage extends StatefulWidget {
  const VisualAcuityFaceDistancePage({
    Key? key,
    this.onCameraFeedReady,
  }) : super(key: key);

  final VoidCallback? onCameraFeedReady;

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
  bool _canProcess = false;
  bool _isBusy = false;
  double _focalLength = 0.001;
  double _sensorX = 0.001;
  double _sensorY = 0.001;
  int? _distanceToFace;
  List<Point<double>> _translatedEyeLandmarks = [];
  Size _canvasSize = Size.zero;
  CustomPaint? _customPaint = const CustomPaint();

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    _cameras = await availableCameras();
    _canProcess = true;
    await _startLiveFeed();
    await _getCameraInfo();
  }

  Future<void> _startLiveFeed() async {
    _controller = CameraController(
      _cameras.firstWhere(
          (element) => element.lensDirection == _cameraLensDirection),
      // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: Platform.isAndroid
          ? ImageFormatGroup.nv21
          : ImageFormatGroup.bgra8888,
    );
    await _controller.initialize();
    if (!mounted) return;
    _controller
        .startImageStream(_processCameraImage)
        .then((value) => widget.onCameraFeedReady?.call());
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
    }
  }

  void _processCameraImage(CameraImage image) {
    final camera = _cameras
        .firstWhere((element) => element.lensDirection == _cameraLensDirection);
    final orientation = _controller.value.deviceOrientation;
    final inputImage = MachineLearningCameraService.inputImageFromCameraImage(
        image, camera, orientation);
    if (inputImage == null) return;
    final screenSize = MediaQuery.of(context).size;
    _processImage(inputImage, screenSize);
  }

  Future<void> _processImage(InputImage inputImage, Size screenSize) async {
    if (!_canProcess || _isBusy) return;
    _isBusy = true;

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
        debugPrint("Translated Eye Landmarks: $_translatedEyeLandmarks");
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
            leftEyeLandmark,
            rightEyeLandmark,
            _focalLength,
            _sensorX,
            _sensorY,
            inputImage.metadata!.size.width.toInt(),
            inputImage.metadata!.size.height.toInt(),
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

    // Calling the Distance Calculator Painter
    if (inputImage.metadata?.size != null &&
        inputImage.metadata?.rotation != null) {
      final painter = VisualAcuityFaceDistancePainter(
        inputImage.metadata!.size,
        boxCenter,
        _distanceToFace,
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
    if (!(_controller.value.isInitialized)) return;
    if (state == AppLifecycleState.inactive) {
      _stopLiveFeed();
      _meshDetector.close();
      _canProcess = false;
    } else if (state == AppLifecycleState.resumed) {
      _initializeCamera();
    }
  }

  @override
  void dispose() {
    _canProcess = false;
    _meshDetector.close();
    _stopLiveFeed();
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    await _controller.stopImageStream();
    await _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _liveFeedBody(),
      floatingActionButton: _nextButton(),
    );
  }

  Widget _liveFeedBody() {
    if (!_controller.value.isInitialized) {
      return Container();
    }
    return Container(
      color: Colors.black,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Center(
            child: CameraPreview(
              _controller,
              child: _customPaint,
            ),
          ),
          // Your existing widgets for displaying the face mesh and other UI elements go here
        ],
      ),
    );
  }

  Widget _nextButton() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const VisualAcuityInitiatePage()),
        );
        _stopLiveFeed();
      },
      child: const Icon(Icons.navigate_next),
    );
  }
}
