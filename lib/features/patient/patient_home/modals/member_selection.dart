import 'dart:convert';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MemberSelectionPopUp extends ConsumerStatefulWidget {
  const MemberSelectionPopUp({super.key});

  @override
  ConsumerState<MemberSelectionPopUp> createState() =>
      _MemberSelectionPopUpState();
}

class _MemberSelectionPopUpState extends ConsumerState<MemberSelectionPopUp> {
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

  @override
  void initState() {
    super.initState();
  }

  Future<void> loadProfiles() async {
    final String jsonString =
        await rootBundle.loadString('assets/profile.json');
    final data = jsonDecode(jsonString);
    debugPrint(data);
  }

  @override
  Widget build(BuildContext context) {
    return BlurDialogBox(
      actionsPadding: const EdgeInsets.all(8),
      insetPadding: const EdgeInsets.all(8),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Change Member'),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.close_outlined),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...people.asMap().entries.map(
                (person) => Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: AppSize.width(context) * 0.88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: appShadow(),
                    color: AppColor.white,
                  ),
                  child: RadioListTile<int>(
                    contentPadding: const EdgeInsets.all(0),
                    tileColor: AppColor.white,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          person.value['image'],
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                person.value['name'],
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                person.value['about'],
                                style: applyRobotoFont(
                                  fontSize: 12,
                                  color: AppColor.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    value: person.key,
                    groupValue: 0,
                    onChanged: (value) {},
                  ),
                ),
              ),
          Align(
            alignment: Alignment.bottomLeft,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                visualDensity: const VisualDensity(vertical: -1),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
      actions: const [],
    );
  }
}
