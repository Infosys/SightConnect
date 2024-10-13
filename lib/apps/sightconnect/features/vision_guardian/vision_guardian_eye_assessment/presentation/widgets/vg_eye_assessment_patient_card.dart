/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessment_report_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_report_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/providers/vg_eye_assessment_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_empty_result_card.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionGuardianEyeAssessmentPatientsCard extends ConsumerWidget {
  const VisionGuardianEyeAssessmentPatientsCard({Key? key, required this.type})
      : super(key: key);
  final String type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(visionGuardianEyeAssessmentProvider);
    var loading = model.getisLoading;
    var response = model.listOfPatientDetails;

    ref.listen(visionGuardianEyeAssessmentProvider, (previous, next) {
      if (next.error) {
        Fluttertoast.showToast(
          msg: "Error fetching patient details",
        );
      }
    });

    if (!loading && response.isEmpty) {
      return SizedBox(
        width: Responsive.isMobile(context)
            ? AppSize.width(context) * 0.9
            : AppSize.width(context) * 0.95,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            VisionGuardianEyeAssessmentResultCard(),
          ],
        ),
      );
    }
    return loading
        ? const Center(
            child: CircularProgressIndicator.adaptive(),
          )
        : ListView.builder(
            controller: ref
                .watch(visionGuardianEyeAssessmentProvider)
                .eyeAssessmentController,
            itemCount: (ref
                            .watch(visionGuardianEyeAssessmentProvider)
                            .newEyeAssessmentPatientList
                            .length ==
                        10 &&
                    type != "search")
                ? response.length + 1
                : response.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if (index == response.length) {
                return const Padding(
                  padding: EdgeInsets.all(AppSize.kl),
                  child: CircularProgressIndicator.adaptive(),
                );
              }
              return InkWell(
                onTap: () async {
                  model.setIsLoading();
                  try {
                    var navigator = Navigator.of(context);
                    TriageReportUserEntity profile = TriageReportUserEntity(
                      name: response[index].name ?? "",
                      id: response[index].id!,
                      image: "",
                    );

                    final reports = await ref
                        .read(vgReportProvider(profile))
                        .getTriageDetailedReportByReportId(
                            response[index].diagnosticReportId!);
                    navigator.push(
                      MaterialPageRoute(
                        builder: (context) => PatientAssessmentReportPage(
                          assessmentDetailsReport: reports,
                        ),
                      ),
                    );
                  } catch (e) {
                    logger.e(e);
                    Fluttertoast.showToast(msg: e.toString());
                  }
                  model.setIsLoading();
                },
                child: vgPatientDataCards(context, response[index]),
              );
            },
          );
  }
}

Widget vgPatientDataCards(BuildContext context,
    VisionGuardianPatientResponseModel visionGuardianPatientResponseModel) {
/*   String dateTimeString =
      visionGuardianPatientResponseModel.encounterStartDate ?? "";
  DateTime dateTime = DateTime.parse(dateTimeString);
  String formattedDate = DateFormat("dd MMM yy").format(dateTime);
  String formattedTime = DateFormat("hh:mm a").format(dateTime.toLocal()); */
  final loc = context.loc!;
  return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.km - 5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.km),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: AppNameAvatar(
                    name: visionGuardianPatientResponseModel.name ?? "",
                    color: const Color(0xffD4C1FF),
                  ),
                ),
                const SizedBox(width: AppSize.ks),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${visionGuardianPatientResponseModel.name.capitalize()} - PD ${visionGuardianPatientResponseModel.id}",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${_getGender(context, visionGuardianPatientResponseModel.gender ?? "")}, ${calculateAge(DateTime(int.parse(visionGuardianPatientResponseModel.yearOfBirth ?? ""), int.parse(visionGuardianPatientResponseModel.monthOfBirth ?? ""), int.parse(visionGuardianPatientResponseModel.dayOfBirth ?? "")))} ${loc.vgSlideAge}',
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(height: 2),
                    SizedBox(
                      child: AutoSizeText(
                        "${loc.vgReportId}: ${visionGuardianPatientResponseModel.diagnosticReportId}",
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  visionGuardianPatientResponseModel.category ?? "",
                  style: applyRobotoFont(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.red,
                  ),
                ),
                const SizedBox(height: 5),
/*                 Text(
                  formattedDate,
                  style: applyRobotoFont(
                    fontSize: 12,
                    color: AppColor.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ), */
                /*   const SizedBox(height: 2), */
/*                 Text(
                  formattedTime,
                  style: applyRobotoFont(
                    fontSize: 12,
                    color: AppColor.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ), */
              ],
            )
          ],
        ),
      ));
}

int calculateAge(DateTime dateOfBirth) {
  final now = DateTime.now();
  int age = now.year - dateOfBirth.year;
  if (now.month < dateOfBirth.month ||
      (now.month == dateOfBirth.month && now.day < dateOfBirth.day)) {
    age--;
  }
  return age;
}

String _getGender(BuildContext context, String genderText) {
  final loc = context.loc!;
  switch (genderText.trim().toLowerCase()) {
    case 'male':
      return loc.vgMale;
    case 'female':
      return loc.vgFemale;
    default:
      return loc.vgOthers;
  }
}
