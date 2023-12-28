import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/presentation/pages/patient_profile_page.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/my_connections_card.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/domain/model/miniapp_injection_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyConnectionsList extends ConsumerWidget {
  const MyConnectionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final familyMembers = ref.watch(globalPatientProvider).familyMembers;
    return _content(context, familyMembers);
  }

  Widget _content(
    BuildContext context,
    List<RelatedPartyModel> connectionsList,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.kmwidth),
              child: Text(
                "My Members",
                style: applyFiraSansFont(
                  fontSize: 18,
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PatientProfilePage(),
                  ),
                );
              },
              child: Text(
                "See All",
                style: applyRobotoFont(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blue,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: AppSize.ksheight),
        connectionsList.isEmpty
            ? Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.kmwidth + 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Transform.translate(
                          offset: const Offset(0, 10),
                          child: InkWell(
                            customBorder: const CircleBorder(),
                            onTap: () {
                              try {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PatientRegistrationMiniappPage(
                                      actionType: MiniAppActionType.ADD_MEMBER,
                                      displayName: "Add Member",
                                    ),
                                  ),
                                );
                              } catch (e) {
                                logger.d({"error": e});
                                Fluttertoast.showToast(
                                  msg: "Service not available",
                                );
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
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
                        ),
                        SizedBox(height: AppSize.height(context) * 0.029),
                        Text(
                          "Add",
                          style: applyFiraSansFont(fontSize: 14),
                        ),
                      ],
                    ),
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
                  const SizedBox(width: AppSize.kswidth + 2),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Transform.translate(
                          offset: const Offset(0, 10),
                          child: InkWell(
                            customBorder: const CircleBorder(),
                            onTap: () {
                              try {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PatientRegistrationMiniappPage(
                                      actionType: MiniAppActionType.ADD_MEMBER,
                                      displayName: "Add Member",
                                    ),
                                  ),
                                );
                              } catch (e) {
                                logger.d({"error": e});
                                Fluttertoast.showToast(
                                  msg: "Service not available",
                                );
                              }
                            },
                            child: Container(
                              width: 40.0,
                              height: 40.0,
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
                        ),
                        SizedBox(height: AppSize.height(context) * 0.029),
                        Text(
                          "Add",
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
