/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/patient_registeration_miniapp_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessments_and_tests_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_profile/presentation/provider/patient_helper.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_profile/presentation/provider/patient_profile_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_patient_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/data/model/miniapp_injection_model.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'patient_profile_family_info_cards.dart';
import 'patient_profile_header.dart';
import 'patient_profile_patient_info.dart';

class PatientProfileLayout extends ConsumerWidget {
  const PatientProfileLayout({
    super.key,
    required this.patient,
    this.id,
  });

  final PatientResponseModel patient;

  final int? id;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    final model = ref.watch(
        patientProfileProvider(id ?? patient.profile?.patient?.patientId));
    final selectedPatientId = model.selectPatientId;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: AppSize.kl * 4.2),
        Padding(
          padding: const EdgeInsets.only(
            left: 16,
          ),
          child: PatientFamilyDetails(
            onPatientSelect: (id) {
              model.setPatientId(id!);
            },
            relations:
                patient.profile?.patient?.relatedParty?.reversed.toList() ?? [],
            patient: patient,
            id: model.selectPatientId,
          ),
        ),
        const SizedBox(height: 4),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(
                  thickness: 1,
                  color: AppColor.black.withOpacity(0.2),
                ),
                const SizedBox(height: 4),
                ref
                    .watch(getPatientProfileByIdProvider(selectedPatientId!))
                    .when(
                  data: (data) {
                    final patient = data;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                context.loc!.profilePageHealthCardTitle,
                                style: applyFiraSansFont(fontSize: 18),
                              ),
                              InkWell(
                                customBorder: const CircleBorder(),
                                onTap: () {
                                  Navigator.of(context)
                                      .push<bool?>(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PatientRegistrationMiniappPage(
                                        actionType: MiniAppActionType.UPDATE,
                                        displayName: loc.patientUpdateProfile,
                                        parentPatientId:
                                            selectedPatientId.toString(),
                                      ),
                                    ),
                                  )
                                      .then((value) {
                                    logger.d(
                                        {"Profile Page Update Miniapp": value});
                                    if (value == null || value == false) {
                                      Fluttertoast.showToast(
                                          msg: loc.patientProfileNotUpdated);
                                    } else if (value) {
                                      Fluttertoast.showToast(
                                          msg: loc.patientProfileUpdated);
                                      ref.invalidate(getPatientProfileProvider);
                                      ref.invalidate(
                                          getPatientProfileByIdProvider(
                                        selectedPatientId,
                                      ));
                                    }
                                  });
                                },
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.edit,
                                      size: 16,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      loc.patientEdit,
                                      style: applyFiraSansFont(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          ProfileHeader(
                            patient: patient,
                          ),
                          const SizedBox(height: 16),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ExpansionTile(
                              childrenPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              title: Text(
                                context.loc!.profilePagePersonalDetails,
                                style: applyFiraSansFont(fontSize: 16),
                              ),
                              children: [
                                PatientInfoCard(
                                  keyText: loc.myProfileABHAID,
                                  valueText:
                                      patient.profile?.patient?.abhaNumber ??
                                          "-",
                                ),
                                const SizedBox(height: AppSize.ks),
                                const SizedBox(height: AppSize.ks),
                                PatientInfoCard(
                                  keyText: loc.myProfileEmail,
                                  valueText:
                                      patient.profile?.patient?.email ?? "",
                                ),
                                const SizedBox(height: AppSize.ks),
                                Divider(
                                  thickness: 1,
                                  color: AppColor.black.withOpacity(0.2),
                                ),
                                const SizedBox(height: AppSize.ks),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    PatientInfoCard(
                                      keyText: loc.myProfileLine,
                                      valueText: PatientHelper.street(
                                        patient.profile?.patient?.address,
                                      ),
                                    ),
                                    const SizedBox(height: AppSize.ks),
                                    PatientInfoCard(
                                      keyText: loc.myProfileCity,
                                      valueText: PatientHelper.city(
                                        patient.profile?.patient?.address,
                                      ),
                                    ),
                                    const SizedBox(height: AppSize.ks),
                                    PatientInfoCard(
                                      keyText: loc.myProfileDistrict,
                                      valueText: PatientHelper.district(
                                        patient.profile?.patient?.address,
                                      ),
                                    ),
                                    const SizedBox(height: AppSize.ks),
                                    PatientInfoCard(
                                      keyText: loc.myProfileState,
                                      valueText: PatientHelper.state(
                                        patient.profile?.patient?.address,
                                      ),
                                    ),
                                    const SizedBox(height: AppSize.ks),
                                    PatientInfoCard(
                                      keyText: loc.myProfilePinCode,
                                      valueText: PatientHelper.pincode(
                                        patient.profile?.patient?.address,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: AppSize.ks),
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            margin:
                                const EdgeInsets.only(bottom: AppSize.kl * 3),
                            decoration: BoxDecoration(
                              color: AppColor.primary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ListTile(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AssessmentsAndTestsPage(),
                                  ),
                                );
                              },
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: AppColor.white,
                                size: 16,
                              ),
                              title: Text(
                                context.loc!.profilePaeCheckReports,
                                style: applyFiraSansFont(
                                  fontSize: 14,
                                  color: AppColor.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  error: (e, s) {
                    return Center(
                      child: Text(
                        loc.somethingWentWrong,
                        style: applyFiraSansFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    );
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
