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

import '../../domain/enum/severity.dart';

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
              // GridView.builder(
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   padding: EdgeInsets.zero,
              //   itemCount: 3,
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     crossAxisCount: 3,
              //     childAspectRatio: 1,
              //     crossAxisSpacing: 10,
              //     mainAxisSpacing: 10,
              //   ),
              //   itemBuilder: (context, index) {
              //     var data = assessmentDetailsReport;
              //     return Container(
              //       padding: EdgeInsets.only(
              //         left: AppSize.width(context) * 0.03,
              //         top: AppSize.height(context) * 0.01,
              //       ),
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(8),
              //         color: index == 0
              //             ? backColorMapper(data.questionResponseSeverity??Severity.LOW)
              //             : index == 1
              //                 ? backColorMapper(data.observationSeverity??Severity.LOW)
              //                 : backColorMapper(data.mediaSeverity??Severity.LOW),
              //       ),
              //       child: Column(
              //         mainAxisSize: MainAxisSize.min,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Container(
              //             width: 20,
              //             height: 20,
              //             decoration: BoxDecoration(
              //               shape: BoxShape.circle,
              //               color: index == 0
              //                   ? checkColorMapper(
              //                       data.questionResponseSeverity??Severity.LOW)
              //                   : index == 1
              //                       ? checkColorMapper(
              //                           data.observationSeverity??Severity.LOW)
              //                       : checkColorMapper(data.mediaSeverity??Severity.LOW),
              //             ),
              //             child: const Center(
              //               child: Icon(
              //                 Icons.check,
              //                 color: Colors.white,
              //                 size: 15,
              //               ),
              //             ),
              //           ),
              //           const SizedBox(
              //             height: 8,
              //           ),
              //           Text(
              //             index == 0
              //                 ? loc.assessmentResultCardAssessmentQuestions
              //                 : index == 1
              //                     ? loc.assessmentResultCardAcuityTest
              //                     : loc.assessmentResultCardEyeScan,
              //             style: applyRobotoFont(
              //               fontSize: 14,
              //               fontWeight: FontWeight.w600,
              //             ),
              //           ),
              //           const SizedBox(
              //             height: 8,
              //           ),
              //           Text(
              //             loc.eyeAssessmentCompleted,
              //             style: applyRobotoFont(
              //               fontSize: 12,
              //               fontWeight: FontWeight.w400,
              //             ),
              //           )
              //         ],
              //       ),
              //     );
              //   },
              // ),

              const SizedBox(
                height: AppSize.kmheight,
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

  Color backColorMapper(Severity severity) {
    switch (severity) {
      case Severity.ABNORMAL:
        return AppColor.lightRed.withOpacity(0.4);
      case Severity.LOW:
        return AppColor.lightGreen.withOpacity(0.4);
      case Severity.HIGH:
        return AppColor.lightOrange.withOpacity(0.4);
      default:
        return AppColor.grey.withOpacity(0.4);
    }
  }

  Color checkColorMapper(Severity severity) {
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
