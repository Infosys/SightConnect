import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/provider/patient_assessments_and_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/assessment_overall_result_card.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/report_assessment_questions.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/report_page_header.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/tumbling_e_report_card.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/eye_scan_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientAssessmentReportPage extends ConsumerWidget {
  final int diagnosticReportId;
  const PatientAssessmentReportPage({
    required this.diagnosticReportId,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(getAssementDetailsReport(diagnosticReportId)).when(
      data: (TriageReportDetailedEntity assessmentDetailsReport) {
        return Scaffold(
          appBar: CustomAppbar(
            title: Row(
              children: [
                const Text("Eye Assessment"),
                const Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(context) * 0.01,
                  ),
                  decoration: const BoxDecoration(color: AppColor.orange),
                  child: Text(
                    getRequestPriorityText(
                        assessmentDetailsReport.overallpriority),
                    style: applyRobotoFont(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReportPageHeader(
                    triageReportAndAssementPage: assessmentDetailsReport,
                  ),
                  AssessmentOverallResultCard(
                    triageResult: const {},
                    name: "name",
                    id: "id",
                    patientImage: AppImages.aboutUs,
                    triageResultEntities: assessmentDetailsReport,
                  ),
                  ReportAssessmentQuestions(
                    questionResponseBreifModel:
                        assessmentDetailsReport.questionResponseBriefEntity,
                  ),
                  TumblingEReportCard(
                    tumblingEData:
                        assessmentDetailsReport.visualAcuityBreifEntity,
                    observationDescription:
                        assessmentDetailsReport.observationResultDescription,
                  ),
                  EyeScanTabView(
                    eyeScanData: assessmentDetailsReport.imageBriefEntity,
                  ),
                  // const AssessmentRecommendation(),
                  // SizedBox(
                  //   height: AppSize.height(context) * 0.03,
                  // ),
                  const BrandingWidgetH(),
                ],
              ),
            ),
          ),
        );
      },
      loading: () {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      error: (error, stack) {
        logger.d("eroor $error");
        logger.d("stack $stack");
        return const Scaffold(
          body: Center(
            child: Text("The full report is not available at the moment."),
          ),
        );
      },
    );
  }
}

String getRequestPriorityText(RequestPriority? priority) {
  switch (priority) {
    case RequestPriority.URGENT:
      return "Urgent Consult";
    case RequestPriority.ROUTINE:
      return "Routine Checkup";
    case RequestPriority.ASAP:
      return "ASAP";
    case RequestPriority.STAT:
      return "STAT";
    default:
      return "";
  }
}

Color getRequestPriorityColor(RequestPriority priority) {
  switch (priority) {
    case RequestPriority.URGENT:
      return AppColor.red;
    case RequestPriority.ROUTINE:
      return AppColor.green;
    case RequestPriority.ASAP:
      return AppColor.orange;
    case RequestPriority.STAT:
      return AppColor.red;
    default:
      return AppColor.grey;
  }
}
