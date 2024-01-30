import 'dart:io' show Platform;
import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/keycloak.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_preview_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/widgets/camera_server_exception.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/widgets/test_completion_dialog.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/pages/triage_result_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_feedback_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_mlkit_face_mesh_detection/google_mlkit_face_mesh_detection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';
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
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isIOS = Platform.isIOS;

  @override
  void initState() {
    logger.d('EyeDetectorView initState');
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (isCompleted == false && !isIOS) {
      _initializeCamera();
    }
  }

  void _initializeCamera() async {
    logger.d('EyeDetectorView _initializeCamera');
    final NavigatorState navigator = Navigator.of(context);
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
    final boxWidth = _canvasSize.width * (3 / 5);
    final boxHeight = _canvasSize.height * (1 / 5);
    final boxCenter = Point(
      _canvasSize.width * (1 / 2),
      _canvasSize.height * (1 / 2),
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

  // Future<bool> _cameraPermisson() async {
  //   final status = await Permission.camera.status;
  //   if (status.isGranted) {
  //     return true;
  //   } else if (status.isDenied) {
  //     final result = await Permission.camera.request();
  //     if (result.isGranted) {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   } else {
  //     return false;
  //   }
  // }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!(_controller.value.isInitialized)) return;
    if (state == AppLifecycleState.inactive) {
      logger.d('EyeDetectorView AppLifecycleState.inactive');
      _stopLiveFeed();
    } else if (state == AppLifecycleState.resumed) {
      logger.d('EyeDetectorView AppLifecycleState.resumed');
      _initializeCamera();
    } else if (state == AppLifecycleState.paused) {
      logger.d('EyeDetectorView AppLifecycleState.paused');
      _stopLiveFeed();
    } else if (state == AppLifecycleState.detached) {
      logger.d('EyeDetectorView AppLifecycleState.detached');
      _stopLiveFeed();
    } else if (state == AppLifecycleState.hidden) {
      logger.d('EyeDetectorView AppLifecycleState.hidden');
      _stopLiveFeed();
    }
  }

  @override
  void dispose() {
    logger.d('EyeDetectorView dispose');
    WidgetsBinding.instance.removeObserver(this);
    _stopLiveFeed();
    super.dispose();
  }

  Future<void> _stopLiveFeed() async {
    logger.d('EyeDetectorView _stopLiveFeed');
    try {
      _canProcess = false;
      _meshDetector.close();
      // if (_controller.value.isInitialized &&
      //     _controller.value.isStreamingImages) {
      //   await _controller.stopImageStream();
      //   await _controller.dispose();
      // }
      await _controller.stopImageStream();
      await _controller.dispose();
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

  @override
  Widget build(BuildContext context) {
    var model = ref.watch(triageEyeScanProvider);
    final loc = context.loc!;
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
      return TraceableWidget(
        actionName: 'Triage Eye Scan',
        child: PopScope(
          canPop: false,
          onPopInvoked: (value) {
            if (value) {
              return;
            }
            showDialog(
              context: context,
              builder: (context) => TriageExitAlertBox(
                content: context.loc!.eyeScanExitDialog,
              ),
            );
          },
          child: Scaffold(
            key: scaffoldKey,
            extendBodyBehindAppBar: true,
            backgroundColor: AppColor.black,
            drawer: const TriageStepsDrawer(),
            appBar: CustomAppbar(
              iconTheme: const IconThemeData(
                color: AppColor.white,
              ),
              actionsIconTheme: const IconThemeData(
                color: AppColor.white,
              ),
              backgroundColor: Colors.transparent,
              leadingWidth: 60,
              titleSpacing: 0.0,
              centerTitle: false,
              leadingIcon: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Image.asset(
                    AppIcon.hamburgerIcon,
                    color: AppColor.white,
                  ),
                ),
              ),
              title: Text(
                loc.eyeScanTitle,
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColor.white,
                ),
              ),
              actions: [
                InkWell(
                  onTap: () async {
                    await _toggleFlash();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.kmpadding),
                    child: Icon(
                      _controller.value.flashMode == FlashMode.off
                          ? Icons.flash_off
                          : Icons.flash_on,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ],
            ),
            body: LoadingOverlay(
              isLoading: isLoading,
              progressMessage: _progressMessage,
              child: Container(
                color: AppColor.black,
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    !isIOS
                        ? Positioned.fill(
                            child: CameraPreview(
                              _controller,
                              child: _customPaint,
                            ),
                          )
                        : Positioned.fill(
                            child: CameraPreview(
                              _controller,
                            ),
                          ),
                    Positioned(
                      top: 100,
                      left: null,
                      right: null,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          _eyeLocalization(model.currentEye, context),
                          style: applyRobotoFont(
                            fontSize: 16,
                            color: AppColor.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Visibility(
                          visible: !_isEyeValid,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              width: AppSize.width(context) * 0.8,
                              decoration: BoxDecoration(
                                color: AppColor.black.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                loc.eyeBoxText,
                                textAlign: TextAlign.center,
                                style: applyRobotoFont(
                                  fontSize: 16,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(24),
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await _toggleCamera();
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: AppSize.kmpadding,
                                  ),
                                  child: Icon(
                                    Icons.flip_camera_ios,
                                    color: AppColor.white,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () async {
                                  if (!_isEyeValid) {
                                    return;
                                  }
                                  final image = await _takePicture(context);
                                  logger.d("Image: $image");
                                  if (image == null) {
                                    Fluttertoast.showToast(
                                        msg: loc.imageNotCapturedToastMessage);
                                    return;
                                  }

                                  if (model.currentEye == TriageEyeType.RIGHT) {
                                    setLoading("Uploading Image");
                                    await model.setRightEyeImage(image);
                                    removeLoading();
                                    model.setCurrentEye(TriageEyeType.LEFT);
                                    setState(() {
                                      _currentEye = TriageEyeType.LEFT;
                                      logger.d(
                                          " current eye in after set state is : $_currentEye");
                                    });
                                  } else if (model.currentEye ==
                                      TriageEyeType.LEFT) {
                                    setLoading("Uploading Image");
                                    await model.setLeftEyeImage(image);
                                    removeLoading();
                                    setLoading("Validating...");
                                    await ref
                                        .read(triageEyeScanProvider)
                                        .saveTriageEyeScanResponseToDB();

                                    final activeRole =
                                        PersistentAuthStateService
                                            .authState.activeRole;
                                    final role = roleMapper(activeRole);
                                    if (role == Role.ROLE_OPTOMETRIST) {
                                      // ONLY For OPTOMETRIST
                                      //Validation API Call
                                      if (context.mounted) {
                                        showFeedback(context);
                                      }
                                    } else {
                                      // For all other roles
                                      //Triage API Call
                                      await saveTriage();
                                    }
                                  }
                                },
                                child:
                                    SvgPicture.asset("assets/icons/camera.svg"),
                              ),
                              const Spacer(),
                              Tooltip(
                                message: context.loc!.eyeAssessmentToolTip,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: AppSize.kmpadding,
                                  ),
                                  child: Icon(
                                    Icons.info_outline,
                                    color: AppColor.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // _flashToggle(),
                  ],
                ),
              ),
            ),
          ),
        ),
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

  String _eyeLocalization(TriageEyeType eye, BuildContext context) {
    return switch (eye) {
      TriageEyeType.LEFT => context.loc!.leftEyeString,
      TriageEyeType.RIGHT => context.loc!.rightEyeString,
      TriageEyeType.BOTH => context.loc!.bothEyeString,
      _ => "",
    };
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

  Future<XFile?> _capturePicture(BuildContext context) async {
    if (!_controller.value.isInitialized) {
      return null;
    }
    setLoading();
    final image = await _controller.takePicture();
    removeLoading();
    return image;
  }

  Future<XFile?> _takePicture(BuildContext context) async {
    try {
      final image = await _capturePicture(context);
      if (image == null) {
        return null;
      }

      final isVerfied = await _validateImage(image);
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

  Future<void> _toggleFlash() async {
    if (!_controller.value.isInitialized) {
      return;
    }
    setLoading();
    if (_controller.value.flashMode == FlashMode.off) {
      await _controller.setFlashMode(FlashMode.torch);
    } else {
      await _controller.setFlashMode(FlashMode.off);
    }
    removeLoading();
  }

  _showTestCompletionDialog(BuildContext context, TriagePostModel result) {
    showModalBottomSheet(
      isDismissible: false,
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
            dispose();
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
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return const CameraServerExceptionDialog();
      },
    );
  }

  Future<void> saveTriage() async {
    await ref.read(triageEyeScanProvider).saveTriageEyeScanResponseToDB();
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
}
