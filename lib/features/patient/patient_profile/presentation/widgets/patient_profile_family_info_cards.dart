import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/core/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/core/providers/patient_assesssment_and_test_provider_new.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientFamilyDetails extends ConsumerWidget {
  const PatientFamilyDetails({
    super.key,
    required this.relations,
    required this.patient,
    required this.id,
    required this.onPatientSelect,
  });
  final List<RelatedPartyModel> relations;
  final PatientResponseModel patient;

  final int? id;
  final Function(int?) onPatientSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    final model = ref.watch(patientAssessmentAndTestProvider);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Consumer(
          builder: (context, ref, child) => InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              try {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PatientRegistrationMiniappPage(
                      actionType: MiniAppActionType.ADD_MEMBER,
                      displayName: loc.myConnectionsAddMember,
                    ),
                  ),
                ).then(
                  (value) {
                    logger.d({"Profile Page add Miniapp": value});
                    if (value == null || value == false) {
                      Fluttertoast.showToast(msg: "Family member not added");
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: AppColor.blue,
                      width: 1,
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 20,
                    color: AppColor.blue,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  loc.myConnectionsAddMember,
                  style: applyRobotoFont(
                    fontSize: 10,
                    color: AppColor.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 40,
          child: VerticalDivider(
            thickness: 2,
            width: AppSize.kl,
            color: AppColor.lightGrey,
          ),
        ),
        InkWell(
          customBorder: const CircleBorder(),
          onTap: () {
            final id = patient.profile?.patient?.patientId;
            if (id != null) {
              model.setPatient(
                TriageReportUserEntity(
                  id: id,
                  image: patient.profile?.patient?.profilePhoto ?? "",
                  name: patient.profile?.patient?.name ?? "",
                ),
              );
            }
            onPatientSelect.call(id);
          },
          child: _FamilyCard(
            isActive: id == patient.profile?.patient?.patientId,
            name: patient.profile?.patient?.name ?? "",
            imageUrl: patient.profile?.patient?.profilePhoto,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...relations.map(
                  (data) {
                    return InkWell(
                      customBorder: const CircleBorder(),
                      onTap: () {
                        final id = data.patientId;
                        if (id != null) {
                          model.setPatient(
                            TriageReportUserEntity(
                              id: id,
                              image: data.profilePicture ?? "",
                              name: data.name ?? "",
                            ),
                          );
                        }
                        onPatientSelect.call(id);
                      },
                      child: _FamilyCard(
                        isActive: id == data.patientId,
                        name: data.name ?? "",
                        imageUrl: data.profilePicture,
                      ),
                    );
                  },
                ).toList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _FamilyCard extends StatelessWidget {
  final String name;
  final bool isActive;
  final String? imageUrl;

  const _FamilyCard({
    Key? key,
    required this.name,
    this.isActive = false,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      margin: const EdgeInsets.only(right: AppSize.ks / 2),
      padding: const EdgeInsets.only(right: AppSize.km),
      // decoration: const BoxDecoration(color: Colors.amber),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45,
              width: 45,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: isActive
                      ? Border.all(
                          color: AppColor.primary,
                          width: 2,
                        )
                      : null,
                ),
                child: imageUrl != null
                    ? AppNetworkImage(
                        imageUrl: imageUrl!,
                        fit: BoxFit.cover,
                      )
                    : AppNameAvatar(
                        name: name,
                        radius: 20,
                      ),
              ),
            ),
            const SizedBox(height: 4),
            Flexible(
              child: AutoSizeText(
                _formateFirstName(name),
                maxFontSize: 10,
                minFontSize: 8,
                style: applyRobotoFont(fontSize: 10),
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  _formateFirstName(String? name) {
    if (name == null || name.isEmpty) {
      return "";
    } else {
      return name.split(" ")[0].capitalize();
    }
  }
}
