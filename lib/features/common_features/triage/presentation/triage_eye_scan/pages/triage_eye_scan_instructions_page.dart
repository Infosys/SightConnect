import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/triage_eye_scan_carousel_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../triage_member_selection/widget/triage_steps_drawer.dart';

class TriageEyeScanInstructions extends ConsumerWidget {
  const TriageEyeScanInstructions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Image.asset(
                AppIcon.hamburgerIcon,
              ),
            ),
          ),
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(width: AppSize.kmwidth),
              Text(
                AppLocalizations.of(context)!.stepNumber('3', '3'),
                style: applyRobotoFont(
                  color: AppColor.primary,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: AppSize.kswidth),
              Text(
                AppLocalizations.of(context)!.eyeScanTitle,
                style: applyFiraSansFont(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(AppSize.kspadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppLocalizations.of(context)!.eyeScanDescription,
                softWrap: true,
                style: applyRobotoFont(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: AppSize.ksheight),
              Text(
                AppLocalizations.of(context)!.eyeScanHowToPerform,
                style:
                    applyRobotoFont(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: AppSize.ksheight),
              // Container(
              //   height: 200,
              //   width: AppSize.width(context) * 0.9,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(AppSize.klradius),
              //     color: AppColor.black,
              //     boxShadow: applyLightShadow(),
              //   ),
              //   child: Center(
              //     child: SvgPicture.asset(
              //       AppImages.tumblingTestPlay,
              //       height: 40,
              //       width: 40,
              //     ),
              //   ),
              // ),
              // const SizedBox(height: AppSize.kmheight),
              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 12.0),
              //   child: Divider(),
              // ),
              // const SizedBox(height: AppSize.klheight),
              const Expanded(
                child: TriageEyeScanCarouselPage(),
              ),
              // InkWell(
              //   onTap: () {
              //     Navigator.of(context).push(
              //       MaterialPageRoute(
              //         builder: (context) => const TriageEyeScanCarouselPage(),
              //       ),
              //     );
              //   },
              //   child: Container(
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              //     decoration: BoxDecoration(
              //       color: AppColor.white,
              //       boxShadow: [
              //         BoxShadow(
              //           color: AppColor.primary.withOpacity(0.1),
              //           blurRadius: 10,
              //         ),
              //       ],
              //     ),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         const Icon(Icons.vibration, color: AppColor.blue),
              //         const SizedBox(width: AppSize.kswidth),
              //         Text(
              //           AppLocalizations.of(context)!.eyeScanViewStepsToPerform,
              //           style: applyRobotoFont(
              //             fontSize: 14,
              //             color: AppColor.blue,
              //             fontWeight: FontWeight.w500,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        // bottomNavigationBar: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(AppSize.kmpadding),
        //       child: ElevatedButton(
        //         onPressed: () async {
        //           try {
        //             var navigator = Navigator.of(context);
        //             var cameras = await availableCameras();
        //             if (cameras.isEmpty) {
        //               Fluttertoast.showToast(
        //                   msg: "camera found ${cameras.length}");
        //               return;
        //             }
        //             navigator.push(
        //               MaterialPageRoute(
        //                 builder: (context) => TriageEyeCapturingPage(
        //                   cameras: cameras,
        //                 ),
        //               ),
        //             );
        //           } catch (e) {
        //             Fluttertoast.showToast(msg: e.toString());
        //           }
        //         },
        //         child: Text(
        //           AppLocalizations.of(context)!.startButton,
        //           style: const TextStyle(
        //             fontSize: 16,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
