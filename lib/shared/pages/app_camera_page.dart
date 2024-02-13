import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/models/keycloak.dart';
import 'package:eye_care_for_all/core/services/permission_service.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/pages/app_camera_image_preview.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/eye_detector_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/widgets/eye_detector_painter.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/widgets/triage_eye_camera_display.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';

class AppCameraPage extends ConsumerStatefulWidget {
  const AppCameraPage({
    required this.onCapture,
    required this.topHeading,
    this.isDrawerEnabled = true,
    super.key,
  });

  final Function(XFile?) onCapture;
  final String topHeading;
  final bool isDrawerEnabled;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientAppCameraPageState();
}

class _PatientAppCameraPageState extends ConsumerState<AppCameraPage>
    with WidgetsBindingObserver {
  final FaceMeshDetector meshDetector =
      FaceMeshDetector(option: FaceMeshDetectorOptions.faceMesh);
  CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
  final ResolutionPreset defaultResolution = ResolutionPreset.high;
  late CameraController _controller;
  List<CameraDescription> _cameras = [];
  CustomPaint? customPaint;
  bool _canProcess = false;
  bool _isBusy = false;
  Size _canvasSize = Size.zero;
  bool _isLoading = false;
  String _progressMessage = "Loading...";
  bool _isPermissionGranted = false;
  bool _isEyeValid = false;
  List<Point<double>> _translatedEyeContours = [];

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logger.d('AppCameraPage: initState');

    scaffoldKey = GlobalKey<ScaffoldState>();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final activeRole = PersistentAuthStateService.authState.activeRole;
        final role = roleMapper(activeRole);
        if (role == Role.ROLE_OPTOMETRIST) {
          _cameraLensDirection = CameraLensDirection.back;
        }

        _checkPermissions(context);
      },
    );
  }

  Future<void> _checkPermissions(BuildContext context) async {
    logger.d("AppCameraPage: Check Permission Called");
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
      logger.d("AppCameraPage: Permission not granted");
      navigator.pop();
      Fluttertoast.showToast(msg: "Permission not granted");
    }
  }

  Future<void> _initializeCamera() async {
    logger.d('AppCameraPage: _initializeCamera');
    final NavigatorState navigator = Navigator.of(context);
    try {
      if (_cameras.isEmpty) {
        _cameras = await availableCameras();
      }
      await _startLiveFeed();
    } catch (e) {
      logger.d('Error initializing camera: $e');
      navigator.pop();
      Fluttertoast.showToast(msg: "Camera not found");
    }
  }

  Future<void> _startLiveFeed() async {
    logger.d('AppCameraPage: _startLiveFeed');
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
        if (Platform.isAndroid) {
          _canProcess = true;
          _isBusy = false;
          _controller.startImageStream(_processCameraImage);
        } else {
          logger.d('AppCameraPage: _startLiveFeed: iOS');
        }
      },
    );
    if (mounted) {
      setState(() {});
    }
  }

  void _processCameraImage(CameraImage image) {
    final CameraDescription camera = _cameras.firstWhere(
      (element) => element.lensDirection == _cameraLensDirection,
    );
    final DeviceOrientation orientation = _controller.value.deviceOrientation;
    final InputImage? inputImage = EyeDetectorService.inputImageFromCameraImage(
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
    final List<FaceMesh> meshes = await meshDetector.processImage(inputImage);

    // Measurement of the Fixed Center Eye Scanner Box
    const double boxCenterRatio = 0.5;
    final double boxWidth = _canvasSize.width * (3 / 5);
    final double boxHeight = _canvasSize.height * (1 / 5);
    final Point<double> boxCenter = Point(
      _canvasSize.width * boxCenterRatio,
      _canvasSize.height * boxCenterRatio,
    );

    if (meshes.isNotEmpty) {
      final FaceMesh mesh = meshes[0];
      final List<FaceMeshPoint>? leftEyeContour =
          mesh.contours[FaceMeshContourType.leftEye];
      final List<FaceMeshPoint>? rightEyeContour =
          mesh.contours[FaceMeshContourType.rightEye];

      if (leftEyeContour != null && rightEyeContour != null) {
        final List<FaceMeshPoint> eyePoints =
            EyeDetectorService.isLeftEye(widget.topHeading)
                ? leftEyeContour
                : rightEyeContour;

        // Translate Eye Points
        _translatedEyeContours = eyePoints.map(
          (contour) {
            return EyeDetectorService.translator(
              contour,
              inputImage,
              _canvasSize,
              _cameraLensDirection,
            );
          },
        ).toList();

        // Check if Eyes are inside the box
        final bool eyesInsideTheBox = EyeDetectorService.areEyesInsideTheBox(
          _translatedEyeContours,
          boxCenter,
          boxWidth,
          boxHeight,
        );
        // Get the corner point of the eyes which is needed to calculate eye width
        final Map<String, double> eyeCorners =
            EyeDetectorService.getEyeCorners(_translatedEyeContours);
        // Calculate the eyeWidth ratio to the boxWidth
        final double eyeWidthRatio = EyeDetectorService.getEyeWidthRatio(
          eyeCorners,
          boxWidth,
          boxHeight,
        );
        // Validity of the eye
        _isEyeValid = eyesInsideTheBox &&
            EyeDetectorService.areEyesCloseEnough(eyeWidthRatio);

        ////// TESTING
        await Future.delayed(const Duration(seconds: 1));
        if (_isEyeValid && mounted) {
          final image = await _takePicture(context);
          setState(() {
            _isBusy = false;
          });
          widget.onCapture(image);
          return;
        }
        ////// TESTING
      } else {
        _translatedEyeContours = [];
      }
    } else {
      _translatedEyeContours = [];
    }

    if (inputImage.metadata?.size != null &&
        inputImage.metadata?.rotation != null) {
      final EyeDetectorPainter painter = EyeDetectorPainter(
        _translatedEyeContours,
        boxCenter,
        boxWidth,
        boxHeight,
        _isEyeValid,
        (size) {
          _canvasSize = size;
        },
      );
      customPaint = CustomPaint(painter: painter);
    } else {
      customPaint = null;
    }

    _isBusy = false;
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    logger.d({
      "AppCameraPage: AppLifecycleState": "$state",
      "isPermissionGranted": "$_isPermissionGranted",
      "isLoading": "$_isLoading",
    });
    if (!_isPermissionGranted) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      logger.d('AppCameraPage: AppLifecycleState.inactive');
      setLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d('AppCameraPage: AppLifecycleState.resumed');
      if (mounted) {
        _checkPermissions(context);
      }
    } else if (state == AppLifecycleState.paused) {
      logger.d('AppCameraPage: AppLifecycleState.paused');
      setLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.detached) {
      logger.d('AppCameraPage: AppLifecycleState.detached');
      setLoading();
      _stopLiveFeed();
    }
  }

  @override
  void dispose() {
    logger.d('AppCameraPage: dispose');
    WidgetsBinding.instance.removeObserver(this);
    if (mounted) {
      _stopLiveFeed();
    }
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    logger.d('AppCameraPage: _stopLiveFeed');

    try {
      _canProcess = false;
      meshDetector.close();
      if (_controller.value.isInitialized &&
          _controller.value.isStreamingImages) {
        await _controller.stopImageStream();
        await _controller.dispose();
      }
    } catch (e) {
      logger.d('Error stopping live feed: $e');
    }
  }

  void setLoading([String message = "Loading..."]) {
    setState(() {
      _isLoading = true;
      _progressMessage = message;
    });
  }

  void removeLoading() {
    setState(() {
      _isLoading = false;
    });
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
      return TriageEyeCameraDisplay(
        isDrawerEnabled: widget.isDrawerEnabled,
        scaffoldKey: scaffoldKey,
        isEyeValid: Platform.isAndroid ? _isEyeValid : true,
        onCameraSwitch: () async {
          await _toggleCamera();
        },
        onFlashToggle: () async {
          await _toggleFlash();
        },
        isLoading: _isLoading,
        progressMessage: _progressMessage,
        topHeadingTitle: widget.topHeading,
        controller: _controller,
        customPaint: Platform.isAndroid ? customPaint : null,
        onCapture: () async {
          final XFile? image = await _takePicture(context);
          logger.d("_takePicture: $image");
          widget.onCapture(image);
        },
      );
    }
  }

  Future<void> _toggleCamera() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    setLoading();
    if (_controller.description.lensDirection == CameraLensDirection.front) {
      _cameraLensDirection = CameraLensDirection.back;
    } else {
      _cameraLensDirection = CameraLensDirection.front;
    }
    await _stopLiveFeed();
    _initializeCamera();
    removeLoading();
  }

  Future<void> _toggleFlash() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    setLoading();
    if (_controller.value.flashMode == FlashMode.off ||
        _controller.value.flashMode == FlashMode.auto) {
      await _controller.setFlashMode(FlashMode.torch);
    } else {
      await _controller.setFlashMode(FlashMode.off);
    }

    removeLoading();
  }

  Future<XFile?> _takePicture(BuildContext context) async {
    try {
      final XFile? image = await _capturePicture(context);
      if (image == null) {
        return null;
      }

      final XFile? croppedImage = await _cropImage(image);
      if (croppedImage == null) {
        return null;
      }

      final bool isVerfied = await _validateImage(croppedImage);
      if (!isVerfied) {
        return null;
      }
      return croppedImage;
    } on CameraException {
      Fluttertoast.showToast(msg: "Camera not found");
      return null;
    } catch (e) {
      logger.e("Camera exception: $e");
      Fluttertoast.showToast(msg: "Camera exception");
      return null;
    }
  }

  Future<XFile?> _capturePicture(BuildContext context) async {
    if (!_controller.value.isInitialized) {
      return null;
    }
    setLoading();
    final XFile image = await _controller.takePicture();
    removeLoading();
    return image;
  }

  Future<XFile?> _cropImage(XFile image) async {
    final img.Image? capturedImage =
        img.decodeImage(File(image.path).readAsBytesSync());
    if (capturedImage == null) {
      return null;
    }

    final img.Image mirroredImage =
        _cameraLensDirection == CameraLensDirection.front
            ? img.flipHorizontal(capturedImage)
            : capturedImage;

    final int croppedImageWidth = mirroredImage.width;
    final double croppedImageHeight = mirroredImage.height * (1 / 3);
    final Point<double> mirroredImageCenter = Point(
      mirroredImage.width / 2,
      mirroredImage.height / 2,
    );

    int x = 0;
    int y = (mirroredImageCenter.y - croppedImageHeight / 2).toInt();

    final img.Image croppedImage = img.copyCrop(
      mirroredImage,
      x: x,
      y: y,
      width: croppedImageWidth,
      height: croppedImageHeight.toInt(),
    );

    Directory tempDir = await getTemporaryDirectory();
    String cachePath = tempDir.path;

    final String now = DateTime.now().millisecondsSinceEpoch.toString();

    File croppedImageFile = File('$cachePath/cropped_eyes_$now.jpg')
      ..writeAsBytesSync(img.encodeJpg(croppedImage));

    final XFile croppedXFileImage = XFile(croppedImageFile.path);

    return croppedXFileImage;
  }

  Future<bool> _validateImage(XFile image) async {
    XFile? verifiedImage = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AppCameraImagePreview(imageFile: image),
      ),
    );
    if (verifiedImage != null) {
      return true;
    } else {
      return false;
    }
  }
}
