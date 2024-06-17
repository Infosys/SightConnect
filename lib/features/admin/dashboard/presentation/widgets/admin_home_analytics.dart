import 'package:eye_care_for_all/features/admin/dashboard/data/local/admin_fake_data_source.dart';
import 'package:eye_care_for_all/features/technician/dashboard/presentation/widgets/analytics_card.dart';
import 'package:flutter/material.dart';

class AdminHomeAnalytics extends StatelessWidget {
  const AdminHomeAnalytics({
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
            ...AdminFakeDataSource.getAnalyticsData().map((e) {
              return AnalyticsCard(
                title: e["title"] ?? "--",
                total: e["total"] ?? "--",
                ongoing: e["ongoing"] ?? "--",
              );
            }).toList(),
          if (orientation == Axis.horizontal)
            Row(
              children: AdminFakeDataSource.getAnalyticsData().map((e) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: AnalyticsCard(
                      title: e["title"] ?? "--",
                      total: e["total"] ?? "--",
                      ongoing: e["ongoing"] ?? "--",
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
