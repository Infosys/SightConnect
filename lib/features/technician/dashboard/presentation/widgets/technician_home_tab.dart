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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context)) const TechnicianHomeAnalytics(),
          SizedBox(width: AppSize.width(context) * 0.015),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(AppSize.km),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TechnicianHomeFilterTabs(),
                  SizedBox(height: AppSize.kl),
                  TechnicianHomeTable(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
