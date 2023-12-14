import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_details.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_ivr_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessement_report_recommeded_center.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_report/presentation/widgets/assessment_report_profile.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianAssessmentReportPage extends StatelessWidget {
  const VisionTechnicianAssessmentReportPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              const SizedBox(height: AppSize.klheight),
              const AssessmentReportIvrCard(),
              const SizedBox(height: AppSize.klheight),
              const AssessmentReportDetails(),
              const SizedBox(height: AppSize.klheight),
              Consumer(
                builder: (context, ref, child) {
                  return Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppSize.kmradius - 5),
                        )),
                    padding: const EdgeInsets.all(AppSize.klpadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Recommendation",
                            style: applyFiraSansFont(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                        const SizedBox(height: AppSize.kmheight),
                        Text(
                          ref
                              .watch(preliminaryAssessmentHelperProvider)
                              .recommendationController
                              .text,
                          style: applyRobotoFont(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: AppSize.klheight),
              const AssessmentReportRecommendedCenter(),
              const SizedBox(height: AppSize.klheight),
              Consumer(
                builder: (context, ref, child) {
                  return Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(AppSize.kmradius - 5),
                        )),
                    padding: const EdgeInsets.all(AppSize.klpadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Remarks",
                            style: applyFiraSansFont(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            )),
                        const SizedBox(height: AppSize.kmheight),
                        Text(
                          ref
                              .watch(preliminaryAssessmentHelperProvider)
                              .remarksController
                              .text,
                          style: applyRobotoFont(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
