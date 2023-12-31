import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/widget/triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/pages/visual_acutiy_instruction_page.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VisualAcuityInstructionalVideoPage extends ConsumerWidget {
  static const String routeName = "/tumbling-test-instructional-video";
  const VisualAcuityInstructionalVideoPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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
                content: AppLocalizations.of(context)!.visualAcuityExitDialog,
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
                            content: AppLocalizations.of(context)!
                                .visualAcuityExitDialog,
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
                    AppLocalizations.of(context)!.visualAcuityTitle,
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
                  title: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(width: AppSize.kmwidth),
                      Text(
                        AppLocalizations.of(context)!.stepNumber('2', '3'),
                        style: applyRobotoFont(
                          color: AppColor.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: AppSize.kswidth),
                      Text(
                        AppLocalizations.of(context)!.visualAcuityTitle,
                        style: applyFiraSansFont(
                          color: AppColor.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
          // bottomNavigationBar: Padding(
          //   padding: EdgeInsets.symmetric(
          //     horizontal: AppSize.width(context) * 0.1,
          //     vertical: AppSize.height(context) * 0.02,
          //   ),
          //   child: ElevatedButton(
          //     onPressed: () async {
          //       final status = await showDialog(
          //         barrierDismissible: false,
          //         context: context,
          //         builder: (context) {
          //           return VisualAcuityDialog.showEyeInstructionDialog(
          //               context, Eye.right);
          //         },
          //       );
          //       if (status == true) {
          //         return;
          //       }
          //       if (context.mounted) {
          //         Navigator.of(context).push(
          //           MaterialPageRoute(
          //             builder: (context) => VisualAcuityInitiatePage(),
          //           ),
          //         );
          //       }
          //     },
          //     child: Text(
          //       AppLocalizations.of(context)!.startButton,
          //     ),
          //   ),
          // ),
          body: Padding(
            padding: Responsive.isMobile(context)
                ? const EdgeInsets.all(AppSize.kmpadding)
                : const EdgeInsets.all(AppSize.kmpadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  AppLocalizations.of(context)!.visualAcuityDescription,
                  softWrap: true,
                  style: applyRobotoFont(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: AppSize.kmheight),
                const Expanded(child: VisualAcuityInstructionPage())
                // Text(
                //   AppLocalizations.of(context)!.visualAcuityHowToPerform,
                //   style: applyRobotoFont(
                //       fontSize: 18, fontWeight: FontWeight.w600),
                // ),
                // const SizedBox(height: AppSize.kmheight),
                // Container(
                //   height: 200,
                //   width: AppSize.width(context) * 0.9,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(AppSize.klradius),
                //     boxShadow: applyLightShadow(),
                //     color: AppColor.black,
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
                // const SizedBox(height: AppSize.kmheight),
                // InkWell(
                //   onTap: () {
                //     Navigator.of(context).push(
                //       MaterialPageRoute(
                //         builder: (context) =>
                //             const VisualAcuityInstructionPage(),
                //         fullscreenDialog: true,
                //       ),
                //     );
                //   },
                //   child: Container(
                //     padding: const EdgeInsets.symmetric(
                //       horizontal: 14,
                //       vertical: 8,
                //     ),
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
                //           AppLocalizations.of(context)!
                //               .visualAcuityViewStepsToPerform,
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
        ));
  }
}
