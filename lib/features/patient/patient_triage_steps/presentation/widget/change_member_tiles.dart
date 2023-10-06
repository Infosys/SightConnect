import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/presentation/providers/patient_triage_member_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangeMemberTiles extends HookConsumerWidget {
  const ChangeMemberTiles({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var memberProvider = ref.watch(traiageMemberProvider);
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
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
                memberProvider.setPeople(people[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
