import 'dart:math';

import 'package:eye_care_for_all/apps/eyebank/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/graph_scheme_indicator.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CasesClosedAnalytics extends StatelessWidget {
  const CasesClosedAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(flex: 3, child: LineChartWidget()),
        Expanded(
          child:
              GraphSchemeIndicator(isVertical: true, graphSchemeIndicatorData: [
            GraphSchemeIndicatorData(
              title: 'Closed',
              color: AppColor.primary,
            ),
            GraphSchemeIndicatorData(
              title: 'Avg.days',
              color: AppColor.green,
            ),
          ]),
        )
      ],
    );
  }
}

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  Widget bottomTitleWidgets(double value, TitleMeta meta, double chartWidth) {
    if (value % 1 != 0) {
      return Container();
    }
    final style = TextStyle(
      color: AppColor.primary,
      fontWeight: FontWeight.bold,
      fontSize: min(18, 18 * chartWidth / 300),
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: Text(meta.formattedValue, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSize.kl),
      child: SizedBox(
        height: 200,
        child: LineChart(
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
                  const FlSpot(0, 0),
                  const FlSpot(600, 7),
                  const FlSpot(1000, 10),
                  const FlSpot(2000, 20),
                  const FlSpot(2500, 12),
                  const FlSpot(3000, 10),
                  const FlSpot(3600, 18),
                  const FlSpot(6000, 30),
                ],
                isCurved: true,
                barWidth: 2,
                belowBarData: BarAreaData(
                  show: false,
                ),
                dotData: const FlDotData(show: false),
              ),
              LineChartBarData(
                color: AppColor.green,
                spots: [
                  const FlSpot(0, 10),
                  const FlSpot(1000, 10),
                  const FlSpot(2000, 10),
                  const FlSpot(3000, 10),
                  const FlSpot(6000, 10),
                ],
                isCurved: true,
                barWidth: 2,
                belowBarData: BarAreaData(
                  show: false,
                ),
                dotData: const FlDotData(show: false),
              ),
            ],
            minY: 0,
            maxY: 30,
            titlesData: const FlTitlesData(
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            gridData: FlGridData(
              show: true,
              drawHorizontalLine: true,
              drawVerticalLine: true,
              horizontalInterval: 1.5,
              verticalInterval: 5,
              checkToShowHorizontalLine: (value) {
                return value.toInt() == 0;
              },
              getDrawingHorizontalLine: (_) => FlLine(
                color: AppColor.primary.withOpacity(1),
                dashArray: [8, 2],
                strokeWidth: 0.8,
              ),
              getDrawingVerticalLine: (_) => FlLine(
                color: AppColor.primary.withOpacity(1),
                dashArray: [8, 2],
                strokeWidth: 0.8,
              ),
              checkToShowVerticalLine: (value) {
                return value.toInt() == 0;
              },
            ),
            borderData: FlBorderData(show: false),
          ),
        ),
      ),
    );
  }
}
