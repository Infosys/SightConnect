import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/enitity/assessment_and_triage_report_entity.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_recommeded_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessment_report_profile.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianAssessmentReportPage extends ConsumerWidget {
  const VisionTechnicianAssessmentReportPage({
    required this.assessmentDetailsReport,
    super.key,
  });
  final AssessmentAndTriageReportDetailedEntity assessmentDetailsReport;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text(
            '${loc.vtAssessmentReport} ${assessmentDetailsReport.assessmentID}'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AssessmentReportProfile(
                  assessmentId: assessmentDetailsReport.assessmentID),
              const SizedBox(height: AppSize.klheight),
              AssessmentReportDetails(
                questionResponseBreifModel:
                    assessmentDetailsReport.questionResponseBriefEntity,
              ),
              const SizedBox(height: AppSize.klheight),
              // Container(
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     color: AppColor.white,
              //     boxShadow: applyLightShadow(),
              //     borderRadius: const BorderRadius.all(
              //       Radius.circular(AppSize.kmradius - 5),
              //     ),
              //   ),
              //   padding: const EdgeInsets.all(AppSize.klpadding),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Text(
              //         "Recommendation",
              //         style: applyFiraSansFont(
              //           fontSize: 18,
              //           fontWeight: FontWeight.w500,
              //         ),
              //       ),
              //       const SizedBox(height: AppSize.kmheight),
              //       Text(
              //         "Patient has sticky discharge in eyes and needs to be referred to a specialist who deals with corneal disorders.",
              //         style: applyRobotoFont(
              //             fontSize: 16, fontWeight: FontWeight.w400),
              //       )
              //     ],
              //   ),
              // ),

              const SizedBox(height: AppSize.klheight),
              AssessmentReportRecommendedCenter(
                  visionCenterId: assessmentDetailsReport.visionCenterId),
              const SizedBox(height: AppSize.klheight),
              if (assessmentDetailsReport.remarks != null &&
                  assessmentDetailsReport.remarks!.isNotEmpty)
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    boxShadow: applyLightShadow(),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(AppSize.kmradius - 5),
                    ),
                  ),
                  padding: const EdgeInsets.all(AppSize.klpadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        loc.vtRemarks,
                        style: applyFiraSansFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: AppSize.kmheight),
                      Text(
                        assessmentDetailsReport.remarks ?? "",
                        style: applyRobotoFont(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
