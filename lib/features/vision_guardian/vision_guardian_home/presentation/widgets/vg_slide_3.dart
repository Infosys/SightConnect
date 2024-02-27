import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_slide_1.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_home/presentation/widgets/vg_symptom_chip.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class VGSlide3 extends StatelessWidget {
  const VGSlide3({super.key, required this.values});

  final Map<String, dynamic> values;

  static List<Color> colorList = [
    AppColor.darkBlue,
    AppColor.darkOrange,
    AppColor.blue,
    AppColor.darkYellow,
    AppColor.purple,
    AppColor.green,
  ];

  @override
  Widget build(BuildContext context) {
    int total = values["refractive"] +
        values["cataract"] +
        values["glaucoma"] +
        values["keratitis"] +
        values["blepharitis"] +
        values["conjunctivitis"];

    final loc = context.loc!;

    Map<String, double> data = {
      loc.vgRefractive: double.parse(values["refractive"].toString()),
      loc.vgCataract: double.parse(values["cataract"].toString()),
      loc.vgGlaucoma: double.parse(values["glaucoma"].toString()),
      loc.vgKeratitis: double.parse(values["keratitis"].toString()),
      loc.vgBlepharitis: double.parse(values["blepharitis"].toString()),
      loc.vgConjunctivitis: double.parse(values["conjunctivitis"].toString()),
    };

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppSize.kspadding,
      ),
      child: Container(
        width: AppSize.width(context) * 0.9,
        padding: const EdgeInsets.all(AppSize.kspadding),
        decoration: boxDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              loc.vgSymptoms,
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
                    chartRadius: 45,
                    colorList: colorList,
                    initialAngleInDegree: 270,
                    chartType: ChartType.ring,
                    ringStrokeWidth: 6,
                    centerWidget: Text(
                      total.toInt().toString(),
                      style: applyFiraSansFont(
                        fontSize: 16,
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
                    runSpacing: AppSize.kswidth / 4,
                    spacing: AppSize.kswidth,
                    children: [
                      VGSymptonChip(
                        color: colorList[0],
                        value: data.values.elementAt(0),
                        symptom: data.keys.elementAt(0),
                      ),
                      VGSymptonChip(
                        color: colorList[1],
                        value: data.values.elementAt(1),
                        symptom: data.keys.elementAt(1),
                      ),
                      VGSymptonChip(
                        color: colorList[2],
                        value: data.values.elementAt(2),
                        symptom: data.keys.elementAt(2),
                      ),
                      VGSymptonChip(
                        color: colorList[3],
                        value: data.values.elementAt(3),
                        symptom: data.keys.elementAt(3),
                      ),
                      VGSymptonChip(
                        color: colorList[4],
                        value: data.values.elementAt(4),
                        symptom: data.keys.elementAt(4),
                      ),
                      VGSymptonChip(
                        color: colorList[5],
                        value: data.values.elementAt(5),
                        symptom: data.keys.elementAt(5),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
