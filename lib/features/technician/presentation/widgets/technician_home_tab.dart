import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'technician_home_analytics.dart';
import 'technician_home_filtertabs.dart';

class TechnicianHomeTab extends StatelessWidget {
  const TechnicianHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: AppSize.width(context) * 0.3,
              height: AppSize.height(context) * 0.6,
              child: const TechnicianHomeAnalytics(),
            ),
          ),
          SizedBox(
            width: AppSize.width(context) * 0.04,
          ),
          Column(
            children: [
              SizedBox(height: AppSize.height(context) * 0.025),
              const TechnicianHomeFilterTabs(),
            ],
          ),
        ],
      ),
    );
  }
}
