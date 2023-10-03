import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/pages/patient_triage_questionnaire_page.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/pages/triage_add_member_page.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/widget/change_member_tiles.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class TriageMemberSelectionPage extends HookWidget {
  const TriageMemberSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eye Assessment'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/images/eye_assessment.svg',
              height: AppSize.height(context) * 0.19,
              width: AppSize.width(context),
              fit: BoxFit.fill,
            ),
            SizedBox(height: AppSize.height(context) * 0.02),
            const Text(
              'Get the eye problems of you, your friends, and, family members assessed in few steps. You will be asked a set of questions to understand symptoms related to your eye problems followed by visual tests.',
              softWrap: true,
            ),
            SizedBox(height: AppSize.height(context) * 0.02),
            const Divider(
              thickness: 2,
            ),
            SizedBox(height: AppSize.height(context) * 0.02),
            Row(
              children: [
                Text(
                  'Change Member',
                  style: applyFiraSansFont(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const TriageAddMemberPage(),
                        ),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '+ ',
                              style: applyRobotoFont(
                                  fontSize: 21,
                                  color: AppColor.primary,
                                  fontWeight: FontWeight.w300)),
                          TextSpan(
                            text: 'Add Member',
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColor.primary,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(height: AppSize.height(context) * 0.02),
            const ChangeMemberTiles(),
            SizedBox(height: AppSize.height(context) * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(context) * AppSize.knavbarwidth,
                vertical: AppSize.height(context) * 0.01,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const PatientTriageQuestionnairePage(),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                      child: const Text('Proceed'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
