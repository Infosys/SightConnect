import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_member_selection/pages/triage_add_member_page.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../patient_triage_questionnaire/pages/patient_triage_questionnaire_page.dart';
import '../widget/change_member_tiles.dart';

class TriageMemberSelectionPage extends HookWidget {
  const TriageMemberSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: Text('Eye Assessment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/images/eye_assessment.svg',
              width: AppSize.width(context) * 0.4,
              height: AppSize.height(context) * 0.19,
              fit: BoxFit.fill,
            ),
            SizedBox(height: AppSize.height(context) * 0.02),
            Text(
              'Get the eye problems of you, your friends, and, family members assessed in few steps. You will be asked a set of questions to understand symptoms related to your eye problems followed by visual tests.',
              style: applyRobotoFont(fontSize: 14),
              softWrap: true,
            ),
            const SizedBox(height: AppSize.ksheight),
            const Divider(thickness: 2),
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
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.ksheight),
            const ChangeMemberTiles(),
            const SizedBox(height: AppSize.ksheight),
            SizedBox(
              width: AppSize.width(context) * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const PatientTriageQuestionnairePage(),
                    ),
                  );
                },
                child: const Text('Proceed'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
