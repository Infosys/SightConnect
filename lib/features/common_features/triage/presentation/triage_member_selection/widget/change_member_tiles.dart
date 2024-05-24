import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/triage_member_provider.dart';

class ChangeMemberTiles extends HookConsumerWidget {
  const ChangeMemberTiles({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberProvider = ref.watch(triageMemberProvider);
    final connectionsList = memberProvider.connectionsList;
    final currentProfile = memberProvider.currentProfile;
    final selectedValue = memberProvider.currentIndex;

    if (currentProfile == null) {
      return const Center(
          child: Text(
        "No Member Found",
        style: TextStyle(
          color: AppColor.grey,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ));
    }

    return _content(
      connectionsList,
      currentProfile,
      selectedValue,
      memberProvider,
    );
  }

  Widget _content(
    List<RelatedPartyModel> connectionsList,
    PatientModel currentProfile,
    int selectedValue,
    TriageMemberProvider memberProvider,
  ) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: connectionsList.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          final person = currentProfile;
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSize.ks - 2,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                // boxShadow: applyLightShadow(),
                // color: AppColor.white,
                border: selectedValue == index
                    ? Border.all(
                        color: AppColor.primary,
                        width: 1,
                      )
                    : null,
              ),
              child: RadioListTile<int>(
                contentPadding: EdgeInsets.zero,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    person.profilePhoto != null
                        ? AppNetworkImage(
                            imageUrl: person.profilePhoto!,
                          )
                        : AppNameAvatar(
                            name: person.name,
                          ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            person.name?.capitalizeFirstOfEach() ?? "",
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Me",
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
                groupValue: selectedValue,
                onChanged: (value) {
                  memberProvider.setCurrentIndex(value!);
                  memberProvider.setTestPersonId(person.patientId!);
                  memberProvider.setPatientAgeAndGender(
                    age: person.age,
                    gender: person.gender?.name,
                  );
                },
              ),
            ),
          );
        } else {
          final person = connectionsList[index - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSize.ks - 2,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                // boxShadow: applyLightShadow(),
                // color: AppColor.white,
                border: selectedValue == index
                    ? Border.all(
                        color: AppColor.primary,
                        width: 2,
                      )
                    : null,
              ),
              child: RadioListTile<int>(
                contentPadding: EdgeInsets.zero,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    person.profilePicture != null
                        ? AppNetworkImage(
                            imageUrl: person.profilePicture!,
                          )
                        : AppNameAvatar(
                            name: person.name,
                          ),
                    const SizedBox(
                      width: 20,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            person.name?.capitalize() ?? "",
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${person.relation.toString().split(".").last.toLowerCase().capitalize()}, ${person.age} years",
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
                groupValue: selectedValue,
                onChanged: (value) {
                  memberProvider.setCurrentIndex(value!);
                  memberProvider.setTestPersonId(person.patientId!);
                  memberProvider.setPatientAgeAndGender(
                    age: person.age,
                    gender: null,
                  );
                },
              ),
            ),
          );
        }
      },
    );
  }
}
