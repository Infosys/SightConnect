import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_icon.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_report/presentation/widgets/vision_guardian_report_eye_test_values.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_report/presentation/widgets/vision_guardian_report_questions.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_report/presentation/widgets/vision_guardian_report_recommended_center.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:eye_care_for_all/shared/widgets/eye_scan_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VisionGuardianReportPage extends StatelessWidget {
  const VisionGuardianReportPage(
      {super.key, required this.assessmentDetailsReport});
  final TriageReportDetailedEntity assessmentDetailsReport;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Scaffold(
      appBar: CustomAppbar(
        leadingIcon: IconButton(
          onPressed: () {
            /*    ref.read(resetProvider).reset(); */
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColor.black.withOpacity(0.7),
          ),
        ),
        centerTitle: false,
        title: Text(
          "Assessment Results",
          style: applyFiraSansFont(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(
                    AppSize.ksradius,
                  ),
                ),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/images/optometritian_report_top_bg.svg",
                      fit: BoxFit.fitWidth,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppSize.kspadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "100",
                                style: applyFiraSansFont(
                                    fontSize: 16,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "AID 1",
                                style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "education",
                                style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(
                                "employment",
                                style: applyRobotoFont(
                                    fontSize: 14,
                                    color: AppColor.white,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.ksheight,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.white,
                  border: Border.all(color: AppColor.yellow),
                  borderRadius: BorderRadius.circular(
                    AppSize.ksradius,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(AppSize.kspadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Looks like you have difficulty in reading. Consult an eye specialist within 7 days.",
                        style: applyFiraSansFont(
                            fontSize: 16,
                            color: AppColor.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              const VisionGuardianReportRecommendedCenter(),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              ListTile(
                tileColor: AppColor.white,
                onTap: () async {},
                leading: SvgPicture.asset(
                  AppIcon.tollFree,
                ),
                trailing: SvgPicture.asset(
                  AppIcon.call,
                ),
                title: Text(loc.tollFreeNumber),
                subtitle: const Text(
                  "-",
                  style: TextStyle(
                    color: AppColor.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              VisionGuardianReportEyeTestValues(
                tumblingEData: assessmentDetailsReport.visualAcuityBreifEntity,
                observationDescription:
                    assessmentDetailsReport.observationResultDescription,
              ),
              const SizedBox(
                height: AppSize.kmheight,
              ),
              VisionGuardianReportQuestions(
                questionResponseBreifModel:
                    assessmentDetailsReport.questionResponseBriefEntity,
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
