import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TumblingEReportCard extends StatelessWidget {
  const TumblingEReportCard({
    super.key,
    required this.tumblingEData,
     this.observationDescription,
  });
  final List<ObservationBriefEntity> tumblingEData;
  final String ? observationDescription;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Acuity Test - Tumbling E",
            style: applyRobotoFont(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            observationDescription??"NA",
            style: applyRobotoFont(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black.withOpacity(0.8),
            ),
          ),
          const SizedBox(height: 10),
          tumblingEData.isEmpty
              ? const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      "No Data Available",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14.0,
                    vertical: 5,
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
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
                                tumblingEData[index].bodySite,
                                style: applyRobotoFont(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                "${tumblingEData[index].observationValue}",
                                style: applyRobotoFont(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: getColorBasedOnObservationValue(
                                    tumblingEData[index].observationValue,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}

Color getColorBasedOnObservationValue(double value) {
  if (value < 1) {
    return AppColor.orange;
  } else if (value == 1) {
    return AppColor.green;
  } else if (value > 1) {
    return AppColor.red;
  } else {
    return AppColor.red;
  }
}
