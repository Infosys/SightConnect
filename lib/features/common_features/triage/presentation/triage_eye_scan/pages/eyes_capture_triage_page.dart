import 'dart:async';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/eye_preview_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/pages/optometritian_report_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/triage_eye_scan_provider.dart';
import '../widgets/camera_controllers.dart';

enum TriageEye { RIGHT_EYE, LEFT_EYE }

var currentEyeProvider = StateProvider<TriageEye>((ref) => TriageEye.RIGHT_EYE);

class EyeCaptureTriagePage extends ConsumerStatefulWidget {
  static const String routeName = "/patientEyeCapturePage";
  const EyeCaptureTriagePage({
    required this.cameras,
    super.key,
  });
  final List<CameraDescription> cameras;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientEyeCaptureTriagePageState();
}

class _PatientEyeCaptureTriagePageState
    extends ConsumerState<EyeCaptureTriagePage> with WidgetsBindingObserver {
  late CameraController _controller;
  ResolutionPreset defaultResolution = ResolutionPreset.max;
  bool isLoading = false;

  @override
  void initState() {
    _initializeCamera(CameraLensDirection.front);
    super.initState();
  }

  _initializeCamera(CameraLensDirection lensDirection) async {
    _controller = CameraController(
      widget.cameras.firstWhere(
        (element) => element.lensDirection == lensDirection,
      ),
      defaultResolution,
    );

    await _controller.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((e) {
      logger.d(e);
      Fluttertoast.showToast(msg: e);
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController cameraController = _controller;
    if (!cameraController.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      _initializeCamera(cameraController.description.lensDirection);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    var current = ref.watch(currentEyeProvider);
    logger.d("Current Eye: $current");

    if (!_controller.value.isInitialized) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return WillPopScope(
        onWillPop: () async {
          var result = await showDialog(
            context: context,
            builder: (context) => TriageExitAlertBox(
              content: AppLocalizations.of(context)!.eyeScanExitDialog,
            ),
          );
          return result ?? false;
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: AppColor.black,
          drawer: const TriageStepsDrawer(),
          appBar: CustomAppbar(
            iconTheme: const IconThemeData(
              color: AppColor.white,
            ),
            actionsIconTheme: const IconThemeData(
              color: AppColor.white,
            ),
            backgroundColor: AppColor.black,
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
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: AppSize.kmwidth),
                Text(
                  AppLocalizations.of(context)!.stepNumber("3", "3"),
                  style: applyRobotoFont(
                    color: AppColor.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: AppSize.kmwidth),
                Flexible(
                  child: Text(
                    AppLocalizations.of(context)!.eyeScanTitle,
                    style: applyRobotoFont(
                      color: AppColor.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              InkWell(
                onTap: () {
                  _toggleFlash();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                  child: SvgPicture.asset(
                    AppIcon.flash_on,
                    color: AppColor.white,
                  ),
                ),
              ),
            ],
          ),
          body: LoadingOverlay(
            isLoading: isLoading,
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 1 / _controller.value.aspectRatio,
                  child: CameraPreview(_controller),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: EyeScanCameraControllers(
                    onCapture: () => _takePicture(current, context),
                    onFlash: () => _toggleFlash(),
                    onSwitchCamera: () => _toggleCamera(),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  // Future<void> _takePicture(TriageEye currentEye, BuildContext context) async {
  //   try {
  //     if (!_controller.value.isInitialized) {
  //       return;
  //     }
  //     _initializeControllerFuture;
  //     final image = await _controller.takePicture();
  //     if (currentEye == TriageEye.RIGHT_EYE) {
  //       ref.read(triageEyeScanProvider).setRightEyeImage(image);
  //       ref.read(currentEyeProvider.notifier).state = TriageEye.LEFT_EYE;
  //       if (mounted) {
  //         showDialog(
  //             barrierDismissible: false,
  //             context: context,
  //             builder: (context) {
  //               return TriageEyeScanDialog.showSuccessDialog(
  //                   context, TriageEye.RIGHT_EYE);
  //             });
  //       }
  //     } else {
  //       ref.read(triageEyeScanProvider).setLeftEyeImage(image);
  //       if (mounted) {
  //         showDialog(
  //           barrierDismissible: false,
  //           context: context,
  //           builder: (context) {
  //             return TriageEyeScanDialog.showSuccessDialog(
  //                 context, TriageEye.LEFT_EYE);
  //           },
  //         );
  //       }
  //     }
  //   } on CameraException {
  //     logger.d("Something went wrong");
  //     Fluttertoast.showToast(msg: "Something went wrong");
  //   } catch (e) {
  //     logger.d(e);
  //     Fluttertoast.showToast(msg: "Camera not found");
  //   }
  // }

  Future<void> _takePicture(TriageEye currentEye, BuildContext context) async {
    try {
      if (!_controller.value.isInitialized) {
        return;
      }

      setState(() {
        isLoading = true;
      });

      final image = await _controller.takePicture();
      setState(() {
        isLoading = false;
      });
      if (currentEye == TriageEye.RIGHT_EYE && mounted) {
        XFile? verifiedImage = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EyePreviewPage(imageFile: image),
          ),
        );
        if (verifiedImage != null) {
          ref.read(triageEyeScanProvider).setRightEyeImage(verifiedImage);
          ref.read(currentEyeProvider.notifier).state = TriageEye.LEFT_EYE;
        } else {
          return;
        }
      } else if (currentEye == TriageEye.LEFT_EYE && mounted) {
        XFile? verifiedImage = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EyePreviewPage(imageFile: image),
          ),
        );
        if (verifiedImage != null && mounted) {
          ref.read(triageEyeScanProvider).setLeftEyeImage(verifiedImage);
          ref.read(triageStepperProvider).nextStep(3);
          ref.read(currentEyeProvider.notifier).state = TriageEye.RIGHT_EYE;
          ref.read(triageProvider).saveTriage();
          // Navigator.of(context).popUntil((route) => route.isFirst);
          // showReportPopUp(context);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const OptometritianReportPage(
                id: 'PID 12345687',
                education: 'No Education',
                employment: 'Unemployed/ Home duties',
              ),
            ),
          );
        } else {
          return;
        }
      }
    } on CameraException {
      logger.d("Something went wrong");
      Fluttertoast.showToast(msg: "Something went wrong");
    } catch (e) {
      logger.d(e);
      Fluttertoast.showToast(msg: "Camera not found");
    }
  }

  Future<void> _toggleCamera() async {
    if (!_controller.value.isInitialized) {
      return;
    }

    if (_controller.description.lensDirection == CameraLensDirection.front) {
      _initializeCamera(CameraLensDirection.back);
    } else {
      _initializeCamera(CameraLensDirection.front);
    }
    setState(() {});
  }

  Future<void> _toggleFlash() async {
    if (!_controller.value.isInitialized) {
      return;
    }

    if (_controller.value.flashMode == FlashMode.off) {
      await _controller.setFlashMode(FlashMode.torch);
    } else {
      await _controller.setFlashMode(FlashMode.off);
    }

    setState(() {});
  }
}
