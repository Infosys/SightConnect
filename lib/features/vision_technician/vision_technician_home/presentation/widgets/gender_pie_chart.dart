import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class GenderPieChart extends StatelessWidget {
  const GenderPieChart(
      {super.key,
      required this.data,
      required this.color,
      required this.total});
  final Map<String, double> data;
  final List<Color> color;
  final double total;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PieChart(
          dataMap: data,
          animationDuration: const Duration(milliseconds: 800),
          chartRadius: 70,
          colorList: color,
          initialAngleInDegree: 270,
          chartType: ChartType.ring,
          baseChartColor: AppColor.lightGrey,
          ringStrokeWidth: 10,
          centerWidget: Text(
            data.values.elementAt(0).toInt().toString(),
            style: applyFiraSansFont(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: color[0],
            ),
          ),
          // centerText: "32",
          legendOptions: const LegendOptions(
            showLegends: false,
          ),
          chartValuesOptions: const ChartValuesOptions(
            showChartValues: false,
          ),
          totalValue: total,
        ),
        Text(
          data.keys.elementAt(0),
          style: applyRobotoFont(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: color[0],
          ),
        ),
      ],
    );
  }
}
