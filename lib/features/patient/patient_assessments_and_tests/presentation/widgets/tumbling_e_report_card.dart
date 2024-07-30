import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../main.dart';

class TumblingEReportCard extends StatelessWidget {
  const TumblingEReportCard({
    super.key,
    this.tumblingEData,
    this.observationDescription,
  });
  final List<ObservationBriefEntity>? tumblingEData;
  final String? observationDescription;
  @override
  Widget build(BuildContext context) {
    List<ObservationBriefEntity> shortDistance =
        tumblingEData!.where((element) => element.code == "Near").toList();
    List<ObservationBriefEntity> longDistance =
        tumblingEData!.where((element) => element.code == "Distance").toList();
    final loc = context.loc!;
    logger.d("shortDistance : $shortDistance \n longDistance : $longDistance");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: ExpansionTile(
        initiallyExpanded: true,
        title: Text(
          loc.reportTumblingTitle,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              observationDescription ?? "",
              style: applyRobotoFont(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.8),
              ),
            ),
          ),
          (tumblingEData == null || tumblingEData!.isEmpty)
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      loc.reportDataUnavailable,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Text(
                        "Short Distance Visual Acuity",
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(16),
                        itemCount: shortDistance.length,
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
                                    shortDistance[index].bodySite ?? "",
                                    style: applyRobotoFont(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    "${shortDistance[index].observationValue}",
                                    style: applyRobotoFont(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: getColorBasedOnObservationValue(
                                        shortDistance[index].observationValue,
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
                      //   const SizedBox(height: 10),
                      //   Text(
                      //     "Long Distance Visual Acuity",
                      //     style: applyRobotoFont(
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.w800,
                      //       color: Colors.black,
                      //     ),
                      //   ),
                      //   const SizedBox(height: 10),
                      //   GridView.builder(
                      //     shrinkWrap: true,
                      //     physics: const NeverScrollableScrollPhysics(),
                      //     padding: const EdgeInsets.all(16),
                      //     itemCount: longDistance.length,
                      //     gridDelegate:
                      //         const SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: 3,
                      //       childAspectRatio: 1.4,
                      //       crossAxisSpacing: 0,
                      //       mainAxisSpacing: 0,
                      //     ),
                      //     itemBuilder: (context, index) {
                      //       return Container(
                      //         padding: EdgeInsets.only(
                      //           left: AppSize.width(context) * 0.03,
                      //           top: AppSize.height(context) * 0.01,
                      //         ),
                      //         decoration: BoxDecoration(
                      //           border: Border.all(
                      //             color: AppColor.black.withOpacity(0.1),
                      //           ),
                      //         ),
                      //         child: Center(
                      //           child: Column(
                      //             crossAxisAlignment: CrossAxisAlignment.start,
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: [
                      //               Text(
                      //                 longDistance[index].bodySite ?? "",
                      //                 style: applyRobotoFont(
                      //                   fontSize: 12,
                      //                   fontWeight: FontWeight.w400,
                      //                 ),
                      //                 textAlign: TextAlign.left,
                      //               ),
                      //               Text(
                      //                 "${longDistance[index].observationValue}",
                      //                 style: applyRobotoFont(
                      //                   fontSize: 18,
                      //                   fontWeight: FontWeight.w500,
                      //                   color: getColorBasedOnObservationValue(
                      //                     longDistance[index].observationValue,
                      //                   ),
                      //                 ),
                      //                 textAlign: TextAlign.left,
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //       );
                      //     },
                      //   ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}

Color getColorBasedOnObservationValue(double? value) {
  if (value == null) {
    return AppColor.grey;
  }
  if (value >= 1) {
    return AppColor.red;
  } else if (value >= 0.5) {
    return AppColor.orange;
  } else {
    return AppColor.green;
  }
}
