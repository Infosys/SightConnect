import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_questionnaire/presentation/pages/patient_triage_questionnaire_page.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/pages/triage_add_member_page.dart';
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
      appBar: AppBar(
        title: const Text('Select Member'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const TriageAddMemberPage(),
              fullscreenDialog: true,
            ),
          );
        },
        backgroundColor: AppColor.yellow,
        foregroundColor: AppColor.black,
        label: const Text('Add Member'),
        icon: const Icon(Icons.add),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(context) * AppSize.knavbarwidth,
          vertical: AppSize.height(context) * 0.05,
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PatientTriageQuestionnairePage(),
                fullscreenDialog: true,
              ),
            );
          },
          child: const Text('Next'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
        child: ListView.separated(
          itemCount: people.length,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
          itemBuilder: (context, index) {
            final person = people[index];
            return RadioListTile(
              tileColor: AppColor.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  AppSize.kmradius,
                ),
              ),
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
            );
          },
        ),
      ),
    );
  }
}
