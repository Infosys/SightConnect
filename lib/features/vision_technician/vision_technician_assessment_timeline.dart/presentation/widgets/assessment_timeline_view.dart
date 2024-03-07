import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/enitity/assessment_and_triage_report_entity.dart';
import 'package:eye_care_for_all/core/providers/vt_assessesment_and_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/pages/vision_technician_assessment_report_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/models/assessment_timeline_view_model.dart';

class AssessmentTimelineView extends HookConsumerWidget {
  final VTPatientDto patientDetail;

  const AssessmentTimelineView(this.timeLineList, this.patientDetail,
      {super.key});

  final List<AssessmentTimelineViewModel> timeLineList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ValueNotifier<bool> isLoading = useState<bool>(false);

    return Column(
      children: [
        if (isLoading.value) const CircularProgressIndicator.adaptive(),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: AppSize.width(context) / 5,
                    child: Text(
                      timeLineList[index]
                              .title
                              ?.replaceAll("_", " ")
                              .toLowerCase()
                              .capitalizeFirstOfEach() ??
                          "",
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                  ),
                  Text(
                    timeLineList[index].date.formateDateWithTime,
                    style: applyRobotoFont(
                      fontSize: 12,
                      color: AppColor.grey,
                    ),
                  ),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Responsive.isMobile(context)
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              timeLineList[index].subtitle ?? "",
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.grey,
                              ),
                            ),
                            TimeWidgetRender(
                              context,
                              timeLineList[index],
                              index,
                              ref,
                              isLoading,
                              patientDetail,
                            ),
                          ],
                        )
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              timeLineList[index].subtitle ?? "",
                              style: applyRobotoFont(
                                fontSize: 12,
                                color: AppColor.grey,
                              ),
                            ),
                            TimeWidgetRender(
                              context,
                              timeLineList[index],
                              index,
                              ref,
                              isLoading,
                              patientDetail,
                            ),
                          ],
                        ),
                  const SizedBox(
                    height: AppSize.kmheight,
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ],
              ),
            );
          },
          itemCount: timeLineList.length,
          separatorBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSize.kspadding + 2,
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:
                          index.isEven ? AppColor.altGreen : AppColor.lightGrey,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

Widget TimeWidgetRender(
  BuildContext context,
  AssessmentTimelineViewModel timeLine,
  int index,
  WidgetRef ref,
  ValueNotifier<bool> isLoading,
  VTPatientDto patientDetails,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      if (timeLine.call != null)
        Row(
          children: [
            const Icon(
              Icons.add_call,
              size: 20,
            ),
            const SizedBox(
              width: AppSize.kswidth,
            ),
            Text(
              timeLine.call ?? "",
              style: applyRobotoFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ],
        ),
      if (timeLine.assessmentId != null)
        Row(
          children: [
            const Icon(
              Icons.file_open,
              size: 20,
            ),
            const SizedBox(
              width: AppSize.kswidth,
            ),
            const SizedBox(
              width: AppSize.kswidth,
            ),
            InkWell(
              onTap: () async {
                try {
                  isLoading.value = true;
                  AssessmentAndTriageReportDetailedEntity response = await ref
                      .watch(vtAssessmentAndTestProvider)
                      .getTriageDetailedReportByEncounterId(context,
                          timeLine.encounterId!, DiagnosticReportStatus.FINAL);
                  logger.d("report response ${response.toJson()}");
                  isLoading.value = false;
                  if (context.mounted) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return VisionTechnicianAssessmentReportPage(
                            assessmentDetailsReport: response,
                            patientDetails: patientDetails,
                          );
                        },
                      ),
                    );
                  }
                } catch (e) {
                  isLoading.value = false;
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Some Error Occurred"),
                      ),
                    );
                  }
                  logger.d("error $e");
                }
              },
              child: Text(
                'View Report',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: applyRobotoFont(
                  fontSize: 12,
                  color: AppColor.blue,
                  decoration: TextDecoration.combine(
                    [
                      TextDecoration.underline,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
    ],
  );
}
