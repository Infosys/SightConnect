import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_connections_card.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/main.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
              child: Text(
                loc.myConnectionsTitle,
                style: applyFiraSansFont(
                  fontSize: 18,
                ),
              ),
            ),
            Flexible(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PatientProfilePage(),
                    ),
                  );
                },
                child: Text(
                  'Add Members',
                  maxLines: 1,
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blue,
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: AppSize.ks),
        (connectionsList == null || connectionsList.isEmpty)
            ? Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.km,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: AppSize.km),
                        child: MyConnectionsCard(
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
                      ),
                    ),
                    const SizedBox(
                      width: AppSize.km,
                    ),
                    Expanded(
                      flex: 4,
                      child: Positioned(
                        child: Text(
                          'Click the Add Members button to add your family and friends.',
                          style: applyRobotoFont(
                            fontSize: 12,
                            color: AppColor.grey,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Row(
                children: [
                  Flexible(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        ...connectionsList
                            .asMap()
                            .entries
                            .map(
                              (e) => MyConnectionsCard(
                                image: e.value.profilePicture,
                                name: e.value.name ?? "",
                                index: e.key,
                              ),
                            )
                            .toList(),
                      ]),
                    ),
                  ),
                  const SizedBox(width: AppSize.ks + 2),
                  Container(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          customBorder: const CircleBorder(),
                          onTap: () async {
                            try {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PatientRegistrationMiniappPage(
                                    actionType: MiniAppActionType.ADD_MEMBER,
                                    displayName: loc.myConnectionsAddMember,
                                  ),
                                ),
                              ).then((value) {
                                ref.invalidate(getPatientProfileProvider);
                              });
                            } catch (e) {
                              logger.d({"error": e});
                              Fluttertoast.showToast(
                                msg: loc.myConnectionsServiceNotAvailable,
                              );
                            }
                          },
                          child: Container(
                            width: 45.0,
                            height: 45.0,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                color: AppColor.lightBlue,
                                width: 1.0,
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: AppColor.blue,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSize.ks),
                        Text(
                          loc.myConnectionsAdd,
                          style: applyFiraSansFont(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
