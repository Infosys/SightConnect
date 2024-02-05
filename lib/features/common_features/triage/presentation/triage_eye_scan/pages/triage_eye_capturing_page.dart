import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/models/keycloak.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/permission_service.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_preview_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/widgets/camera_server_exception.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/widgets/test_completion_dialog.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/widgets/triage_eye_camera_display.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/pages/triage_result_page.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/accessibility_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_feedback_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';
import '../provider/eye_detector_service.dart';
import '../provider/triage_eye_scan_provider.dart';
import '../widgets/eye_detector_painter.dart';

class TriageEyeCapturingPage extends ConsumerStatefulWidget {
  const TriageEyeCapturingPage({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientTriageEyeCapturingPageState();
}

class _PatientTriageEyeCapturingPageState
    extends ConsumerState<TriageEyeCapturingPage> with WidgetsBindingObserver {
  late CameraController _controller;
  ResolutionPreset defaultResolution = ResolutionPreset.high;
  // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
  bool isLoading = false;
  String _progressMessage = "Loading...";
  bool isCompleted = false;
  List<CameraDescription> _cameras = [];
  CustomPaint? _customPaint;
  CameraLensDirection _cameraLensDirection = CameraLensDirection.back;
  final FaceMeshDetector _meshDetector = FaceMeshDetector(
    option: FaceMeshDetectorOptions.faceMesh,
  );
  bool _canProcess = false;
  bool _isBusy = false;
  Size _canvasSize = Size.zero;
  bool _isEyeValid = false;
  bool _eyesInsideTheBox = false;
  double _eyeWidthRatio = 0.0;
  List<Point<double>> _translatedEyeContours = [];
  Map<String, double> _eyeCorners = {};
  TriageEyeType _currentEye = TriageEyeType.RIGHT;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool isPermissionGranted = false;

  @override
  void initState() {
    logger.d('TriageEyeCapturingPage  initState');
    super.initState();
    isPermissionGranted = false;
    isLoading = false;
    scaffoldKey = GlobalKey<ScaffoldState>();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (Platform.isAndroid) {
        _checkPermissions(context);
      }
    });
  }

