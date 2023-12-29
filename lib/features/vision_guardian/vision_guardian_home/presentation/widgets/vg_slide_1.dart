import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_gender_pie_chart.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VGSlide1 extends StatelessWidget {
  const VGSlide1({super.key});

  static Map<String, double> dataMale = {"Male": 15};
  static Map<String, double> dataFemale = {"Female": 35};
  static Map<String, double> dataOthers = {"Others": 12};
  static List<double> totalValues = [32, 51, 36];
  static List<List<Color>> genderColor = [
    [AppColor.primary],
    [AppColor.darkPink],
    [AppColor.darkOrange],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppSize.kspadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: AppSize.width(context) * 0.45,
            padding: const EdgeInsets.all(AppSize.kspadding),
            decoration: boxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Eye Assessments",
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "50",
                          style: applyFiraSansFont(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          "Total",
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "30",
                          style: applyFiraSansFont(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          "Camps",
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "20",
                          style: applyFiraSansFont(
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                          ),
                        ),
                        Text(
                          "Door to Door",
                          softWrap: true,
                          style: applyRobotoFont(
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: AppColor.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: AppSize.width(context) * 0.45,
            padding: const EdgeInsets.all(AppSize.kspadding),
            decoration: boxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "By Gender",
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VGGenderPieChart(
                      data: dataMale,
                      color: genderColor[0],
                      total: totalValues[0],
                    ),
                    VGGenderPieChart(
                      data: dataFemale,
                      color: genderColor[1],
                      total: totalValues[1],
                    ),
                    VGGenderPieChart(
                      data: dataOthers,
                      color: genderColor[2],
                      total: totalValues[2],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final boxDecoration = BoxDecoration(
  color: AppColor.white,
  borderRadius: BorderRadius.circular(AppSize.kmradius),
  boxShadow: applyLightShadow(),
);
