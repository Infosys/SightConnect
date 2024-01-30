import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/report_assessment_questions.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/tumbling_e_report_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/helpline_card.dart';
import 'package:eye_care_for_all/features/patient/patient_home/presentation/widgets/nearby_vision_centers_list.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/eye_scan_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/enum/severity.dart';

class PatientAssessmentReportPage extends HookConsumerWidget {
  const PatientAssessmentReportPage({
    required this.assessmentDetailsReport,
    super.key,
  });
  final TriageReportDetailedEntity assessmentDetailsReport;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final loc = context.loc!;
    var showReport = useState(false);
    var scrollController = useScrollController();
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
            "PID - ${assessmentDetailsReport.patientId} - ${assessmentDetailsReport.patientName}"),
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: AppSize.kmheight),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.primary.withOpacity(0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Report ID: ${assessmentDetailsReport.diagnosticReportId}",
                  ),
                  Text(
                    "${assessmentDetailsReport.reportDate?.formateDate}",
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSize.kmheight),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: AppSize.kmpadding),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColor.white,
                border: Border.all(
                  color: _checkColorMapper(
                    assessmentDetailsReport.cumulativeSeverity,
                  ),
                  width: 1,
                ),
              ),
              child: Text(
                assessmentDetailsReport.triageResultDescription ?? "",
                style: applyRobotoFont(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: AppSize.kmheight),
            const NearbyVisionCentersList(),
            const SizedBox(height: AppSize.kmheight),
            const HelplineCard(helpLine: AppText.tollFreeNumber),
            const SizedBox(height: AppSize.kmheight),
            EyeScanTabView(
              eyeScanData: assessmentDetailsReport.imageBriefEntity,
            ),
            const SizedBox(height: AppSize.kmheight),
            TextButton(
              onPressed: () async {
                showReport.value = !showReport.value;
                await Future.delayed(const Duration(milliseconds: 300));
                if (!showReport.value) {
                  scrollController.animateTo(
                    scrollController.position.minScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                } else {
                  scrollController.animateTo(
                    scrollController.position.maxScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    showReport.value
                        ? "Hide Detailed Report"
                        : "Show Detailed Report",
                    style: applyRobotoFont(
                      color: AppColor.primary,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: AppSize.kmpadding),
                  Icon(
                    showReport.value
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 16,
                  ),
                ],
              ),
            ),
            AnimatedCrossFade(
              firstChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ReportAssessmentQuestions(
                    questionResponseBreifModel:
                        assessmentDetailsReport.questionResponseBriefEntity,
                  ),
                  const SizedBox(height: AppSize.kmheight),
                  TumblingEReportCard(
                    tumblingEData:
                        assessmentDetailsReport.visualAcuityBreifEntity,
                    observationDescription:
                        assessmentDetailsReport.observationResultDescription,
                  ),
                  const SizedBox(height: AppSize.klheight * 3),
                ],
              ),
              secondChild: const SizedBox(),
              crossFadeState: showReport.value
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 200),
            )
          ],
        ),
      ),
    );
  }

  Color _checkColorMapper(Severity? severity) {
    switch (severity) {
      case Severity.ABNORMAL:
        return AppColor.red;
      case Severity.LOW:
        return AppColor.green;
      case Severity.HIGH:
        return AppColor.orange;
      default:
        return AppColor.grey;
    }
  }
}
