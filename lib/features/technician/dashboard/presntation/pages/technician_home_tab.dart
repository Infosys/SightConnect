import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

import '../widgets/technician_home_analytics.dart';
import '../widgets/technician_home_filtertabs.dart';

class TechnicianHomeTab extends StatelessWidget {
  const TechnicianHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12.0, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) const TechnicianHomeAnalytics(),
          SizedBox(
            width: AppSize.width(context) * 0.015,
          ),
          const Expanded(
            child: Column(
              children: [
                TechnicianHomeFilterTabs(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
