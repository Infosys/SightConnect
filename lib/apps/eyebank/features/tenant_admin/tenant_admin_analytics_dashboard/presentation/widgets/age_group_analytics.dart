import 'package:eye_care_for_all/apps/eyebank/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/graph_scheme_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:superapp_scanner/constants/app_size.dart';

class AgeGroupAnalytics extends StatefulWidget {
  const AgeGroupAnalytics({super.key});

  @override
  State<AgeGroupAnalytics> createState() => _AgeGroupState();
}

class _AgeGroupState extends State<AgeGroupAnalytics> {
  late int showingTooltip;

  @override
  void initState() {
    showingTooltip = -1;
    super.initState();
  }

  BarChartGroupData generateGroupData(int x, int y, Color color) {
    return BarChartGroupData(
      x: x,
      showingTooltipIndicators: showingTooltip == x ? [0] : [],
      barRods: [
        BarChartRodData(
          toY: y.toDouble(),
          color: color,
          width: 20,
          borderRadius: const BorderRadius.all(
            Radius.circular(0),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: SizedBox(
            height: 200,
            child: BarChart(
              BarChartData(
                barGroups: [
                  generateGroupData(1, 10000, Colors.red),
                  generateGroupData(2, 18000, Colors.green),
                  generateGroupData(3, 10000, Colors.blue),
                  generateGroupData(4, 15000, Colors.yellow),
                  generateGroupData(5, 5000, Colors.orange),
                ],
                maxY: 20000,
                barTouchData: BarTouchData(
                    enabled: true,
                    handleBuiltInTouches: false,
                    touchCallback: (event, response) {
                      if (response != null &&
                          response.spot != null &&
                          event is FlTapUpEvent) {
                        setState(() {
                          final x = response.spot!.touchedBarGroup.x;
                          final isShowing = showingTooltip == x;
                          if (isShowing) {
                            showingTooltip = -1;
                          } else {
                            showingTooltip = x;
                          }
                        });
                      }
                    },
                    mouseCursorResolver: (event, response) {
                      return response == null || response.spot == null
                          ? MouseCursor.defer
                          : SystemMouseCursors.click;
                    }),
                gridData: const FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  drawHorizontalLine: true,
                  verticalInterval: 5,
                ),
                titlesData: const FlTitlesData(
                  leftTitles: AxisTitles(
                      sideTitles:
                          SideTitles(showTitles: false, interval: 10000)),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: true),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: AppSize.ks,
        ),
        const Expanded(
          child:
              GraphSchemeIndicator(isVertical: true, graphSchemeIndicatorData: [
            GraphSchemeIndicatorData(title: '<10 Yrs', color: Colors.red),
            GraphSchemeIndicatorData(title: '10 - 29Yrs', color: Colors.green),
            GraphSchemeIndicatorData(title: '30 - 39 Yrs', color: Colors.blue),
            GraphSchemeIndicatorData(
                title: '40 - 59 Yrs', color: Colors.yellow),
            GraphSchemeIndicatorData(title: '60+ Yrs', color: Colors.orange),
          ]),
        )
      ],
    );
  }
}
