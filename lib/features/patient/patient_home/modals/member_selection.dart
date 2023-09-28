import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
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
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4 * 1,
            sigmaY: 4 * 1,
          ),
          child: SafeArea(
            minimum: EdgeInsets.symmetric(
              vertical: AppSize.height(context) * 0.26,
              horizontal: AppSize.kmelevation,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Scaffold(
                backgroundColor: AppColor.scaffold,
                appBar: AppBar(
                  title: const Text('Change Member'),
                  automaticallyImplyLeading: false,
                  actions: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.close_outlined),
                    ),
                    const SizedBox(
                      width: AppSize.kswidth,
                    )
                  ],
                ),
                body: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: people.length,
                          itemBuilder: (context, index) {
                            final person = people[index];
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, bottom: 8),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                    ref.read(iconProvider).setMyString =
                                        person['image'];
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                            visualDensity: VisualDensity.comfortable,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Apply'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}