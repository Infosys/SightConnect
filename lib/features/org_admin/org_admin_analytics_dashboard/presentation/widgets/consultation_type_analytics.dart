import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/org_admin/org_admin_analytics_dashboard/presentation/widgets/graph_scheme_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ConsultationTypeAnalytics extends StatelessWidget {
  const ConsultationTypeAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppSize.km,
        ),
        LineChartWidget(),
        SizedBox(
          height: AppSize.km,
        ),
        GraphSchemeIndicator(graphSchemeIndicatorData: [
          GraphSchemeIndicatorData(
            title: 'IVR Calls',
            color: AppColor.green,
          ),
          GraphSchemeIndicatorData(
            title: 'In-clinic',
            color: AppColor.yellow,
          ),
          GraphSchemeIndicatorData(
            title: 'Telephonic',
            color: AppColor.primary,
          ),
        ])
      ],
    );
  }
}

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSize.kl),
      child: AspectRatio(
        aspectRatio: 2.5,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipColor: (touchedSpot) => Colors.black,
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((LineBarSpot touchedSpot) {
                        final textStyle = TextStyle(
                          color: touchedSpot.bar.gradient?.colors[0] ??
                              touchedSpot.bar.color,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        );
                        return LineTooltipItem(
                          '${touchedSpot.x}, ${touchedSpot.y.toStringAsFixed(2)}',
                          textStyle,
                        );
                      }).toList();
                    },
                  ),
                  handleBuiltInTouches: true,
                  getTouchLineStart: (data, index) => 0,
                ),
                lineBarsData: [
                  LineChartBarData(
                    color: AppColor.primary,
                    spots: [
                      const FlSpot(0, 2),
                      const FlSpot(600, 2),
                      const FlSpot(1000, 2),
                      const FlSpot(2000, 2),
                      const FlSpot(2500, 2),
                      const FlSpot(3000, 2),
                      const FlSpot(3600, 2),
                    ],
                    isCurved: true,
                    barWidth: 25,
                    belowBarData: BarAreaData(
                      show: false,
                    ),
                    dotData: const FlDotData(show: false),
                  ),
                  LineChartBarData(
                    color: AppColor.green,
                    spots: [
                      const FlSpot(0, 1),
                      const FlSpot(1000, 1),
                      const FlSpot(2000, 1),
                      const FlSpot(3000, 1),
                      const FlSpot(6000, 1),
                    ],
                    isCurved: true,
                    barWidth: 25,
                    belowBarData: BarAreaData(
                      show: false,
                    ),
                    dotData: const FlDotData(show: false),
                  ),
                  LineChartBarData(
                    color: AppColor.yellow,
                    spots: [
                      const FlSpot(0, 3),
                      const FlSpot(1000, 3),
                      const FlSpot(2000, 3),
                      const FlSpot(3000, 3),
                      const FlSpot(5000, 3),
                    ],
                    isCurved: true,
                    barWidth: 25,
                    belowBarData: BarAreaData(
                      show: false,
                    ),
                    dotData: const FlDotData(show: false),
                  ),
                ],
                minY: 0,
                maxY: 3,
                titlesData: const FlTitlesData(
                  leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: true, interval: 1)),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                gridData: const FlGridData(
                  show: true,
                  drawVerticalLine: true,
                  drawHorizontalLine: false,
                  verticalInterval: 1000,
                ),
                borderData: FlBorderData(show: false),
              ),
            );
          },
        ),
      ),
    );
  }
}
