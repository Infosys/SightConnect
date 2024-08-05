import 'package:eye_care_for_all/apps/eyebank/common/home/presentation/widget/add_case_button.dart';
import 'package:eye_care_for_all/apps/eyebank/common/home/presentation/widget/eb_analytics_card.dart';
import 'package:eye_care_for_all/apps/eyebank/common/home/presentation/widget/eb_cases_closed_analytics.dart';
import 'package:eye_care_for_all/apps/eyebank/common/home/presentation/widget/eb_statistics_top_card.dart';
import 'package:eye_care_for_all/apps/eyebank/common/home/presentation/widget/recent_cases.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class EbHomePage extends StatefulWidget {
  const EbHomePage({super.key});

  @override
  State<EbHomePage> createState() => _EbHomePageState();
}

class _EbHomePageState extends State<EbHomePage> {
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const EbStatisticsTopCard(),
            const SizedBox(height: AppSize.km),
            const RecentCases(),
            const SizedBox(height: AppSize.km),
            GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isSemiDesktop(context) ? 2 : 1,
                crossAxisSpacing: AppSize.ks,
                mainAxisSpacing: AppSize.ks,
                childAspectRatio: Responsive.isSemiDesktop(context) ? 1.8 : 1.2,
              ),
              children: [
                EbAnalyticsCard(
                  width: AppSize.width(context) / 2 - 2 * AppSize.ks,
                  title: 'Cases Closed',
                  body: const EbCasesClosedAnalytics(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton:
          Responsive.isMobile(context) ? const AddCaseButton() : null,
    );
  }
}
