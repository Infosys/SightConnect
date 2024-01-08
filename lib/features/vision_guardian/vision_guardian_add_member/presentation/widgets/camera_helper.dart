import 'dart:async';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_member/presentation/widgets/vg_camera_controller.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CameraHelper extends ConsumerStatefulWidget {
  static const String routeName = "/VisionGuardianEyeCapturePage";
  const CameraHelper({
    required this.cameras,
    required this.provider,
    super.key,
  });
  final provider;
  final List<CameraDescription> cameras;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VisionGuardianCameraHelperState();
}

class _VisionGuardianCameraHelperState extends ConsumerState<CameraHelper>
    with WidgetsBindingObserver {
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
    if (!_controller.value.isInitialized) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return PopScope(
        onPopInvoked: (value) async {
          if (value) return;
          showDialog(
            context: context,
            builder: (context) => TriageExitAlertBox(
              content: AppLocalizations.of(context)!.eyeScanExitDialog,
            ),
          );
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
            title: Text(
              "Take Picture",
              style: applyRobotoFont(
                color: AppColor.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
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
                    colorFilter: const ColorFilter.mode(
                      AppColor.white,
                      BlendMode.srcIn,
                    ),
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
                  child: VisionGuardianCameraControllers(
                    onCapture: () => _takePicture(context),
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

  Future<void> _takePicture(BuildContext context) async {
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
      if (mounted) {
        ////TODO: this page has been renamed
        // XFile? verifiedImage = await Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => EyePreviewPage(imageFile: image),
        //   ),
        // );

        // if (verifiedImage != null) {
        //   ref.read(widget.provider).image = verifiedImage;
        // } else {
        //   return;
        // }
      }

      // await ref.read(triageProvider).saveTriage();

      // Navigator.of(context).popUntil((route) => route.isFirst);
      // showReportPopUp(context);
      Navigator.pop(context);
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
