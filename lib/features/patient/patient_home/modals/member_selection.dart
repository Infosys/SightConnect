import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/common_features/auth/presentation/provider/user_details_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/blur_overlay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MemberSelectionPopUp extends HookConsumerWidget {
  const MemberSelectionPopUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(userDetailsProvider);
    var patient = model.userProfile!.profile!.patient!;
    var relatedParty = model.familyMembers;
    var currentIndex = useState<int>(0);

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
          ...List.generate(
            relatedParty.length + 1,
            (index) {
              if (index == 0) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: applyLightShadow(),
                    color: AppColor.white.withOpacity(0.5),
                  ),
                  child: RadioListTile<int>(
                    contentPadding: const EdgeInsets.all(0),
                    tileColor: AppColor.white,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          patient.profilePhoto!,
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
                                patient.name ?? "",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Me, ${patient.dayOfBirth ?? ""} Years",
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
                    value: 0,
                    groupValue: currentIndex.value,
                    onChanged: (value) {
                      currentIndex.value = value!;
                    },
                  ),
                );
              } else {
                var member = relatedParty[index - 1];
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: AppSize.width(context) * 0.88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: applyLightShadow(),
                    color: AppColor.white.withOpacity(0.5),
                  ),
                  child: RadioListTile<int>(
                    contentPadding: const EdgeInsets.all(0),
                    tileColor: AppColor.white,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          member.profilePhoto!,
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
                                member.name ?? "",
                                style: applyRobotoFont(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${member.relationship ?? ""}, ${member.age ?? ""} Years",
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
                    groupValue: currentIndex.value,
                    onChanged: (value) {
                      currentIndex.value = value!;
                    },
                  ),
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

                // ref
                //     .read(userDetailsProvider)
                //     .updateCurrentProfile()
                //     .then((value) => Navigator.pop(context));
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
