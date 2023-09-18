import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_steps/presentation/pages/triage_add_member_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_triage_steps/presentation/pages/triage_eye_assessment_page.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
      backgroundColor: AppColor.kScaffold,
      appBar: AppBar(
        title: const Text('Select Member'),
      ),
      floatingActionButton: Theme(
        data: Theme.of(context).copyWith(
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: AppColor.kYellow,
            extendedSizeConstraints: BoxConstraints.tightFor(
              height: 56,
              width: 152,
            ),
          ),
        ),
        child: FloatingActionButton.extended(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          clipBehavior: Clip.none,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TriageAddMemberPage(),
                fullscreenDialog: true,
              ),
            );
          },
          label: Row(
            children: [
              Text(
                "+",
                style: applyRobotoFont(
                    fontSize: 40,
                    color: AppColor.kBlack,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Add Member",
                style: applyRobotoFont(
                    fontSize: 14,
                    color: AppColor.kBlack,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
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
                builder: (context) => const TriageEyeAssessmentPage(),
              ),
            );
          },
          child: const Text('Next'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: people.length,
          itemBuilder: (context, index) {
            final person = people[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: appShadow(),
                  color: AppColor.kWhite,
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
                              color: AppColor.kGrey,
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
    );
  }
}
