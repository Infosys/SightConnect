import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/enums/relationship.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/presentation/provider/patient_profile_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/triage_member_provider.dart';

class ChangeMemberTiles extends HookConsumerWidget {
  const ChangeMemberTiles({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var memberProvider = ref.watch(traiageMemberProvider);
    final selectedValue = useState<int>(-1);

    return ref.watch(getPatientProfileProvider).when(
          data: (patient) {
            final connectionsList = patient.profile?.patient?.relatedParty;
            final currentProfile = patient.profile?.patient;
            return _content(
              connectionsList ?? [],
              currentProfile!,
              selectedValue,
              memberProvider,
            );
          },
          error: (error, stackTrace) {
            return const Center(
              child: Text('Something went wrong'),
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }

  Widget _content(
    List<RelatedPartyModel> connectionsList,
    ExtendedPatientModel currentProfile,
    ValueNotifier<int> selectedValue,
    TriageMemberProvider memberProvider,
  ) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: connectionsList.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            final person = currentProfile;
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppSize.ksheight - 2,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: applyLightShadow(),
                  color: AppColor.white,
                ),
                child: RadioListTile<int>(
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      person.profilePhoto != null
                          ? Image.asset(
                              person.profilePhoto!,
                              height: 40,
                              width: 40,
                            )
                          : const CircleAvatar(),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            person.name ?? "",
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
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
                    ],
                  ),
                  value: index,
                  groupValue: selectedValue.value,
                  onChanged: (value) {
                    selectedValue.value = value!;
                    memberProvider.setPeople(person);
                  },
                ),
              ),
            );
          } else {
            final person = connectionsList[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppSize.ksheight - 2,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: applyLightShadow(),
                  color: AppColor.white,
                ),
                child: RadioListTile<int>(
                  contentPadding: EdgeInsets.zero,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      person.profilePicture != null
                          ? Image.asset(
                              person.profilePicture!,
                              height: 40,
                              width: 40,
                            )
                          : const CircleAvatar(),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            person.name ?? "",
                            style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            RelatedPartyModel.relationMapper(
                              person.relation ?? Relationship.OTHER,
                            ),
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
                    memberProvider.setPeople(person);
                  },
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
