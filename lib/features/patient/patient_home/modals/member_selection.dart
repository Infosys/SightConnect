import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';

class MemberSelectionPopUp extends ConsumerStatefulWidget {
  const MemberSelectionPopUp({super.key});

  @override
  ConsumerState<MemberSelectionPopUp> createState() =>
      _MemberSelectionPopUpState();
}

class _MemberSelectionPopUpState extends ConsumerState<MemberSelectionPopUp> {
  int selectedMemberIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ref.watch(getPatientProfileProvider(1202)).when(
      data: (patient) {
        final connectionsList = patient.profile?.patient?.relatedParty;
        final currentProfile = patient.profile?.patient;

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
          content: StatefulBuilder(builder: (context, setState) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ...List.generate(
                  1 + connectionsList!.length,
                  (index) {
                    if (index == 0) {
                      return _MemberTile(
                        name: currentProfile!.name ?? "",
                        profilePicture: currentProfile.profilePhoto,
                        age: 20,
                        index: 0,
                        selectedMemberIndex: selectedMemberIndex,
                        onIndexChanged: (value) {
                          setState(() {
                            selectedMemberIndex = value;
                          });
                        },
                      );
                    } else {
                      final member = connectionsList[index - 1];
                      return _MemberTile(
                        name: member.name ?? "",
                        profilePicture: member.profilePicture,
                        age: member.age ?? 0,
                        index: index,
                        selectedMemberIndex: selectedMemberIndex,
                        onIndexChanged: (value) {
                          setState(() {
                            selectedMemberIndex = value;
                          });
                        },
                      );
                    }
                  },
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      visualDensity: const VisualDensity(vertical: -1),
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    child: const Text('Apply'),
                  ),
                ),
              ],
            );
          }),
          actions: const [],
        );
      },
      error: (e, s) {
        return Center(
          child: Text(e.toString()),
        );
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

class _MemberTile extends StatelessWidget {
  const _MemberTile({
    Key? key,
    required this.name,
    this.profilePicture,
    required this.age,
    required this.index,
    required this.selectedMemberIndex,
    required this.onIndexChanged,
  }) : super(key: key);
  final String name;
  final String? profilePicture;
  final int age;
  final int index;
  final int selectedMemberIndex;
  final Function(int) onIndexChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: AppSize.width(context) * 0.88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: applyLightShadow(),
        color: AppColor.white.withOpacity(0.5),
      ),
      child: RadioListTile<int>(
        key: ValueKey(index),
        contentPadding: const EdgeInsets.all(0),
        tileColor: AppColor.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            profilePicture != null
                ? Image.asset(
                    profilePicture!,
                    height: 40,
                    width: 40,
                  )
                : const CircleAvatar(),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    name,
                    style: applyRobotoFont(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "$age Years",
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
        value: index,
        groupValue: selectedMemberIndex,
        onChanged: (value) {
          onIndexChanged(value!);
        },
      ),
    );
  }
}
