import 'package:eye_care_for_all/features/technician/dashboard/data/fake_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'analytics_card.dart';

class TechnicianHomeAnalytics extends StatelessWidget {
  const TechnicianHomeAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    var currentScreenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: currentScreenWidth > 1220 ? 230 : 170,
      height: 700,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ...TechnicianFakeDataSource.getAnalyticsData().map((e) {
            return AnalyticsCard(
              title: e["title"]!,
              total: e["total"]!,
              ongoing: e["ongoing"]!,
            );
          }).toList(),
        ],
      ),
    );
  }
}
