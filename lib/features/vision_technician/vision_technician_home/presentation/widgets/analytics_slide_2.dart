import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/age_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/analytics_slide_1.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/gender_pie_chart.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class AnalyticsSlide2 extends StatelessWidget {
  const AnalyticsSlide2({super.key});

  static Map<String, double> dataMapAge = {
    "10 - 29 Yrs": 10,
    "30 - 39 Yrs": 6,
    "40 - 59 Yrs": 10,
    "60+ Yrs": 6,
  };

  static Map<String, double> dataMale = {"Male": 15};
  static Map<String, double> dataFemale = {"Female": 35};
  static Map<String, double> dataOthers = {"Others": 12};
  static List<double> totalValues = [32, 51, 36];
  static List<List<Color>> genderColor = [
    [AppColor.primary],
    [AppColor.darkPink],
    [AppColor.darkOrange],
  ];

  static List<Color> colorList = [
    AppColor.lavanderBlue,
    AppColor.darkOrange,
    AppColor.blue,
    AppColor.darkYellow,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppSize.kmpadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: AppSize.width(context) * 0.45,
            padding: const EdgeInsets.all(AppSize.kmpadding),
            decoration: boxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "By Age",
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: PieChart(
                        dataMap: dataMapAge,
                        animationDuration: const Duration(milliseconds: 800),
                        chartRadius: 80,
                        colorList: colorList,
                        initialAngleInDegree: 270,
                        chartType: ChartType.ring,
                        ringStrokeWidth: 10,
                        centerWidget: Text(
                          "32",
                          style: applyFiraSansFont(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: AppColor.orange,
                          ),
                        ),
                        // centerText: "32",
                        legendOptions: const LegendOptions(
                          showLegends: false,
                        ),
                        chartValuesOptions: const ChartValuesOptions(
                          showChartValues: false,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Wrap(
                        runSpacing: AppSize.kswidth,
                        spacing: AppSize.kmwidth,
                        children: [
                          AgeCard(colorList[0], dataMapAge.keys.elementAt(0)),
                          AgeCard(colorList[1], dataMapAge.keys.elementAt(1)),
                          AgeCard(colorList[2], dataMapAge.keys.elementAt(2)),
                          AgeCard(colorList[3], dataMapAge.keys.elementAt(3)),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: AppSize.width(context) * 0.45,
            padding: const EdgeInsets.all(AppSize.kmpadding),
            decoration: boxDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "By Gender",
                  style: applyFiraSansFont(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GenderPieChart(
                      data: dataMale,
                      color: genderColor[0],
                      total: totalValues[0],
                    ),
                    GenderPieChart(
                      data: dataFemale,
                      color: genderColor[1],
                      total: totalValues[1],
                    ),
                    GenderPieChart(
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
