import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_icon.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/distance_visual_acuity_tumbling_test_right_eye_instruction.dart';

class DistanceVisualAcuityInstructionalVideoPage extends ConsumerWidget {
  static const String routeName = "/tumbling-test-instructional-video";

  const DistanceVisualAcuityInstructionalVideoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = AppSize.height(context);
    final imageHeight = screenHeight * (264 / 892);
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final loc = context.loc!;
    return PopScope(
      canPop: false,
      onPopInvoked: (value) async {
        if (value == true) {
          return;
        }
        if (ref.read(globalProvider).isTriageMode()) {
          showDialog(
            context: context,
            builder: (context) => TriageExitAlertBox(
              content: loc.visualAcuityExitDialog,
            ),
          );
        } else {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        key: scaffoldKey,
        drawer: const TriageStepsDrawer(),
        appBar: !ref.watch(globalProvider).isTriageMode()
            ? CustomAppbar(
                leadingIcon: IconButton(
                  splashRadius: 20,
                  onPressed: () {
                    if (ref.read(globalProvider).isTriageMode()) {
                      showDialog(
                        context: context,
                        builder: (context) => TriageExitAlertBox(
                          content: loc.visualAcuityExitDialog,
                        ),
                      );
                    } else {
                      Navigator.of(context).pop();
                    }
                  },
                  icon: const Icon(CupertinoIcons.back),
                ),
                titleSpacing: 0,
                centerTitle: false,
                title: Text(
                  loc.distanceVaTopAppBarDistanceVisionTest,
                ),
              )
            : CustomAppbar(
                leadingWidth: 60,
                titleSpacing: 0.0,
                centerTitle: false,
                leadingIcon: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    child: Image.asset(
                      AppIcon.hamburgerIcon,
                    ),
                  ),
                ),
                title: Text(
                  loc.distanceVaTopAppBarDistanceVisionTest,
                  style: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
        body: 
        
        Padding(
          padding: Responsive.isMobile(context)
              ? const EdgeInsets.all(AppSize.kl)
              : const EdgeInsets.all(AppSize.kl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "What you would be doing",
                softWrap: true,
                style: applyFiraSansFont(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: AppSize.km),

              //roboto 14 font - This part of the test requires an assistant as it must be taken from a 2-meter distance. Call a friend, family member, or neighbor to help you with this test.

              Text(
                "• This part of the test requires an assistant as it must be taken from a 2-meter distance. Call a friend, family member, or neighbor to help you with this test.",
                softWrap: true,
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: AppSize.ks),
              // robot 14 - • Sit comfortably in a well-lit room.

              Text(
                "• Sit comfortably in a well-lit room.",
                softWrap: true,
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
              ),

              const SizedBox(height: AppSize.ks),
              //roboto 14 - • Your assistant needs to stand 2 meters/ 6 feet away from you, holding the device up at your eye level, with the device screen facing you.

              Text(
                "• Your assistant needs to stand 2 meters/ 6 feet away from you, holding the device up at your eye level, with the device screen facing you.",
                softWrap: true,
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
              ),

              SvgPicture.asset(
                "assets/images/distance_va_instruction.svg",
                height: imageHeight,
              ),

              // roboto 14 - • The E symbol will be shown on the screen; you need to recognize its direction just like you did previously and then say left, right, up, or down.

              Text(
                "• The E symbol will be shown on the screen; you need to recognize its direction just like you did previously and then say left, right, up, or down.",
                softWrap: true,
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: AppSize.ks),

              // roboto 14 - • The assistant will record your response.

              Text(
                "• The assistant will record your response.",
                softWrap: true,
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
              ),

              const SizedBox(height: AppSize.ks),

              // roboto 14 - • Once you are both ready, your assistant can click Start.

              Text(
                "• Once you are both ready, your assistant can click Start.",
                softWrap: true,
                style:
                    applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const Spacer(),

              // blue elevated button with white text
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) =>
                            const DistanceVisualAcuityTumblingRightEyeInstruction()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                ),
                child: Text(
                  "Proceed to test",
                  style: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),

              // Expanded(child: DistanceVisualAcuityInstructionPage(
              //   onPressed: () {
              //     Navigator.of(context).push(
              //       MaterialPageRoute(
              //           builder: (context) =>
              //               const DistanceVisualAcuityTumblingRightEyeInstruction()),
              //     );

              //     // Navigator.of(context).push(
              //     //   MaterialPageRoute(
              //     //     builder: (context) => VisualAcuityFaceDistancePage(
              //     //         minDistance: 35,
              //     //         maxDistance: 45,
              //     //         title: "Distance to Face - Long Distance",
              //     //         onProceed: () {
              //     //           Navigator.of(context).pushReplacement(
              //     //             MaterialPageRoute(
              //     //               builder: (context) =>
              //     //                   const DistanceVisualAcuityDistanceSelectionPage(),
              //     //             ),
              //     //           );
              //     //         }),
              //     //   ),
              //     // );
              //   },
              // ))
            ],
          ),
        ),
     
      ),
    );
  }
}
