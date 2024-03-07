import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/core/enitity/assessment_and_triage_report_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_recommeded_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessment_report_profile.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/pages/app_photo_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_card.dart';
import 'package:eye_care_for_all/shared/widgets/app_network_image.dart';
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
    logger.d("assessmentDetailsReport:${assessmentDetailsReport.toJson()}");
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
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AssessmentReportProfile(
                assessmentId: assessmentDetailsReport.assessmentID,
                patientDetails: patientDetails,
                assessmentDate: assessmentDetailsReport.reportDate,
              ),
              const SizedBox(height: AppSize.klheight),
              AppCard(
                padding: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Eye Images",
                      style: applyFiraSansFont(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount:
                          assessmentDetailsReport.imageBriefEntity?.length,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: Responsive.isMobile(context) ? 2 : 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: Responsive.isMobile(context) ? 1 : 1,
                      ),
                      itemBuilder: (context, index) {
                        final e =
                            assessmentDetailsReport.imageBriefEntity?[index];

                        if (e == null) {
                          return const SizedBox();
                        }
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => AppPhotoPage(
                                  image: e.imageUrl,
                                ),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.white,
                              boxShadow: applyLightShadow(),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(AppSize.kmradius - 5),
                              ),
                            ),
                            child: AppNetworkImage(
                              shapeCircle: false,
                              imageUrl: e.imageUrl,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.klheight),
              AssessmentReportDetails(
                questionResponseBreifModel:
                    assessmentDetailsReport.questionResponseBriefEntity,
              ),
              const SizedBox(height: AppSize.klheight),
              AppCard(
                padding: 16,
                enableBorder: true,
                color: _recommendationColor(
                  assessmentDetailsReport.cumulativeSeverity,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Recommendation",
                      style: applyFiraSansFont(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    Text(
                      assessmentDetailsReport.triageResultDescription ?? "",
                      style: applyRobotoFont(
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: AppSize.klheight),
              AssessmentReportRecommendedCenter(
                visionCenterId: assessmentDetailsReport.visionCenterId,
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
                      loc.vtRemarks,
                      style: applyFiraSansFont(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: AppSize.kmheight),
                    Text(
                      assessmentDetailsReport.remarks ?? "No Remarks",
                      style: applyRobotoFont(
                        fontSize: 16,
                      ),
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

  _recommendationColor(Severity? severity) {
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
