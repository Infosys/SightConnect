import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/assessment_recommendation.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/presentation/widgets/eye_scan_tab_view.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/widgets/optometritian_report_questionnaire_card.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/widgets/optometritian_tumbling_report_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/branding_widget_h.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class OptometritianReportPage extends StatelessWidget {
  const OptometritianReportPage(
      {required this.id,
      required this.education,
      required this.employment,
      super.key});

  final String id;
  final String education;
  final String employment;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        leadingIcon: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColor.black.withOpacity(0.7),
          ),
        ),
        centerTitle: false,
        title: Text(
          "in-app assessment Report",
          style: applyFiraSansFont(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: const EdgeInsets.all(AppSize.kspadding),
            margin: const EdgeInsets.only(
              bottom: AppSize.kspadding + 5,
            ),
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.circular(
                AppSize.ksradius,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      id,
                      style: applyFiraSansFont(
                          fontSize: 16,
                          color: AppColor.white,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "AID ${id}1",
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
                      education,
                      style: applyRobotoFont(
                          fontSize: 14,
                          color: AppColor.white,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      employment,
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
          const OptometritianReportQuestionnaireCard(),
          const OptometritianTumblingReportCard(),
          const EyeScanTabView(),
          SizedBox(
            height: AppSize.height(context) * 0.03,
          ),
          const BrandingWidgetH(),
        ]),
      )),
    );
  }
}
