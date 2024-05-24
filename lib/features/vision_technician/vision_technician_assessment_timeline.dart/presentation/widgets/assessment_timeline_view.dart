import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/enitity/assessment_and_triage_report_entity.dart';
import 'package:eye_care_for_all/core/providers/vt_assessesment_and_test_provider.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/pages/vision_technician_assessment_report_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/widgets/timeline_assessmnet_tile.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/models/assessment_timeline_view_model.dart';

class AssessmentTimelineView extends HookConsumerWidget {
  final VTPatientDto patientDetail;
  final List<AssessmentTimelineViewModel> timeLineList;

  const AssessmentTimelineView({
    super.key,
    required this.patientDetail,
    required this.timeLineList,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = Responsive.isMobile(context);

    return ListView.separated(
      itemCount: timeLineList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.all(0),
          subtitle: Row(
            children: [
              Container(
                height: isMobile ? 40 : 60,
                width: isMobile ? 4 : 6,
                margin: const EdgeInsets.only(right: AppSize.ks),
                decoration: BoxDecoration(
                  color: timeLineList[index].source == null
                      ? AppColor.primary
                      : AppColor.green,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          timeLineList[index]
                              .title
                              .formatTitle()
                              .capitalizeFirstOfEach(),
                          style: applyFiraSansFont(fontSize: 16),
                        ),
                        Text(
                          timeLineList[index]
                              .date
                              .formatDateTimeWithFullMonthName,
                          style: applyFiraSansFont(
                            fontSize: 14,
                            color: AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      timeLineList[index].status.capitalizeFirstOfEach(),
                      style: applyFiraSansFont(
                        fontSize: 14,
                        color: AppColor.grey,
                      ),
                    ),
                    TimelineAssessmentTile(
                      source: timeLineList[index].source,
                      description: timeLineList[index].description ?? "",
                      context: context,
                      assessmentId: timeLineList[index].assessmentId,
                      onTap: () async {
                        try {
                          final navigator = Navigator.of(context);
                          AssessmentAndTriageReportDetailedEntity response =
                              await ref
                                  .watch(vtAssessmentAndTestProvider)
                                  .getTriageDetailedReportByReportId(
                                    context,
                                    timeLineList[index].assessmentId!,
                                  );

                          navigator.push(
                            MaterialPageRoute(
                              builder: (context) {
                                return VisionTechnicianAssessmentReportPage(
                                  assessmentDetailsReport: response,
                                  patientDetails: patientDetail,
                                );
                              },
                            ),
                          );
                        } on Failure catch (e) {
                          logger.e("error ${e.errorMessage}");
                          Fluttertoast.showToast(msg: e.errorMessage);
                        } catch (e) {
                          logger.e("error $e");
                          Fluttertoast.showToast(
                              msg: "Something went wrong! Please try again.");
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          color: AppColor.lightGrey,
          thickness: 1,
          height: 40,
        );
      },
    );
  }
}
