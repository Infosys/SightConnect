import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

import 'technician_home_analytics.dart';
import 'technician_home_filtertabs.dart';
import 'technician_home_table.dart';

class TechnicianHomeTab extends StatelessWidget {
  const TechnicianHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) const TechnicianHomeAnalytics(),
            if (Responsive.isDesktop(context))
              const SizedBox(width: AppSize.kl),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (Responsive.isTablet(context))
                    const TechnicianHomeAnalytics(orientation: Axis.horizontal),
                  const TechnicianHomeFilterTabs(),
                  const SizedBox(height: AppSize.kl),
                  const TechnicianHomeTable(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
