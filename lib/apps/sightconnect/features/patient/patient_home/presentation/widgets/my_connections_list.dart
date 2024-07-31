import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_home/presentation/widgets/my_connections_card.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyConnectionsList extends ConsumerWidget {
  const MyConnectionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(getPatientProfileProvider).when(
      data: (data) {
        final familyMembers =
            data.profile?.patient?.relatedParty?.reversed.toList();
        return _content(context, familyMembers, ref);
      },
      error: (error, stackTrace) {
        return _content(context, [], ref);
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }

  Widget _content(
    BuildContext context,
    List<RelatedPartyModel>? connectionsList,
    WidgetRef ref,
  ) {
    final loc = context.loc!;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  loc.myConnectionsTitle,
                  style: applyFiraSansFont(
                    fontSize: 18,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  try {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PatientRegistrationMiniappPage(
                          actionType: MiniAppActionType.ADD_MEMBER,
                          displayName: loc.myConnectionListAddMembers,
                        ),
                      ),
                    ).then(
                      (value) {
                        logger.d({"Profile Page add Miniapp": value});
                        if (value == null || value == false) {
                          // Fluttertoast.showToast(
                          //     msg: "Family member not added");
                        } else if (value) {
                          Fluttertoast.showToast(msg: "Family member added");
                          ref.invalidate(getPatientProfileProvider);
                        }
                      },
                    );
                  } catch (e) {
                    logger.d({"error": e});
                    Fluttertoast.showToast(
                      msg: loc.myConnectionsServiceNotAvailable,
                    );
                  }
                },
                child: Text(
                  loc.myConnectionListAddMembers,
                  maxLines: 1,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blue,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: AppSize.km),
          Row(
            children: [
              MyConnectionsCard(
                isPrimary: true,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return PatientProfilePage(
                          id: ref
                              .read(globalPatientProvider)
                              .activeUser!
                              .profile!
                              .patient!
                              .patientId,
                        );
                      },
                    ),
                  );
                },
                image: ref
                    .read(globalPatientProvider)
                    .activeUser!
                    .profile!
                    .patient!
                    .profilePhoto,
                name: ref
                    .read(globalPatientProvider)
                    .activeUser!
                    .profile!
                    .patient!
                    .name!
                    .split(" ")[0],
                index: 0,
              ),
              () {
                if (connectionsList == null || connectionsList.isEmpty) {
                  /// if user has no family members
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        loc.myConnectionListAddMembersDescription,
                        style: applyRobotoFont(
                          fontSize: 12,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  );
                } else {
                  /// if user has family members
                  return Flexible(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        ...connectionsList
                            .asMap()
                            .entries
                            .map(
                              (e) => MyConnectionsCard(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return PatientProfilePage(
                                          id: e.value.patientId,
                                        );
                                      },
                                    ),
                                  );
                                },
                                image: e.value.profilePicture,
                                name: e.value.name ?? "",
                                index: e.key,
                              ),
                            )
                            .toList(),
                      ]),
                    ),
                  );
                }
              }(),
            ],
          ),
        ],
      ),
    );
  }
}
