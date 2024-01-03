import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/providers/vg_eye_assessment_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_floating_action_add_patient.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_patient_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_search_bar_chips.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_search_patient.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_icon.dart';
import '../../../../../core/constants/app_size.dart';

class VisionGuardianEyeAssessmentPage extends StatelessWidget {
  const VisionGuardianEyeAssessmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: const Text('Eye Assessment'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const VisionGuardianEyeAssessmentSearchPatient(),
                ),
              );
            },
            icon: const Icon(
              Icons.search,
              color: AppColor.grey,
            ),
          ),
          /*        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcon.filterIcon),
          ), */
        ],
        leadingIcon: InkWell(
          onTap: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
          child: const Icon(
            Icons.chevron_left,
            size: 35,
          ),
        ),
      ),
      floatingActionButton: const VisionGuardianFloatingAddPatientAction(),
      body: Consumer(
        builder: (context, ref, child) {
          var casesCritical =
              ref.watch(visionGuardianEyeAssessmentProvider).searchResults;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: casesCritical.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const VisionGuardianEyeAssessmentSearchBarChips(),
                      const SizedBox(height: AppSize.klheight),
                      VisionGuardianEyeAssessmentPatientsCard(
                        model: casesCritical,
                      ),
                      const Spacer(),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const VisionGuardianEyeAssessmentSearchBarChips(),
                      SizedBox(
                        height: AppSize.height(context) * 0.2,
                      ),
                      Center(
                        child: Image(
                          width: AppSize.width(context) * 0.55,
                          image: const AssetImage(
                            "assets/images/search empty.png",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.kmheight,
                      ),
                      Center(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: AppSize.width(context) * 0.7,
                          ),
                          child: Text(
                              'There are no patients at present. Tap on "Add Patient"',
                              textAlign: TextAlign.center,
                              softWrap: true,
                              style: applyRobotoFont(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: AppColor.grey,
                              )),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
          );
        },
      ),
    );
  }
}