  Future<void> _checkPermissions(BuildContext context) async {
    logger.d("TriageEyeCapturingPage: Check Permission Called");
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
      logger.d("TriageEyeCapturingPage: Permission not granted");
      navigator.pop();
      Fluttertoast.showToast(msg: "Permission not granted");
    }
  }

  Future<void> _initializeCamera() async {
    logger.d('EyeDetectorView _initializeCamera');
    final navigator = Navigator.of(context);
    try {
      if (_cameras.isEmpty) {
        _cameras = await availableCameras();
      }
      _canProcess = true;
      _isBusy = false;
      await _startLiveFeed();
    } catch (e) {
      logger.d('Error initializing camera: $e');
      navigator.pop();
      Fluttertoast.showToast(msg: "Service not available");
    }
  }

  Future<void> _startLiveFeed() async {
    logger.d('EyeDetectorView _startLiveFeed');
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
    final meshes = await _meshDetector.processImage(inputImage);

    // Measurement of the Fixed Center Eye Scanner Box
    const boxCenterRatio = 0.5;
    final boxWidth = _canvasSize.width * (3 / 5);
    final boxHeight = _canvasSize.height * (1 / 5);
    final boxCenter = Point(
      _canvasSize.width * boxCenterRatio,
      _canvasSize.height * boxCenterRatio,
    );

    if (meshes.isNotEmpty) {
      final mesh = meshes[0];
      final leftEyeContour = mesh.contours[FaceMeshContourType.leftEye];
      final rightEyeContour = mesh.contours[FaceMeshContourType.rightEye];

      if (leftEyeContour != null && rightEyeContour != null) {
        final List<FaceMeshPoint> eyePoints =
            EyeDetectorService.isLeftEye(_currentEye)
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
        _eyesInsideTheBox = EyeDetectorService.areEyesInsideTheBox(
          _translatedEyeContours,
          boxCenter,
          boxWidth,
          boxHeight,
        );
        // Get the corner point of the eyes which is needed to calculate eye width
        _eyeCorners = EyeDetectorService.getEyeCorners(_translatedEyeContours);
        // Calculate the eyeWidth ratio to the boxWidth
        _eyeWidthRatio = EyeDetectorService.getEyeWidthRatio(
          _eyeCorners,
          boxWidth,
          boxHeight,
        );
        // Validity of the eye
        _isEyeValid = _eyesInsideTheBox &&
            EyeDetectorService.areEyesCloseEnough(_eyeWidthRatio);
      } else {
        _translatedEyeContours = [];
      }
    } else {
      _translatedEyeContours = [];
    }

    if (inputImage.metadata?.size != null &&
        inputImage.metadata?.rotation != null) {
      final painter = EyeDetectorPainter(
        _translatedEyeContours,
        boxCenter,
        boxWidth,
        boxHeight,
        _isEyeValid,
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
      "TriageEyeCapturingPage: AppLifecycleState": "$state",
      "isPermissionGranted": "$isPermissionGranted",
      "isLoading": "$isLoading",
    });
    if (!isPermissionGranted) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      logger.d('EyeDetectorView AppLifecycleState.inactive');
      setLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d('EyeDetectorView AppLifecycleState.resumed');
      if (mounted) {
        _checkPermissions(context);
      }
    } else if (state == AppLifecycleState.paused) {
      logger.d('EyeDetectorView AppLifecycleState.paused');
      setLoading();
      _stopLiveFeed();
    } else if (state == AppLifecycleState.detached) {
      logger.d('EyeDetectorView AppLifecycleState.detached');
      setLoading();
      _stopLiveFeed();
    }
  }

  @override
  void dispose() {
    logger.d('EyeDetectorView dispose');
    WidgetsBinding.instance.removeObserver(this);
    if (mounted) {
      _stopLiveFeed();
    }
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    logger.d('EyeDetectorView _stopLiveFeed');

    try {
      _canProcess = false;
      _meshDetector.close();
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
      isLoading = true;
      _progressMessage = message;
    });
  }

  void removeLoading() {
    setState(() {
      isLoading = false;
    });
  }

  void _addPermissionLoading() {
    if (mounted) {
      setState(() {
        isPermissionGranted = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var model = ref.watch(triageEyeScanProvider);
    final loc = context.loc!;
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
      return TriageEyeCameraDisplay(
        scaffoldKey: scaffoldKey,
        isEyeValid: _isEyeValid,
        onCameraSwitch: () async {
          await _toggleCamera();
        },
        onFlashToggle: () async {
          await _toggleFlash();
        },
        isLoading: isLoading,
        progressMessage: _progressMessage,
        currentEye: model.currentEye,
        controller: _controller,
        customPaint: _customPaint,
        onCapture: () async {
          if (!_isEyeValid) {
            return;
          }
          final image = await _takePicture(context);
          logger.d("_takePicture: $image");

          if (image == null) {
            Fluttertoast.showToast(msg: loc.imageNotCapturedToastMessage);
            return;
          }
          switch (model.currentEye) {
            case TriageEyeType.RIGHT:
              await _handleRightEyeCapture(model, image);
              break;
            case TriageEyeType.LEFT:
              await _handleLeftEyeCapture(model, image);
              break;
            default:
              break;
          }
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
    if (_controller.value.flashMode == FlashMode.off) {
      await _controller.setFlashMode(FlashMode.auto);
    } else {
      await _controller.setFlashMode(FlashMode.off);
    }

    removeLoading();
  }

  Future<XFile?> _takePicture(BuildContext context) async {
    try {
      final image = await _capturePicture(context);
      if (image == null) {
        return null;
      }

      final croppedImage = await _cropImage(image);
      if (croppedImage == null) {
        return null;
      }

      final isVerfied = await _validateImage(croppedImage);
      if (!isVerfied) {
        return null;
      }
      return image;
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
    final image = await _controller.takePicture();
    removeLoading();
    return image;
  }

  Future _cropImage(XFile image) async {
    final img.Image? capturedImage =
        img.decodeImage(File(image.path).readAsBytesSync());
    if (capturedImage == null) {
      return null;
    }

    final img.Image mirroredImage = img.flipHorizontal(capturedImage);

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
        builder: (context) => TriageEyePreviewPage(imageFile: image),
      ),
    );
    if (verifiedImage != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> _handleRightEyeCapture(
    TriageEyeScanProvider model,
    XFile image,
  ) async {
    setLoading("Uploading Image");
    await model.setRightEyeImage(image);
    removeLoading();
    model.setCurrentEye(TriageEyeType.LEFT);
    setState(() {
      _currentEye = TriageEyeType.LEFT;
      logger.d(" current eye in after set state is : $_currentEye");
    });
  }

  Future<void> _handleLeftEyeCapture(
    TriageEyeScanProvider model,
    XFile image,
  ) async {
    setLoading("Uploading Image");
    await model.setLeftEyeImage(image);
    removeLoading();
    setLoading("Validating...");
    await ref.read(triageEyeScanProvider).saveTriageEyeScanResponseToDB();

    final activeRole = PersistentAuthStateService.authState.activeRole;
    final role = roleMapper(activeRole);
    if (role == Role.ROLE_OPTOMETRIST) {
      // For Optometrist show feedback form and call validation API
      removeLoading();
      if (context.mounted) {
        showTriageFeedbackForm(context);
      }
    } else {
      // For other roles, call triage API
      await saveTriage();
    }
  }

  Future<void> saveTriage() async {
    Either<Failure, TriagePostModel> response;
    var tiageModel = ref.read(triageProvider);

    if (tiageModel.triageMode == TriageMode.EVENT) {
      response = await tiageModel.saveTriageForEvent(
          3, ref.read(addEventDetailsProvider).eventId);
    } else {
      response = await tiageModel.saveTriage(3);
    }
    response.fold(
      (failure) async {
        removeLoading();
        logger.d({"Failure while saving in local db ": failure});
        _showServerExceptionDialog(context, failure);
      },
      (result) async {
        removeLoading();
        logger.d({"saveTriageEyeScanResponseToDB": "Success"});
        setState(() {
          isCompleted = true;
        });
        _showTestCompletionDialog(context, result);
      },
    );
  }

  _showTestCompletionDialog(BuildContext context, TriagePostModel result) {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return TestCompletionDialog(
          onDismiss: () async {
            ref.read(triageStepperProvider).reset();
            if (context.mounted) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => TriageResultPage(
                    triageResult: result,
                  ),
                ),
              );
            }
          },
        );
      },
    );
  }

  _showServerExceptionDialog(BuildContext context, Failure failure) {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return CameraServerExceptionDialog(
          onRetry: () {
            ref.read(resetProvider).reset();
            ref.read(accessibilityProvider).resetBrightness();
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        );
      },
    );
  }
}
