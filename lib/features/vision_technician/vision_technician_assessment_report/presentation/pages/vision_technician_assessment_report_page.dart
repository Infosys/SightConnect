import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/enitity/assessment_and_triage_report_entity.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assesment_eye_image_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_recommeded_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessment_care_plan_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessment_overall_description_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessment_report_profile.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessment_report_remark_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessmnet_acuity_score_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianAssessmentReportPage extends ConsumerWidget {
  final VTPatientDto patientDetails;
  const VisionTechnicianAssessmentReportPage({
    required this.assessmentDetailsReport,
    super.key,
    required this.patientDetails,
  });
  final AssessmentAndTriageReportDetailedEntity assessmentDetailsReport;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    final appBarTitle =
        "${loc.vtAssessmentReport} ${assessmentDetailsReport.assessmentID}";
    logger.f(assessmentDetailsReport.carePlans?.first.toJson());

    return Scaffold(
      appBar: CustomAppbar(
        leadingWidth: 70,
        centerTitle: false,
        title: Text(appBarTitle),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.km),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AssessmentReportProfile(
                assessmentId: assessmentDetailsReport.assessmentID,
                patientDetails: patientDetails,
                assessmentDate: assessmentDetailsReport.reportDate,
              ),
              const SizedBox(height: AppSize.kl),
              AssessmentOverallDescriptionCard(
                triageResultDescription:
                    assessmentDetailsReport.triageResultDescription,
                cumulativeSeverity: assessmentDetailsReport.cumulativeSeverity,
              ),
              const SizedBox(height: AppSize.kl),
              AssessmentEyeImageCard(
                imageBriefEntity: assessmentDetailsReport.imageBriefEntity,
              ),
              const SizedBox(height: AppSize.kl),
              AssessmentAcuityScoreCard(
                visualAcuityBreifEntity:
                    assessmentDetailsReport.visualAcuityBreifEntity,
              ),
              const SizedBox(height: AppSize.km),
              AssessmentReportDetails(
                questionResponseBreifModel:
                    assessmentDetailsReport.questionResponseBriefEntity,
              ),
              const SizedBox(height: AppSize.kl),
              AssessementCarePlanCard(
                carePlan: assessmentDetailsReport.carePlans,
                title: "Care Plan",
              ),
              const SizedBox(height: AppSize.kl),
              AssessementCarePlanCard(
                showCarePlan: false,
                carePlan: assessmentDetailsReport.carePlans,
                title: "Recommended Center Type",
              ),
              const SizedBox(height: AppSize.kl),
              AssessmentReportRecommendedCenter(
                visionCenterId: assessmentDetailsReport.visionCenterId,
              ),
              const SizedBox(height: AppSize.kl),
              AssessmentReportRemarkCard(
                remark: assessmentDetailsReport.remarks,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
