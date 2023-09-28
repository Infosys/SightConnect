import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/pages/patient_triage_questionnaire_page.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/pages/triage_add_member_page.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class TriageMemberSelectionPage extends HookWidget {
  const TriageMemberSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedValue = useState<int>(-1);
    List<Map<String, dynamic>> people = [
      {
        'name': 'Raghavi Pandey',
        'image': 'assets/images/connection_dp_one.png',
        'about': 'Me,22 years'
      },
      {
        'name': 'Chunkey Pandey',
        'image': 'assets/images/connection_dp_two.png',
        'about': 'Father,65 years'
      },
      {
        'name': 'Mangal Pandey',
        'image': 'assets/images/connections_dp_three.png',
        'about': 'Brother,28 years'
      },
      {
        'name': 'Rati Pandey',
        'image': 'assets/images/profile_image.png',
        'about': 'Sister,18 years'
      },
    ];
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: AppBar(
        title: const Text('Eye Assessment'),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(context) * AppSize.knavbarwidth,
          vertical: AppSize.height(context) * 0.05,
        ),
        child: ElevatedButton(
          style: const ButtonStyle(
            visualDensity: VisualDensity.comfortable,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PatientTriageQuestionnairePage(),
                fullscreenDialog: true,
              ),
            );
          },
          child: const Text('Proceed'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
            SizedBox(height: AppSize.height(context) * 0.01),
            Flexible(
              child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  final person = people[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSize.ksheight - 2,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: appShadow(),
                        color: AppColor.white,
                      ),
                      child: RadioListTile<int>(
                        contentPadding: EdgeInsets.zero,
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              person['image'],
                              height: 40,
                              width: 40,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  person['name'],
                                  style: applyRobotoFont(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  person['about'],
                                  style: applyRobotoFont(
                                    fontSize: 12,
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        value: index,
                        groupValue: selectedValue.value,
                        onChanged: (value) {
                          selectedValue.value = value!;
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}