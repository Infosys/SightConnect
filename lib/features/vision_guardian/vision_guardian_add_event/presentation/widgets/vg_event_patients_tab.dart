import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/pages/patient_assessment_report_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_add_event_details_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_report_provider.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/presentation/widgets/vg_empty_result_card.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_name_avatar.dart';
import 'package:eye_care_for_all/shared/widgets/loading_overlay.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class EventPatientsTab extends ConsumerWidget {
  final String patientsType;

  const EventPatientsTab({Key? key, required this.patientsType})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var response = ref.watch(addEventDetailsProvider).listOfEventPatients;
    var loading = ref.watch(addEventDetailsProvider).getisLoading;

    if (loading == false && response.isEmpty) {
      return SizedBox(
        width: Responsive.isMobile(context)
            ? AppSize.width(context) * 0.9
            : AppSize.width(context) * 0.95,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            VisionGuardianEmptyResultCard(type: "Event"),
          ],
        ),
      );
    }

    return LoadingOverlay(
      isLoading: loading,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: vgPatientTabs(context, response, ref, patientsType),
      ),
    );
  }
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

Widget vgPatientTabs(
    BuildContext context,
    List<VisionGuardianPatientResponseModel> response,
    WidgetRef ref,
    String patientsType) {
  logger.f(ref.watch(addEventDetailsProvider).newEventPatientList.length);
  return ListView.separated(
    controller: ref.watch(addEventDetailsProvider).eventPatientController,
    shrinkWrap: true,
    scrollDirection: Axis.vertical,
    itemCount:
        (ref.watch(addEventDetailsProvider).newEventPatientList.length == 7 &&
                patientsType != "search")
            ? response.length + 1
            : response.length,
    itemBuilder: (context, index) {
      if (index == response.length) {
        return const Padding(
          padding: EdgeInsets.all(AppSize.klpadding),
          child: CupertinoActivityIndicator(),
        );
      }
      var data = response[index];
      return GestureDetector(
        onTap: () async {
          try {
            var navigator = Navigator.of(context);
            TriageReportUserEntity profile = TriageReportUserEntity(
              name: data.name ?? "",
              id: data.id!,
              image: "",
            );
            final reports = await ref
                .read(vgReportProvider(profile))
                .getTriageDetailedReportByReportId(data.diagnosticReportId!);

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
        },
        child: Container(
          padding: const EdgeInsets.all(AppSize.kspadding),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColor.white,
            boxShadow: applyLightShadow(),
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSize.kmradius - 5),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.ksradius),
            child: Container(
              padding: const EdgeInsets.all(AppSize.kspadding),
              width: Responsive.isMobile(context)
                  ? AppSize.width(context) * 0.9
                  : AppSize.width(context) * 0.6,
              color: AppColor.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: AppNameAvatar(
                      name: data.name ?? "",
                      color: AppColor.blue,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: AppSize.kswidth),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? AppSize.width(context) * 0.74
                            : AppSize.width(context) * 0.6,
                        child: Row(
                          children: [
                            Text(
                              "${data.name ?? ""} - PD ${data.id}",
                              style: applyRobotoFont(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.black,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              data.category ?? "",
                              style: applyRobotoFont(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: AppColor.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? AppSize.width(context) * 0.74
                            : AppSize.width(context) * 0.6,
                        child: Row(
                          children: [
                            Text(
                              '${data.gender ?? ""}, ${data.dayOfBirth != null && data.monthOfBirth != null && data.dayOfBirth != null ? calculateAge(DateTime(
                                  int.parse(data.yearOfBirth ?? ""),
                                  int.parse(data.monthOfBirth ?? ""),
                                  int.parse(data.dayOfBirth ?? ""),
                                )) : ""} yrs',
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColor.grey,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              data.encounterStartDate != null
                                  ? DateFormat("dd MMM yy")
                                      .format(DateTime.parse(
                                          data.encounterStartDate!))
                                      .toString()
                                  : "",
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: AppSize.ksheight / 3),
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSize.ksheight),
                      SizedBox(
                        width: Responsive.isMobile(context)
                            ? AppSize.width(context) * 0.74
                            : AppSize.width(context) * 0.6,
                        child: Row(
                          children: [
                            Text(
                              "Assessment ID: AT ${data.encounterId.toString()}",
                              style: applyRobotoFont(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColor.grey,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              data.encounterStartDate != null
                                  ? DateFormat("hh:mm a").format(
                                      DateTime.parse(data.encounterStartDate!))
                                  : "",
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: AppSize.ksheight / 3),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) {
      return const SizedBox(
        height: AppSize.ksheight,
      );
    },
  );
}
