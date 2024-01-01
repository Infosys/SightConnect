import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/assessment_overall_result_card.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/report_assessment_questions.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/report_page_header.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/tumbling_e_report_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/eye_scan_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PatientAssessmentReportPage extends ConsumerWidget {
  const PatientAssessmentReportPage({
    required this.assessmentDetailsReport,
    super.key,
  });
  final TriageReportDetailedEntity assessmentDetailsReport;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              decoration: BoxDecoration(
                  color: _getRequestSeverityColor(
                      assessmentDetailsReport.cumulativeSeverity)),
              child: Text(
                _getSeverityText(assessmentDetailsReport.cumulativeSeverity),
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
                tumblingEData: assessmentDetailsReport.visualAcuityBreifEntity,
                observationDescription:
                    assessmentDetailsReport.observationResultDescription,
              ),
              EyeScanTabView(
                eyeScanData: assessmentDetailsReport.imageBriefEntity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String _getSeverityText(Severity? severity) {
  switch (severity) {
    case Severity.ABNORMAL:
      return "Urgent Consult";
    case Severity.LOW:
      return "Routine Checkup";
    case Severity.HIGH:
      return "Early Checkup";
    default:
      return "";
  }
}

Color _getRequestSeverityColor(Severity? severity) {
  switch (severity) {
    case Severity.ABNORMAL:
      return AppColor.red;
    case Severity.HIGH:
      return AppColor.orange;
    case Severity.LOW:
      return AppColor.green;
   
    default:
      return AppColor.grey;
  }
}
