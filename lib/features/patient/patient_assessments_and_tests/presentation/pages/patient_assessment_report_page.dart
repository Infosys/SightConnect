import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/assessment_recommendation.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/report_assessment_questions.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/report_page_header.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/tumbling_e_report_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/eye_scan_tab_view.dart';
import 'package:flutter/material.dart';

import '../../data/fake_data_source.dart';

class PatientAssessmentReportPage extends StatelessWidget {
  const PatientAssessmentReportPage({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    var currentData = data[index];
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
                  color: currentData['checkupType'] == "Routine Checkup"
                      ? AppColor.green
                      : AppColor.orange,
                ),
                child: Text(
                  currentData['checkupType'],
                  style: applyRobotoFont(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: AppColor.white),
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ReportPageHeader(
            index: index,
          ),
          const ReportAssessmentQuestions(),
          const TumblingEReportCard(),
          const EyeScanTabView(),
          const AssessmentRecommendation(),
          SizedBox(
            height: AppSize.height(context) * 0.03,
          ),
          const BrandingWidgetH(),
        ]),
      )),
    );
  }
}
