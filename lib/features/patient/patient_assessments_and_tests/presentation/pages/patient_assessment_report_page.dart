import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/assessment_overall_result_card.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/report_assessment_questions.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/report_page_header.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/tumbling_e_report_card.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
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
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        title: Row(
          children: [
            Text(loc.eyeAssessmentTitle),
            const Spacer(),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.width(context) * 0.01,
              ),
              decoration: BoxDecoration(
                color: getRequestSeverityColor(
                    assessmentDetailsReport.cumulativeSeverity),
              ),
              child: Text(
                getSeverityText(
                    assessmentDetailsReport.cumulativeSeverity, context.loc!),
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
