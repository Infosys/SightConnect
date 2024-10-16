/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/keycloak.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/service/eye_detector_service.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/widgets/eye_detector_painter.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/permission_service.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/pages/app_camera_image_preview.dart';
import 'package:eye_care_for_all/shared/widgets/app_camera_preview_widget.dart';
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
    required this.eye,
    this.isDrawerEnabled = true,
    super.key,
  });

  final Function(XFile?) onCapture;
  final String topHeading;
  final bool isDrawerEnabled;
  final TriageEyeType eye;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientAppCameraPageState();
}

class _PatientAppCameraPageState extends ConsumerState<AppCameraPage>
    with WidgetsBindingObserver {
  List<CameraDescription> _cameras = [];
  CustomPaint? _customPaint;
  late CameraController _controller;
  CameraLensDirection _cameraLensDirection = CameraLensDirection.front;
  final FaceMeshDetector _meshDetector = FaceMeshDetector(
    option: FaceMeshDetectorOptions.faceMesh,
  );
  // Set to ResolutionPreset.high. Do NOT set it to ResolutionPreset.max because for some phones does NOT work.
  final ResolutionPreset _defaultResolution =
      PersistentAuthStateService.authState.activeRole == "ROLE_OPTOMETRIST"
          ? ResolutionPreset.max
          : ResolutionPreset.veryHigh;
  bool _canProcess = false;
  bool _isBusy = false;
  String _progressMessage = "Loading...";
  bool _isEyeValid = false;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<Point<double>> _translatedEyeContours = [];
  Size _canvasSize = Size.zero;
  bool _isLoading = false;
  bool _isPermissionGranted = false;

  @override
  void initState() {
    logger.d("AppCameraPage: Init State Called");
    super.initState();
    scaffoldKey = GlobalKey<ScaffoldState>();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (Platform.isAndroid || Platform.isIOS) {
        final activeRole = PersistentAuthStateService.authState.activeRole;
        final role = roleMapper(activeRole);
        if (role == Role.ROLE_OPTOMETRIST) {
          _cameraLensDirection = CameraLensDirection.front;
        }
        _checkPermissions(context);
      } else {
        Navigator.of(context).pop();
        Fluttertoast.showToast(msg: "Platform not supported");
      }
    });
  }

  Future<void> _checkPermissions(BuildContext context) async {
    logger.d("AppCameraPage: Check Permissions Called");
    final NavigatorState navigator = Navigator.of(context);
    if (mounted) {
      setState(() {
        _isPermissionGranted = false;
        _isLoading = false;
      });
    }
    logger.d("AppCameraPage: Checking Permissions");
    final bool isGranted =
        await CameraPermissionService.checkPermissions(context);
    logger.d("AppCameraPage: isGranted: $isGranted");
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
      if (context.mounted) {
        Fluttertoast.showToast(msg: context.loc!.permissionNotGranted);
      }
    }
  }

  Future<void> _initializeCamera() async {
    logger.d("AppCameraPage: Initialize Camera Called");
    final NavigatorState navigator = Navigator.of(context);
    final loc = context.loc!;
    try {
      if (_cameras.isEmpty) {
        _cameras = await availableCameras();
      }
      _canProcess = true;
      _isBusy = false;
      await _startLiveFeed();
    } catch (e) {
      logger.e("AppCameraPage: Error Initializing Camera: $e");
      navigator.pop();
      Fluttertoast.showToast(msg: loc.appCameraNotFound);
    }
  }

  Future<void> _startLiveFeed() async {
    logger.d("AppCameraPage: Start Live Feed Called");
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

    if (PersistentAuthStateService.authState.activeRole == "ROLE_OPTOMETRIST") {
      await _controller.initialize().then((value) {
        if (!mounted) {
          return;
        }
      });
    } else {
      await _controller.initialize().then(
        (value) {
          if (!mounted) {
            return;
          }
          int streamCount = 0;
          void processCameraImage(CameraImage image) {
            streamCount++;
            if (streamCount % 3 == 0) {
              final CameraDescription camera = _cameras.firstWhere(
                (element) => element.lensDirection == _cameraLensDirection,
              );
              final DeviceOrientation orientation =
                  _controller.value.deviceOrientation;

              final InputImage? inputImage =
                  EyeDetectorService.inputImageFromCameraImage(
                image: image,
                camera: camera,
                deviceOrientation: orientation,
              );
              if (inputImage == null) return;
              _processImage(inputImage);
            }
          }

          if (Platform.isAndroid) {
            _controller.startImageStream(processCameraImage);
          } else {
            logger.d("AppCameraPage: Start Live Feed Called: IOS");
          }
        },
      );
    }
    if (mounted) {
      setState(() {});
    }
  }

  // Function to process the frames as per our requirements
  Future<void> _processImage(InputImage inputImage) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    setState(() {});
    // Measurement of the Fixed Center Eye Scanner Box
    const double boxCenterRatio = 0.5;
    final double boxWidth = _canvasSize.width * (3 / 5);
    final double boxHeight = _canvasSize.height * (1 / 5);
    final Point<double> boxCenter = Point(
      _canvasSize.width * boxCenterRatio,
      _canvasSize.height * boxCenterRatio,
    );
    final List<FaceMesh> meshes = await _meshDetector.processImage(inputImage);

    if (meshes.isNotEmpty) {
      final FaceMesh mesh = EyeDetectorService.getLargestFace(meshes);
      final List<FaceMeshPoint>? leftEyeContour =
          mesh.contours[FaceMeshContourType.leftEye];
      final List<FaceMeshPoint>? rightEyeContour =
          mesh.contours[FaceMeshContourType.rightEye];
      if (leftEyeContour != null && rightEyeContour != null) {
        final List<FaceMeshPoint> eyePoints =
            EyeDetectorService.isLeftEye(widget.eye)
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
        final bool eyeContoursInsideTheBox =
            EyeDetectorService.areEyeContoursInsideTheBox(
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
        _isEyeValid = eyeContoursInsideTheBox &&
            EyeDetectorService.areEyesCloseEnough(eyeWidthRatio);
      } else {
        _translatedEyeContours = [];
      }
    } else {
      _translatedEyeContours = [];
    }

    // Calling the Eye Detector Painter
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
      "AppCameraPage: AppLifecycleState": "$state",
      "AppCameraPage: isPermissionGranted": "$_isPermissionGranted",
      "AppCameraPage: isLoading": "$_isLoading",
    });
    if (!_isPermissionGranted) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      logger.d("AppCameraPage: AppLifecycleState.inactive");
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d("AppCameraPage: AppLifecycleState.resumed");
      if (mounted) {
        _checkPermissions(context);
      }
    } else if (state == AppLifecycleState.paused) {
      logger.d("AppCameraPage: AppLifecycleState.paused");
      _stopLiveFeed();
    } else if (state == AppLifecycleState.detached) {
      logger.d("AppCameraPage: AppLifecycleState.detached");
      _stopLiveFeed();
    } else if (state == AppLifecycleState.hidden) {
      logger.d("AppCameraPage: AppLifecycleState.hidden");
      _stopLiveFeed();
    }
  }

  @override
  void dispose() {
    logger.d("AppCameraPage: Dispose Called");
    WidgetsBinding.instance.removeObserver(this);
    if (mounted) {
      _stopLiveFeed();
    }
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    logger.d("AppCameraPage: Stop Live Feed Called");
    try {
      _canProcess = false;
      if (Platform.isAndroid) {
        _meshDetector.close();
      }
      if (_controller.value.isInitialized &&
          _controller.value.isStreamingImages) {
        await _controller.stopImageStream();
        await _controller.dispose();
      }
    } catch (e) {
      logger.d("AppCameraPage: Error stopping live feed: $e");
    }
  }

  void _addLoading([String message = "Loading..."]) {
    if (mounted) {
      setState(() {
        _isLoading = true;
        _progressMessage = message;
      });
    }
  }

  void _removeLoading() {
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isPermissionGranted || _cameras.isEmpty) {
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
      return AppCameraPreviewWidget(
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
        customPaint: Platform.isAndroid ? _customPaint : null,
        onCapture: () async {
          if (PersistentAuthStateService.authState.activeRole !=
              "ROLE_OPTOMETRIST") {
            if (Platform.isAndroid && !_isEyeValid) {
              return;
            }
          }
          final XFile? image = await _takePicture(context);
          logger.d("_takePicture: $image");
          widget.onCapture(image);
        },
      );
    }
  }

  Future<void> _toggleCamera() async {
    logger.d("AppCameraPage: Switching Camera");
    if (!_controller.value.isInitialized) {
      return;
    }
    _addLoading("Switching Camera Lens");
    if (_controller.description.lensDirection == CameraLensDirection.front) {
      _cameraLensDirection = CameraLensDirection.back;
    } else {
      _cameraLensDirection = CameraLensDirection.front;
    }
    await _stopLiveFeed();
    if (mounted) {
      await _checkPermissions(context);
    }
  }

  Future<void> _toggleFlash() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    _addLoading();
    if (_controller.value.flashMode == FlashMode.off ||
        _controller.value.flashMode == FlashMode.auto) {
      await _controller.setFlashMode(FlashMode.torch);
    } else {
      await _controller.setFlashMode(FlashMode.off);
    }
    _removeLoading();
  }

  Future<XFile?> _takePicture(BuildContext context) async {
    final loc = context.loc!;
    _addLoading(loc.appCameraPageTakePictureLoadingOverlayMessage);

    try {
      final XFile? image = await _capturePicture(context);
      if (image == null) {
        return null;
      }

      final XFile? croppedImage = await _cropImage(image);
      if (croppedImage == null) {
        return null;
      }

      final isVerfied = await _validateImage(croppedImage);

      return isVerfied;
    } on CameraException {
      Fluttertoast.showToast(msg: loc.appCameraNotFound);
      return null;
    } catch (e) {
      logger.e("Camera exception: $e");
      Fluttertoast.showToast(msg: loc.appCameraException);
      return null;
    }
  }

  Future<XFile?> _capturePicture(BuildContext context) async {
    if (!_controller.value.isInitialized) {
      return null;
    }
    final XFile image = await _controller.takePicture();
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

  Future<XFile?> _validateImage(XFile image) async {
    await _stopLiveFeed();
    XFile? verifiedImage;
    if (mounted) {
      verifiedImage = await Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => AppCameraImagePreview(imageFile: image),
        ),
      );
    }
    if (mounted) {
      await _checkPermissions(context);
    }
    return verifiedImage;
  }
}
