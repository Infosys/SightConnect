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
  final FaceMeshDetector _meshDetector = FaceMeshDetector(
    option: FaceMeshDetectorOptions.faceMesh,
  );
  double _focalLength = 0.00001;
  double _sensorY = 0.00001;
  double _sensorX = 0.00001;
  bool _canProcess = true;
  bool _isBusy = false;
  CustomPaint? _customPaint;

  int? _distanceToFace;
  List<Point<double>> _translatedEyeLandmarks = [];
  Size _canvasSize = const Size(0, 0);
  static List<CameraDescription> _cameras = [];
  late CameraController _controller;
  final CameraLensDirection _cameraLensDirection = CameraLensDirection.front;

//This method is called once when the State object is created. It initializes the camera and fetches the camera info.
  @override
  void initState() {
    super.initState();
    _initialize();
    MachineLearningCameraService.getCameraInfo().then(
      (cameraInfo) {
        _focalLength = cameraInfo?['focalLength'] ?? 0.001;
        _sensorX = cameraInfo?['sensorX'] ?? 0.001;
        _sensorY = cameraInfo?['sensorY'] ?? 0.001;
      },
    ).catchError(
      (error) {
        logger.e('Error getting camera info: $error');
      },
    );
  }

//This method initializes the camera by getting the available cameras and starting the live feed.
  Future<void> _initialize() async {
    if (_cameras.isEmpty) {
      _cameras = await availableCameras();
    }
    _canProcess = true;
    _startLiveFeed();
  }

  //This method starts the live feed from the camera. It initializes the CameraController and starts the image stream.
  Future _startLiveFeed() async {
    _controller = CameraController(
      _cameras.firstWhere(
        (element) => element.lensDirection == _cameraLensDirection,
      ),
      // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
      ResolutionPreset.high,
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
        _controller.startImageStream(_processCameraImage).then(
          (value) {
            if (widget.onCameraFeedReady != null) {
              widget.onCameraFeedReady!();
            }
          },
        );
        setState(() {});
      },
    );
  }

//This method processes each frame from the camera feed. It converts the CameraImage to an InputImage and then processes the InputImage.
  void _processCameraImage(CameraImage image) {
    final camera = _cameras.firstWhere(
      (element) => element.lensDirection == _cameraLensDirection,
    );
    final orientation = _controller.value.deviceOrientation;
    final inputImage = MachineLearningCameraService.inputImageFromCameraImage(
        image, camera, orientation);
    if (inputImage == null) return;
    final screenSize = MediaQuery.of(context).size;
    _processImage(inputImage, screenSize);
  }

  //This method processes the InputImage. It detects faces in the image, translates the eye landmarks, checks if the eyes are inside the box, and calculates the distance to the face.
  Future<void> _processImage(InputImage inputImage, Size screenSize) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    setState(() {});
    final meshes = await _meshDetector.processImage(inputImage);

    final boxWidth = _canvasSize.width * (7 / 10);
    final boxHeight = screenSize.height * (7 / 10);
    final boxCenter = Point(
      _canvasSize.width * (1 / 2),
      _canvasSize.height * (1 / 2),
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
        // List<Point<double>> translatedEyeLandmarks = [];
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

//This method is called when the app lifecycle state changes. It stops the live feed and closes the face mesh detector when the app is inactive, and reinitializes the camera when the app is resumed.
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController cameraController = _controller;
    if (!cameraController.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      debugPrint("AppLifecycleState.inactive Called");
      cameraController.dispose();
      cameraController.stopImageStream();
      _canProcess = false;
      _meshDetector.close();
    } else if (state == AppLifecycleState.resumed) {
      debugPrint("AppLifecycleState.resumed Called");
      _initialize();
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _canProcess = false;
    _meshDetector.close();
    _stopLiveFeed();
    _controller.dispose();
    super.dispose();
  }

  Future _stopLiveFeed() async {
    await _controller.stopImageStream();
    await _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _liveFeedBody(),
    );
  }

//This method builds the body of the page. It returns a Container containing the camera preview and the next button.
  Widget _liveFeedBody() {
    if (_cameras.isEmpty) return Container();
    if (_controller.value.isInitialized == false) return Container();
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
          _nextButton(),
        ],
      ),
    );
  }

  Widget _nextButton() => SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const VisualAcuityInitiatePage(),
                  ),
                );
                _stopLiveFeed();
              },
              child: const Text('Next'),
            ),
          ),
        ),
      );
}
