import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'technician_home_analytics.dart';
import 'technician_home_filtertabs.dart';
import 'technician_home_table.dart';

class TechnicianHomeTab extends StatelessWidget {
  const TechnicianHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12.0, top: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) const TechnicianHomeAnalytics(),
            SizedBox(
              width: AppSize.width(context) * 0.015,
            ),
            Column(
              children: [
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? AppSize.width(context) * 0.75
                        : AppSize.width(context) * 0.9,
                    child: const TechnicianHomeFilterTabs()),
                const SizedBox(
                  height: AppSize.kl,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                      width: Responsive.isDesktop(context)
                          ? AppSize.width(context) * 0.75
                          : AppSize.width(context) * 0.9,
                      // height: AppSize.height(context) * 0.5,
                      child: const TechnicianHomeTable()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
