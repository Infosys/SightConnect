import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_capturing_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_scan_carousel_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/simple_alert_dialog.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/text_scale_pop_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../triage_member_selection/widget/triage_steps_drawer.dart';

class TriageEyeScanInstructions extends ConsumerWidget {
  const TriageEyeScanInstructions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    final loc = context.loc!;
    return PopScope(
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
      child: TraceableWidget(
        actionName: 'TriageEyeScan Instructions Page',
        child: Scaffold(
          key: scaffoldKey,
          drawer: const TriageStepsDrawer(),
          appBar: CustomAppbar(
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
                ),
              ),
            ),
            title: Text(
              loc.eyeScanTitle,
              style: applyFiraSansFont(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  TextScalePopupMenu.show(context, ref);
                },
                icon: SvgPicture.asset(
                  "assets/drawer_icons/accessibility.svg",
                  height: 22,
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(AppSize.kspadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  loc.eyeScanDescription,
                  softWrap: true,
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: AppSize.ksheight),
                Text(
                  loc.eyeScanHowToPerform,
                  style: applyRobotoFont(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: AppSize.kmheight),
                Expanded(
                  child: TriageEyeScanCarouselPage(
                    onPressed: () async {
                      await onPressed(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onPressed(BuildContext context) async {
    PermissionStatus cameraStatus = await Permission.camera.status;
    PermissionStatus audioStatus = await Permission.microphone.status;

    if (cameraStatus.isDenied || audioStatus.isDenied) {
      if (context.mounted) _onPermissionDenied(context);
    } else if (cameraStatus.isPermanentlyDenied ||
        audioStatus.isPermanentlyDenied) {
      if (context.mounted) _onPermissionPermanentlyDenied(context);
    } else if (cameraStatus.isGranted && audioStatus.isGranted) {
      var cameras = await availableCameras();
      if (cameras.isNotEmpty && context.mounted) {
        Navigator.of(context).push(
          MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) => TriageEyeCapturingPage(cameras: cameras),
          ),
        );
      } else {
        Fluttertoast.showToast(msg: "No camera available");
      }
    }
  }

  void _onPermissionDenied(BuildContext context) async {
    showMissingPermissionDialog(
      context: context,
      onPositiveButtonClick: () async {
        await Permission.camera.request();
        await Permission.microphone.request();
      },
    );
  }

  void _onPermissionPermanentlyDenied(BuildContext context) {
    showMissingPermissionDialog(
      context: context,
      positiveButtonLabel: "App Settings",
      onPositiveButtonClick: () async {
        await openAppSettings();
      },
    );
  }

  void showMissingPermissionDialog({
    required BuildContext context,
    required VoidCallback onPositiveButtonClick,
    String positiveButtonLabel = "Allow",
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleAlertDialog(
          title: "Missing Permissions",
          description:
              "Please allow camera and microphone permissions for Eye Scan.",
          negativeButtonLabel: "Deny",
          positiveButtonLabel: positiveButtonLabel,
          onPositiveButtonClick: () {
            Navigator.of(context).pop();
            onPositiveButtonClick();
          },
          onNegativeButtonClick: () {
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}
