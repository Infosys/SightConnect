/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import 'custom_app_bar.dart';

class AppCameraPreviewWidget extends HookWidget {
  final VoidCallback onCameraSwitch;
  final VoidCallback onFlashToggle;
  final VoidCallback onCapture;
  final bool isLoading;
  final String progressMessage;
  final String topHeadingTitle;
  final CameraController controller;
  final CustomPaint? customPaint;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final bool isEyeValid;
  final bool isDrawerEnabled;

  const AppCameraPreviewWidget({
    super.key,
    required this.onCameraSwitch,
    required this.onFlashToggle,
    required this.onCapture,
    required this.isLoading,
    required this.progressMessage,
    required this.topHeadingTitle,
    required this.controller,
    required this.customPaint,
    required this.scaffoldKey,
    required this.isEyeValid,
    required this.isDrawerEnabled,
  });

  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    var showFocusCircle = useState<bool>(false);
    var x = useState<double>(0);
    var y = useState<double>(0);

    Future<void> onTap(TapUpDetails details) async {
      if (controller.value.isInitialized) {
        showFocusCircle.value = true;
        x.value = details.localPosition.dx;
        y.value = details.localPosition.dy;

        double fullWidth = MediaQuery.of(context).size.width;
        double cameraHeight = fullWidth * controller.value.aspectRatio;

        double xp = x.value / fullWidth;
        double yp = y.value / cameraHeight;

        Offset point = Offset(xp, yp);
        logger.d("point : $point");

        // Manually focus
        await controller.setFocusPoint(point);

        Future.delayed(const Duration(seconds: 2)).whenComplete(() {
          showFocusCircle.value = false;
        });
      }
    }

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
          backgroundColor: AppColor.black,
          drawer: isDrawerEnabled ? const TriageStepsDrawer() : null,
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
            leadingIcon: !isDrawerEnabled
                ? const SizedBox()
                : InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
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
                  padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
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
              child: GestureDetector(
                onTapUp: (details) {
                  onTap(details);
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Platform.isAndroid
                        ? Center(
                            child: CameraPreview(
                              controller,
                              child: customPaint,
                            ),
                          )
                        : Center(
                            child: CameraPreview(
                              controller,
                            ),
                          ),
                    Positioned(
                      top: AppSize.height(context) * 0.05,
                      left: AppSize.width(context) * 0.1,
                      right: AppSize.width(context) * 0.1,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          topHeadingTitle,
                          style: applyRobotoFont(
                            fontSize: 16,
                            color: AppColor.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    if (showFocusCircle.value == true)
                      Positioned(
                        top: y.value - 20,
                        left: x.value - 20,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1.5),
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
                          if (PersistentAuthStateService.authState.activeRole !=
                              "ROLE_OPTOMETRIST")
                            Visibility(
                              visible: !isEyeValid,
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
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: AppSize.height(context) * 0.05,
                              horizontal: AppSize.width(context) * 0.1,
                            ),
                            // color: AppColor.black.withOpacity(0.5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    onTap: () {
                                      onCameraSwitch();
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: AppSize.km,
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
                                    customBorder: const CircleBorder(),
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
                                      horizontal: AppSize.km,
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
      ),
    );
  }
}
