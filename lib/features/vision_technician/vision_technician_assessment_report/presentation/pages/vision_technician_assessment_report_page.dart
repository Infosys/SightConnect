import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_recommeded_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessment_report_profile.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';

class VisionTechnicianAssessmentReportPage extends ConsumerWidget {
  const VisionTechnicianAssessmentReportPage({
    required this.assessmentDetailsReport,
    super.key,
  });
  final TriageReportDetailedEntity assessmentDetailsReport;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColor.scaffold,
      appBar: const CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text('Assessment Report - EA 010101'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.kmpadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const AssessmentReportProfile(),
              // const SizedBox(height: AppSize.klheight),
              // const AssessmentReportIvrCard(),
              const SizedBox(height: AppSize.klheight),
              AssessmentReportDetails(
                questionResponseBreifModel:
                    assessmentDetailsReport.questionResponseBriefEntity,
              ),
              const SizedBox(height: AppSize.klheight),
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
                      "Recommendation",
                      style: applyFiraSansFont(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    Text(
                      "Patient has sticky discharge in eyes and needs to be referred to a specialist who deals with corneal disorders.",
                      style: applyRobotoFont(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              const SizedBox(height: AppSize.klheight),
              const AssessmentReportRecommendedCenter(),
              const SizedBox(height: AppSize.klheight),
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
                      "Remarks",
                      style: applyFiraSansFont(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    Text(
                      "Patient has sticky discharge in eyes and has agreed to meet up a specialist from the recommended vision center today.",
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
