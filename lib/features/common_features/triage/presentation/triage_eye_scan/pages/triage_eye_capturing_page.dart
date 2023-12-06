import 'dart:async';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_preview_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_result/pages/triage_result_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
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

class TriageEyeCapturingPage extends ConsumerStatefulWidget {
  const TriageEyeCapturingPage({
    required this.cameras,
    super.key,
  });
  final List<CameraDescription> cameras;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientTriageEyeCapturingPageState();
}

class _PatientTriageEyeCapturingPageState
    extends ConsumerState<TriageEyeCapturingPage> with WidgetsBindingObserver {
  late CameraController _controller;
  ResolutionPreset defaultResolution = ResolutionPreset.max;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera(CameraLensDirection.front);
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
    var model = ref.watch(triageEyeScanProvider);
    var current = model.currentEye;
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
                    onCapture: () => _takePicture(model, context),
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

  Future<void> _takePicture(
      TriageEyeScanProvider model, BuildContext context) async {
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
      if (model.currentEye == TriageEyeType.RIGHT && mounted) {
        XFile? verifiedImage = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => TriageEyePreviewPage(imageFile: image),
          ),
        );
        if (verifiedImage != null) {
          model.setRightEyeImage(verifiedImage);
          model.setCurrentEye(TriageEyeType.LEFT);
        } else {
          return;
        }
      } else if (model.currentEye == TriageEyeType.LEFT && mounted) {
        XFile? verifiedImage = await Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => TriageEyePreviewPage(imageFile: image),
          ),
        );
        if (verifiedImage != null && mounted) {
          model.setLeftEyeImage(verifiedImage);
          ref.read(triageStepperProvider).goToNextStep();
          ref.read(triageEyeScanProvider).saveTriageEyeScanResponseToDB();
          model.setCurrentEye(TriageEyeType.RIGHT);

          ref.read(saveTriageProvider).maybeWhen(
                data: (data) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const TriageResultPage()),
                    ),
                  );
                },
                orElse: () {},
              );

          // Navigator.of(context).popUntil((route) => route.isFirst);
          // showReportPopUp(context);
          // if (await ref.read(connectivityProvider).isConnected() || false) {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (context) =>
          //           // const TriageResultPage()
          //           const OptometritianReportPage(
          //         id: 'PID 12345687',
          //         education: 'No Education',
          //         employment: 'Unemployed/ Home duties',
          //       ),
          //     ),
          //   );
          // } else {
          //   Navigator.of(context).push(
          //     MaterialPageRoute(
          //       builder: (context) => const OptometritianReportPageOffline(),
          //     ),
          //   );
          // }
        } else {
          return;
        }
      }
    } on CameraException {
      logger.d("Something went wrong : CameraException");
      Fluttertoast.showToast(msg: "Something went wrong");
    } catch (e) {
      logger.d(e.toString());
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
