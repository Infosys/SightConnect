import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/services/permission_service.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/services/face_distance_detector_service_android.dart';
import 'package:eye_care_for_all/shared/services/face_distance_detector_service_ios.dart';
import 'package:eye_care_for_all/shared/widgets/face_distance_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart'
    as ios;
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/providers/global_visual_acuity_provider.dart';
import '../../features/common_features/visual_acuity/providers/distance_notifier_provider.dart';

class FaceDistanceDetector extends ConsumerStatefulWidget {
  const FaceDistanceDetector({
    super.key,
    this.showLoader = true,
    required this.onCameraCreated,
  });

  final Widget Function(CameraController, CustomPaint?, int?, bool)
      onCameraCreated;
  final bool showLoader;

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
    debugPrint("VisualAcuityFaceDistancePage: Init State Called");
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
    debugPrint("VisualAcuityFaceDistancePage: Check Permissions Called");
    final NavigatorState navigator = Navigator.of(context);
    if (mounted) {
      setState(() {
        _isPermissionGranted = false;
        _isLoading = false;
      });
    }
    debugPrint("VisualAcuityFaceDistancePage: Checking Permissions");
    final bool isGranted =
        await CameraPermissionService.checkPermissions(context);
    debugPrint("VisualAcuityFaceDistancePage: isGranted: $isGranted");
    if (isGranted) {
      if (mounted) {
        setState(() {
          _isPermissionGranted = true;
        });
      }
      await _initializeCamera();
    } else {
      debugPrint("VisualAcuityFaceDistancePage: Permission not granted");
      navigator.pop();
      Fluttertoast.showToast(msg: "Permission not granted");
    }
  }

  Future<void> _initializeCamera() async {
    debugPrint("VisualAcuityFaceDistancePage: Initialize Camera Called");
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
    debugPrint("VisualAcuityFaceDistancePage: Start Live Feed Called");
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

    await _controller.initialize();
    if (!mounted) {
      return;
    }
    if (!_controller.value.isInitialized) {
      debugPrint(
          "VisualAcuityFaceDistancePage: CameraController not initialized");
      return;
    }
    _controller.startImageStream(processCameraImage);
    if (mounted) {
      setState(() {});
    }
  }

  int streamCount = 0;
  void processCameraImage(CameraImage image) {
    streamCount++;
    if (streamCount % 3 == 0) {
      final CameraDescription camera = _cameras.firstWhere(
        (element) => element.lensDirection == _cameraLensDirection,
      );
      final DeviceOrientation orientation = _controller.value.deviceOrientation;

      final dynamic inputImage = Platform.isAndroid
          ? FaceDistanceDetectorServiceAndroid.inputImageFromCameraImage(
              image: image,
              camera: camera,
              deviceOrientation: orientation,
            )
          : FaceDistanceDetectorServiceIOS.inputImageFromCameraImage(
              image: image,
              camera: camera,
              deviceOrientation: orientation,
            );
      if (inputImage == null) return;
      _processImage(inputImage);
    }
  }

  Future<void> _getCameraInfo() async {
    debugPrint("VisualAcuityFaceDistancePage: Get Camera Info Called");

    try {
      final Map<String, double>? cameraInfo = Platform.isAndroid
          ? await FaceDistanceDetectorServiceAndroid.getCameraInfo()
          : await FaceDistanceDetectorServiceIOS.getCameraInfo();
      _focalLength = cameraInfo?['focalLength'];
      _sensorX = cameraInfo?['sensorX'];
      _sensorY = cameraInfo?['sensorY'];
      debugPrint("VisualAcuityFaceDistancePage: Focal Length $_focalLength");
      debugPrint("VisualAcuityFaceDistancePage: Sensor X $_sensorX");
      debugPrint("VisualAcuityFaceDistancePage: Sensor Y $_sensorY");

      if (_focalLength == null || _sensorX == null || _sensorY == null) {
        throw Exception("Camera info not available");
      }
    } catch (error) {
      rethrow;
    }
  }

  // Function to process the frames as per our requirements
  Future<void> _processImage(InputImage inputImage) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    setState(() {});
    // Measurement of the Fixed Center Eye Scanner Box
    const double boxSizeRatio = 0.7;
    const double boxCenterRatio = 0.5;
    final double boxWidth = _canvasSize.width * boxSizeRatio;
    final double boxHeight = _canvasSize.height * boxSizeRatio;
    final Point<double> boxCenter = Point(
      _canvasSize.width * boxCenterRatio,
      _canvasSize.height * boxCenterRatio,
    );
    if (Platform.isAndroid) {
      final List<FaceMesh> meshes =
          await _meshDetector.processImage(inputImage);
      if (meshes.isNotEmpty) {
        final FaceMesh mesh =
            FaceDistanceDetectorServiceAndroid.getLargestFace(meshes);
        final List<FaceMeshPoint>? leftEyeContour =
            mesh.contours[FaceMeshContourType.leftEye];
        final List<FaceMeshPoint>? rightEyeContour =
            mesh.contours[FaceMeshContourType.rightEye];
        if (leftEyeContour != null && rightEyeContour != null) {
          final List<Point<double>> eyeLandmarks = [
            FaceDistanceDetectorServiceAndroid.getEyeLandmark(leftEyeContour),
            FaceDistanceDetectorServiceAndroid.getEyeLandmark(rightEyeContour),
          ];

          _translatedEyeLandmarks = eyeLandmarks.map(
            (landmark) {
              return FaceDistanceDetectorServiceAndroid.translator(
                landmark,
                inputImage,
                _canvasSize,
                _cameraLensDirection,
              );
            },
          ).toList();

          final bool eyeLandmarksInsideTheBox =
              FaceDistanceDetectorServiceAndroid.areEyeLandmarksInsideTheBox(
            _translatedEyeLandmarks,
            boxCenter,
            boxWidth,
            boxHeight,
          );

          if (eyeLandmarksInsideTheBox) {
            _distanceToFace =
                FaceDistanceDetectorServiceAndroid.calculateDistanceToScreen(
              leftEyeLandmark: eyeLandmarks[0],
              rightEyeLandmark: eyeLandmarks[1],
              focalLength: _focalLength!,
              sensorX: _sensorX!,
              sensorY: _sensorY!,
              imageWidth: inputImage.metadata!.size.width.toInt(),
              imageHeight: inputImage.metadata!.size.height.toInt(),
            );
            setDistanceNotifierData();
          } else {
            _distanceToFace = null;
            setDistanceNotifierData();
          }
        } else {
          _distanceToFace = null;
          setDistanceNotifierData();
        }
      } else {
        _distanceToFace = null;
        _translatedEyeLandmarks = [];
        setDistanceNotifierData();
      }
    } else {
      final List<ios.Face> faces = await _faceDetector.processImage(inputImage);
      if (faces.isNotEmpty) {
        final ios.Face face =
            FaceDistanceDetectorServiceIOS.getLargestFace(faces);
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
            return FaceDistanceDetectorServiceIOS.translator(
              landmark,
              inputImage,
              _canvasSize,
              _cameraLensDirection,
            );
          }).toList();

          final bool eyeLandmarksInsideTheBox =
              FaceDistanceDetectorServiceIOS.areEyeLandmarksInsideTheBox(
            _translatedEyeLandmarks,
            boxCenter,
            boxWidth,
            boxHeight,
          );

          if (eyeLandmarksInsideTheBox) {
            _distanceToFace =
                FaceDistanceDetectorServiceIOS.calculateDistanceToScreen(
              leftEyeLandmark: leftEyeLandmarkPosition,
              rightEyeLandmark: rightEyeLandmarkPosition,
              focalLength: _focalLength!,
              sensorX: _sensorX!,
              sensorY: _sensorY!,
              imageWidth: inputImage.metadata!.size.width.toInt(),
              imageHeight: inputImage.metadata!.size.height.toInt(),
            );
            setDistanceNotifierData();
          } else {
            _distanceToFace = null;
            setDistanceNotifierData();
          }
        } else {
          _distanceToFace = null;
          setDistanceNotifierData();
        }
      } else {
        _distanceToFace = null;
        _translatedEyeLandmarks = [];
        setDistanceNotifierData();
      }
    }

    // Calling the Distance Calculator Painter
    if (inputImage.metadata?.size != null &&
        inputImage.metadata?.rotation != null) {
      final FaceDistanceDectectorPainter painter = FaceDistanceDectectorPainter(
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

  void setDistanceNotifierData() {
    if (!mounted) return;
    if (ref.read(globalVisualAcuityProvider).isShortDistanceTest == true) {
      ref.read(distanceNotifierProvider).distance = _distanceToFace ?? 0;
    } else {
      ref.read(distanceNotifierProvider).longDistance = _distanceToFace ?? 0;
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    debugPrint("VisualAcuityFaceDistancePage: AppLifecycleState $state");
    debugPrint(
        "VisualAcuityFaceDistancePage: isPermissionGranted $_isPermissionGranted");
    debugPrint("VisualAcuityFaceDistancePage: isLoading $_isLoading");

    if (!_isPermissionGranted) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      _addLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      if (mounted) {
        _checkPermissions(context);
      }
    } else if (state == AppLifecycleState.paused) {
      _addLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.detached) {
      _addLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.hidden) {
      _addLoading();
      _stopLiveFeed();
    }
  }

  @override
  void dispose() {
    debugPrint("VisualAcuityFaceDistancePage: Dispose Called");
    WidgetsBinding.instance.removeObserver(this);
    if (mounted) {
      _stopLiveFeed();
    }
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    debugPrint("VisualAcuityFaceDistancePage: Stop Live Feed Called");
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
      debugPrint("VisualAcuityFaceDistancePage: Error stopping live feed: $e");
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
      if (!widget.showLoader) {
        return const SizedBox.shrink();
      }
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }
    if (!_controller.value.isInitialized) {
      if (!widget.showLoader) {
        return const SizedBox.shrink();
      }
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
