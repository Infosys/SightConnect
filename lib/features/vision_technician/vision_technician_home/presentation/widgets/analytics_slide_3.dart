import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/analytics_slide_1.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/color_dot.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/symptoms_card.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class AnalyticsSlide3 extends StatelessWidget {
  const AnalyticsSlide3({super.key});
  static Map<String, double> data = {
    "Refractive": 60,
    "Cataract": 32,
    "Glaucoma": 23,
    "Conjunctivitis": 22,
    "Diabetic\nRetinopathy": 77,
    "Blepharitis": 10,
    "Keratitis": 32,
  };

  static int total = 224;

  static List<Color> colorList = [
    AppColor.darkBlue,
    AppColor.darkOrange,
    AppColor.blue,
    AppColor.darkYellow,
    AppColor.darkBlue.withOpacity(0.8),
    AppColor.purple,
    AppColor.green,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppSize.kmpadding,
      ),
      child: Container(
        width: AppSize.width(context) * 0.9,
        padding: const EdgeInsets.all(AppSize.kmpadding),
        decoration: boxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Symptoms",
              style: applyFiraSansFont(
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: PieChart(
                    dataMap: data,
                    animationDuration: const Duration(milliseconds: 800),
                    chartRadius: 90,
                    colorList: colorList,
                    initialAngleInDegree: 270,
                    chartType: ChartType.ring,
                    ringStrokeWidth: 10,
                    centerWidget: Text(
                      total.toInt().toString(),
                      style: applyFiraSansFont(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: AppColor.darkBlue,
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
                const SizedBox(width: AppSize.klwidth),
                Expanded(
                  child: Wrap(
                    runSpacing: AppSize.klwidth,
                    spacing: AppSize.kmwidth * 2,
                    children: [
                      SymptomsCard(
                        color: colorList[0],
                        value: data.values.elementAt(0),
                        symptom: data.keys.elementAt(0),
                      ),
                      SymptomsCard(
                        color: colorList[1],
                        value: data.values.elementAt(1),
                        symptom: data.keys.elementAt(1),
                      ),
                      SymptomsCard(
                        color: colorList[2],
                        value: data.values.elementAt(2),
                        symptom: data.keys.elementAt(2),
                      ),
                      SymptomsCard(
                        color: colorList[3],
                        value: data.values.elementAt(3),
                        symptom: data.keys.elementAt(3),
                      ),
                      SymptomsCard(
                        color: colorList[4],
                        value: data.values.elementAt(4),
                        symptom: data.keys.elementAt(4),
                      ),
                      SymptomsCard(
                        color: colorList[5],
                        value: data.values.elementAt(5),
                        symptom: data.keys.elementAt(5),
                      ),
                      SymptomsCard(
                        color: colorList[6],
                        value: data.values.elementAt(6),
                        symptom: data.keys.elementAt(6),
                      ),
                    ],
                  ),
                )

                // const Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         ColorDot(color: Colors.black),
                //         Text("2"),
                //         SizedBox(width: AppSize.kmwidth),
                //         ColorDot(color: Colors.black),
                //         Text("2"),
                //       ],
                //     ),
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         ColorDot(color: Colors.black),
                //         Text("2"),
                //         SizedBox(width: AppSize.kmwidth),
                //         ColorDot(color: Colors.black),
                //         Text("2"),
                //       ],
                //     )
                //   ],
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
