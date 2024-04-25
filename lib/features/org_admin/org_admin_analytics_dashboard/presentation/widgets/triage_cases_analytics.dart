import 'package:eye_care_for_all/features/org_admin/org_admin_analytics_dashboard/presentation/widgets/graph_scheme_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TriageCasesAnalytics extends StatefulWidget {
  const TriageCasesAnalytics({super.key});

  @override
  State<TriageCasesAnalytics> createState() => _TriageCasesState();
}

class _TriageCasesState extends State<TriageCasesAnalytics> {
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
          flex: 2,
          child: SizedBox(
            height: 200,
            child: BarChart(
              BarChartData(
                barGroups: [
                  generateGroupData(1, 10, Colors.red),
                  generateGroupData(2, 18, Colors.green),
                  generateGroupData(3, 14, Colors.blue),
                  generateGroupData(4, 11, Colors.yellow),
                ],
                maxY: 25,
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
              ),
            ),
          ),
        ),
        const Expanded(
          child:
              GraphSchemeIndicator(isVertical: true, graphSchemeIndicatorData: [
            GraphSchemeIndicatorData(title: 'Triage Cases', color: Colors.red),
            GraphSchemeIndicatorData(
                title: 'Cases Closed', color: Colors.green),
            GraphSchemeIndicatorData(
                title: 'Cases Referred', color: Colors.blue),
            GraphSchemeIndicatorData(
                title: 'Cases Reopened', color: Colors.yellow),
          ]),
        )
      ],
    );
  }
}
