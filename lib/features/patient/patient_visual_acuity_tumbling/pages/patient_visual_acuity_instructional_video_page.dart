import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_member_selection/widget/patient_triage_steps_drawer.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/pages/patient_visual_acutiy_instruction_page.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/widgets/visual_acuity_tumbling_test_left_eye_instruction.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/widgets/traige_exit_alert_box.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class PatientVisualAcuityInstructionalVideoPage extends HookWidget {
  static const String routeName = "/tumbling-test-instructional-video";
  const PatientVisualAcuityInstructionalVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return WillPopScope(
        onWillPop: () async {
          var result = await showDialog(
            context: context,
            builder: (context) => const TriageExitAlertBox(
              content:
                  "Visual acuity is an important test to understand about your eye problem. Do you really wish to exit?",
            ),
          );
          return result ?? false;
        },
        child: Scaffold(
          key: scaffoldKey,
          drawer: const PatientTriageStepsDrawer(),
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
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(width: AppSize.kmwidth),
                Text(
                  "2 of 3",
                  style: applyRobotoFont(
                    color: AppColor.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: AppSize.kswidth),
                Text(
                  'Visual Acuity Test',
                  style: applyFiraSansFont(
                    color: AppColor.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.width(context) * 0.1,
              vertical: AppSize.height(context) * 0.02,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        const VisualAcuityTumblingLeftEyeInstruction(),
                  ),
                );
              },
              child: const Text("Start"),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: Responsive.isMobile(context)
                  ? const EdgeInsets.all(AppSize.kmpadding)
                  : const EdgeInsets.all(AppSize.kmpadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "A visual acuity test is an eye exam that checks how well you see the details of a letter or symbol from a specific distance. Do this quick test now!",
                    softWrap: true,
                    style: applyRobotoFont(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: AppSize.kmheight),
                  Text(
                    "How to perform the visual acuity test?",
                    style: applyRobotoFont(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: AppSize.kmheight),
                  Container(
                    height: 200,
                    width: AppSize.width(context) * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSize.klradius),
                      boxShadow: appShadow(),
                      color: AppColor.black,
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppImages.tumblingTestPlay,
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.kmheight),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Divider(),
                  ),
                  const SizedBox(height: AppSize.kmheight),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const PatientVisualAcuityInstructionPage(),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 8),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.primary.withOpacity(0.1),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.vibration, color: AppColor.blue),
                          const SizedBox(width: AppSize.kswidth),
                          Text(
                            "View Steps to perform Tumbling E Test",
                            style: applyRobotoFont(
                              fontSize: 14,
                              color: AppColor.blue,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
