import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VisionGuardianReportEyeTestValues extends StatelessWidget {
  const VisionGuardianReportEyeTestValues({super.key, this.tumblingEData, this.observationDescription});
  final List<ObservationBriefEntity>? tumblingEData;
  final String? observationDescription;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width(context),
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: applyLightShadow(),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.kmradius - 5),
        ),
      ),
      padding: const EdgeInsets.all(AppSize.kmpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Eye Test Values",
            style: applyFiraSansFont(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: AppSize.ksheight,),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.4,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                  left: AppSize.width(context) * 0.03,
                  top: AppSize.height(context) * 0.01,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColor.black.withOpacity(0.1),
                  ),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " tumblingEData",
                        style: applyRobotoFont(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "10",
                        style: applyRobotoFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          /*  color: getColorBasedOnObservationValue(
                                        tumblingEData![index].observationValue,
                                      ), */
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
