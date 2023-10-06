import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyStringModel extends ChangeNotifier {
  String _myString = '';

  String get myString => _myString;

  set setMyString(String value) {
    _myString = value;
    notifyListeners();
  }
}

var iconProvider = ChangeNotifierProvider((ref) => MyStringModel());

class MemberSelectionPopUp extends HookConsumerWidget {
  const MemberSelectionPopUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
    return BlurDialogBox(
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
                  width: double.infinity,
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
                    groupValue: selectedValue.value,
                    onChanged: (value) {
                      selectedValue.value = value!;
                      ref.read(iconProvider).setMyString =
                          person.value['image'];
                    },
                  ),
                ),
              )
        ],
      ),
      actions: [
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
    );
  }
}
