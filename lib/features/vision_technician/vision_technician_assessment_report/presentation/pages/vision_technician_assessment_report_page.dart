import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_ivr_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_recommeded_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessment_report_profile.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../main.dart';
import '../../../../common_features/triage/domain/models/triage_response_model.dart';
import '../../../../patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import '../../../../patient/patient_assessments_and_tests/presentation/provider/patient_assessments_and_test_provider.dart';
import '../../../vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
import '../../../vision_technician_preliminary_assessment/presentation/providers/vision_technician_preliminary_assessment_provider.dart';

class VisionTechnicianAssessmentReportPage extends ConsumerWidget {
  const VisionTechnicianAssessmentReportPage(
      {super.key, required this.triageResponseModel});

  final TriageResponseModel? triageResponseModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(getAssementDetailsReport(1)).when(
      data: (TriageReportDetailedEntity assessmentDetailsReport) {
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
        logger.d("tracee $stack");
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("The report is not available at the moment"),
                TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text("Go Back"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
