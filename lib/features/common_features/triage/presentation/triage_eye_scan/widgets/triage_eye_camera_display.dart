import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import '../../../../../../shared/widgets/custom_app_bar.dart';

class TriageEyeCameraDisplay extends StatelessWidget {
  final VoidCallback onCameraSwitch;
  final VoidCallback onFlashToggle;
  final VoidCallback onCapture;
  final bool isLoading;
  final String progressMessage;
  final TriageEyeType currentEye;
  final CameraController controller;
  final CustomPaint? customPaint;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool isEyeValid;

  const TriageEyeCameraDisplay({
    super.key,
    required this.onCameraSwitch,
    required this.onFlashToggle,
    required this.onCapture,
    required this.isLoading,
    required this.progressMessage,
    required this.currentEye,
    required this.controller,
    required this.customPaint,
    required this.scaffoldKey,
    required this.isEyeValid,
  });

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;

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
                onTap: () {
                  onFlashToggle();
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
                  child: Icon(
                    controller.value.flashMode == FlashMode.off
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
            progressMessage: progressMessage,
            child: Container(
              color: AppColor.black,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: <Widget>[
                  !Platform.isIOS
                      ? Positioned.fill(
                          child: CameraPreview(
                            controller,
                            child: customPaint,
                          ),
                        )
                      : Positioned.fill(
                          child: CameraPreview(
                            controller,
                          ),
                        ),
                  Positioned(
                    top: 100,
                    left: null,
                    right: null,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        _eyeLocalization(currentEye, context),
                        style: applyRobotoFont(
                          fontSize: 16,
                          color: AppColor.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Visibility(
                          visible: !isEyeValid,
                          child: Positioned(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
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
                        ),
                        Container(
                          padding: const EdgeInsets.all(24),
                          // color: AppColor.black.withOpacity(0.5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    logger
                                        .f('Triage Eye Scan: Camera Switching');
                                    onCameraSwitch();
                                    logger
                                        .f('Triage Eye Scan: Camera Switched');
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
                              ),
                              const Spacer(),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    onCapture();
                                  },
                                  splashColor: Colors.blue,
                                  child: Container(
                                    width: 50, // Add this line
                                    height: 50, // Add this line
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: AppColor.white,
                                        width: 2,
                                      ),
                                    ),
                                    child: SvgPicture.asset(
                                      "assets/icons/camera.svg",
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Tooltip(
                                message: context.loc!.eyeAssessmentToolTip,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: AppSize.kmpadding,
                                  ),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.info_outline,
                                      color: AppColor.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _eyeLocalization(TriageEyeType eye, BuildContext context) {
    return switch (eye) {
      TriageEyeType.LEFT => context.loc!.leftEyeString,
      TriageEyeType.RIGHT => context.loc!.rightEyeString,
      TriageEyeType.BOTH => context.loc!.bothEyeString,
      _ => "",
    };
  }
}
