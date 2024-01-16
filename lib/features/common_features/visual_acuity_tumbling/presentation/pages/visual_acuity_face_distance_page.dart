import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';

import '../widgets/coordinates_translator.dart';
import '../widgets/get_eye_landmark.dart';
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
  bool _canProcess = true;
  bool _isBusy = false;
  CustomPaint? _customPaint;
  double _focalLength = 0.00001;
  double _sensorY = 0.00001;
  double _sensorX = 0.00001;
  int? _distanceToFace;
  List<Point<double>> _translatedEyeLandmarks = [];
  Size _canvasSize = const Size(0, 0);
  static List<CameraDescription> _cameras = [];
  late CameraController _controller;
  final CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
  final _orientations = {
    DeviceOrientation.portraitUp: 0,
    DeviceOrientation.landscapeLeft: 90,
    DeviceOrientation.portraitDown: 180,
    DeviceOrientation.landscapeRight: 270,
  };

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
  void initState() {
    super.initState();
    _initialize();
    getCameraInfo().then(
      (cameraInfo) {
        _focalLength = cameraInfo?['focalLength'] ?? 0.001;
        _sensorX = cameraInfo?['sensorX'] ?? 0.001;
        _sensorY = cameraInfo?['sensorY'] ?? 0.001;
        _canProcess = true;
      },
    ).catchError(
      (error) {
        debugPrint(error.toString());
      },
    );
  }

  void _initialize() async {
    if (_cameras.isEmpty) {
      _cameras = await availableCameras();
    }
    _startLiveFeed();
  }

  Future<Map<String, double>?> getCameraInfo() async {
    const platform = MethodChannel('com.infosys.eyecareforall/camera');
    try {
      final cameraInfo =
          await platform.invokeMapMethod<String, double>('getCameraInfo');
      return cameraInfo;
    } catch (e) {
      debugPrint('Error getting camera info: $e');
      return {};
    }
  }

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

  void _processCameraImage(CameraImage image) {
    final inputImage = _inputImageFromCameraImage(image);
    if (inputImage == null) return;
    final screenSize = MediaQuery.of(context).size;
    _processImage(inputImage, screenSize);
  }

  InputImage? _inputImageFromCameraImage(CameraImage image) {
    // get image rotation
    // it is used in android to convert the InputImage from Dart to Java: https://github.com/flutter-ml/google_ml_kit_flutter/blob/master/packages/google_mlkit_commons/android/src/main/java/com/google_mlkit_commons/InputImageConverter.java
    // `rotation` is not used in iOS to convert the InputImage from Dart to Obj-C: https://github.com/flutter-ml/google_ml_kit_flutter/blob/master/packages/google_mlkit_commons/ios/Classes/MLKVisionImage%2BFlutterPlugin.m
    // in both platforms `rotation` and `camera.lensDirection` can be used to compensate `x` and `y` coordinates on a canvas: https://github.com/flutter-ml/google_ml_kit_flutter/blob/master/packages/example/lib/vision_detector_views/painters/coordinates_translator.dart
    final camera = _cameras.firstWhere(
      (element) => element.lensDirection == _cameraLensDirection,
    );
    final sensorOrientation = camera.sensorOrientation;
    InputImageRotation? rotation;
    if (Platform.isIOS) {
      rotation = InputImageRotationValue.fromRawValue(sensorOrientation);
    } else if (Platform.isAndroid) {
      var rotationCompensation =
          _orientations[_controller.value.deviceOrientation];
      if (rotationCompensation == null) return null;
      if (camera.lensDirection == CameraLensDirection.front) {
        // front-facing
        rotationCompensation = (sensorOrientation + rotationCompensation) % 360;
      } else {
        // back-facing
        rotationCompensation =
            (sensorOrientation - rotationCompensation + 360) % 360;
      }
      rotation = InputImageRotationValue.fromRawValue(rotationCompensation);
    }
    if (rotation == null) return null;

    // get image format
    final format = InputImageFormatValue.fromRawValue(image.format.raw);
    // validate format depending on platform
    // only supported formats:
    // * nv21 for Android
    // * bgra8888 for iOS
    if (format == null ||
        (Platform.isAndroid && format != InputImageFormat.nv21) ||
        (Platform.isIOS && format != InputImageFormat.bgra8888)) return null;

    // since format is constraint to nv21 or bgra8888, both only have one plane
    if (image.planes.length != 1) return null;
    final plane = image.planes.first;

    // compose InputImage using bytes
    return InputImage.fromBytes(
      bytes: plane.bytes,
      metadata: InputImageMetadata(
        size: Size(
          image.width.toDouble(),
          image.height.toDouble(),
        ),
        rotation: rotation, // used only in Android
        format: format, // used only in iOS
        bytesPerRow: plane.bytesPerRow, // used only in iOS
      ),
    );
  }

  // Function to process the frames as per our requirements
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
        final leftEyeLandmark = GetEyeLandmark.getEyeLandmark(leftEyeContour);
        final rightEyeLandmark = GetEyeLandmark.getEyeLandmark(rightEyeContour);
        List<Point<double>> eyeLandmarks = [];
        eyeLandmarks.add(leftEyeLandmark);
        eyeLandmarks.add(rightEyeLandmark);
        // Translate Eye Points
        // List<Point<double>> translatedEyeLandmarks = [];
        _translatedEyeLandmarks = [];
        for (final landmark in eyeLandmarks) {
          _translatedEyeLandmarks.add(
            _translator(
              landmark,
              inputImage,
            ),
          );
        }
        debugPrint("Translated Eye Landmarks: $_translatedEyeLandmarks");
        // Check if Eyes are inside the box
        final eyeLandmarksInsideTheBox = _areEyeLandmarksInsideTheBox(
          _translatedEyeLandmarks,
          boxCenter,
          boxWidth,
          boxHeight,
        );
        if (eyeLandmarksInsideTheBox) {
          _distanceToFace = _calculateDistanceToScreen(
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

  

  Point<double> _translator(
    Point<double> point,
    InputImage inputImage,
  ) {
    final x = translateX(
      point.x,
      _canvasSize,
      inputImage.metadata!.size,
      inputImage.metadata!.rotation,
      _cameraLensDirection,
    );
    final y = translateY(
      point.y,
      _canvasSize,
      inputImage.metadata!.size,
      inputImage.metadata!.rotation,
    );
    return Point(x, y);
  }

  bool _areEyeLandmarksInsideTheBox(
    List<Point<double>> landmarkPoints,
    Point<double> center,
    double boxWidth,
    double boxHeight,
  ) {
    if (landmarkPoints.isEmpty) return false;
    final halfWidth = boxWidth / 2;
    final halfHeight = boxHeight / 2;
    final topLeft = Point<double>(
      center.x - halfWidth,
      center.y - halfHeight,
    );
    final topRight = Point<double>(
      center.x + halfWidth,
      center.y - halfHeight,
    );
    final bottomRight = Point<double>(
      center.x + halfWidth,
      center.y + halfHeight,
    );
    final bottomLeft = Point<double>(
      center.x - halfWidth,
      center.y + halfHeight,
    );

    for (final Point<double> point in landmarkPoints) {
      // Check if the point is inside the box
      if (!_doesPointLieInsideBox(
        topLeft,
        topRight,
        bottomRight,
        bottomLeft,
        point,
      )) {
        return false;
      }
    }
    // If every point lies inside the box return true
    return true;
  }

  bool _doesPointLieInsideBox(
    Point<double> topLeft,
    Point<double> topRight,
    Point<double> bottomRight,
    Point<double> bottomLeft,
    Point<double> targetPoint,
  ) {
    // Check if the target point lies within the x-range of the square
    if (targetPoint.x >= topLeft.x && targetPoint.x <= topRight.x) {
      // Check if the target point lies within the y-range of the square
      if (targetPoint.y >= topLeft.y && targetPoint.y <= bottomLeft.y) {
        return true; // Point is inside the square
      }
    }
    return false; // Point is outside the square
  }

  int _calculateDistanceToScreen(
      Point<double> leftEyeLandmark,
      Point<double> rightEyeLandmark,
      double focalLength,
      double sensorX,
      double sensorY,
      int imageWidth,
      int imageHeight,
      {double averageEyeDistance = 63.0}) {
    double deltaX = (leftEyeLandmark.x - rightEyeLandmark.x).abs().toDouble();
    double deltaY = (leftEyeLandmark.y - rightEyeLandmark.y).abs().toDouble();
    double distance;
    if (deltaX >= deltaY) {
      distance =
          focalLength * (averageEyeDistance / sensorX) * (imageWidth / deltaX);
    } else {
      distance =
          focalLength * (averageEyeDistance / sensorY) * (imageHeight / deltaY);
    }
    return (distance / 10).round();
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
    return Scaffold(body: _liveFeedBody());
  }

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
