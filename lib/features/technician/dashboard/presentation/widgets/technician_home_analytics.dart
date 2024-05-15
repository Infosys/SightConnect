import 'package:eye_care_for_all/features/technician/dashboard/data/fake_data_source.dart';
import 'package:flutter/material.dart';

import 'analytics_card.dart';

class TechnicianHomeAnalytics extends StatelessWidget {
  const TechnicianHomeAnalytics({
    super.key,
    this.width = 300,
    this.orientation = Axis.vertical,
  });
  final double width;
  final Axis orientation;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (orientation == Axis.vertical)
            ...TechnicianFakeDataSource.getAnalyticsData().map((e) {
              return AnalyticsCard(
                title: e["title"]!,
                total: e["total"]!,
                ongoing: e["ongoing"]!,
              );
            }).toList(),
          if (orientation == Axis.horizontal)
            Row(
              children: TechnicianFakeDataSource.getAnalyticsData().map((e) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: AnalyticsCard(
                      title: e["title"]!,
                      total: e["total"]!,
                      ongoing: e["ongoing"]!,
                    ),
                  ),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
