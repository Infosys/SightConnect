import 'package:eye_care_for_all/features/technician/data/fake_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'analytics_card.dart';

class TechnicianHomeAnalytics extends StatelessWidget {
  const TechnicianHomeAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
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
