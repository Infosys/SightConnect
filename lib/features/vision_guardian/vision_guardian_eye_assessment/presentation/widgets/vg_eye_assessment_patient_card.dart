import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/providers/vg_eye_assessment_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_eye_assessment/presentation/widgets/vg_eye_assessment_empty_result_card.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:intl/intl.dart';

class VisionGuardianEyeAssessmentPatientsCard extends ConsumerWidget {
  const VisionGuardianEyeAssessmentPatientsCard({Key? key, required this.type})
      : super(key: key);
  final String type;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (type == "default") {
      return ref.watch(vgEyeAssessmentHelperProvider).when(
          data: (patientDetails) {
        if (patientDetails.isEmpty) {
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
        return Column(children: [
          ...patientDetails.map((event) {
            return InkWell(
              onTap: () {},
              child: vgPatientDataCards(context, event),
            );
          }),
        ]);
      }, loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }, error: (error, stackTrace) {
        return const Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            VisionGuardianEyeAssessmentResultCard(),
          ],
        );
      });
    } else {
      var response =
          ref.watch(visionGuardianEyeAssessmentProvider).listOfPatientDetails;
      if (response.isEmpty) {
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
      return Column(
        children: [
          for (int index = 0; index < response.length; index++) ...[
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    left: AppSize.kspadding, right: AppSize.kspadding),
                child: vgPatientDataCards(
                  context,
                  response[index],
                ),
              ),
            ),
          ]
        ],
      );
    }
  }
}

Widget vgPatientDataCards(BuildContext context,
    VisionGuardianPatientResponseModel visionGuardianPatientResponseModel) {
  String dateTimeString =
      visionGuardianPatientResponseModel.encounterStartDate ?? "";
  DateTime dateTime = DateTime.parse(dateTimeString);

  String formattedDate = DateFormat("dd MMM yy").format(dateTime);
  String formattedTime = DateFormat("hh:mm a").format(dateTime.toLocal());

  return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.kmpadding),
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
                    color: AppColor.blue,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(width: AppSize.kswidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${visionGuardianPatientResponseModel.name ?? ""} - PD ${visionGuardianPatientResponseModel.id}",
                      style: applyRobotoFont(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '${visionGuardianPatientResponseModel.gender ?? ""}, ${calculateAge(DateTime(int.parse(visionGuardianPatientResponseModel.yearOfBirth ?? ""), int.parse(visionGuardianPatientResponseModel.monthOfBirth ?? ""), int.parse(visionGuardianPatientResponseModel.dayOfBirth ?? "")))} yrs',
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      "Assessment ID: AT ${visionGuardianPatientResponseModel.encounterId.toString()}",
                      style: applyRobotoFont(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey,
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
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: AppColor.red,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  formattedDate,
                  style: applyRobotoFont(
                    fontSize: 12,
                    color: AppColor.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  formattedTime,
                  style: applyRobotoFont(
                    fontSize: 12,
                    color: AppColor.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
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
