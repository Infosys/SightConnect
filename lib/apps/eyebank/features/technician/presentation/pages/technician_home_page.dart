import 'package:eye_care_for_all/apps/eyebank/features/technician/dashboard/presentation/widgets/techncian_harvests_tab.dart';
import 'package:eye_care_for_all/apps/eyebank/features/technician/dashboard/presentation/widgets/technician_referrals_tab.dart';
import 'package:eye_care_for_all/apps/eyebank/features/technician/dashboard/presentation/widgets/technician_reviews_tab.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:flutter/material.dart';

import '../../dashboard/presentation/widgets/technician_home_tab.dart';

class TechnicianHomePage extends StatelessWidget {
  const TechnicianHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: Scaffold(
          body: SizedBox(
        child: Padding(
          padding: EdgeInsets.only(left: 16.0, right: 16, top: 16),
          child: Column(
            children: [
              TabBar(
                indicatorColor: AppColor.primary,
                indicatorWeight: 2,
                dividerColor: AppColor.blue,
                unselectedLabelStyle: TextStyle(color: AppColor.grey),
                labelColor: AppColor.black,
                tabs: [
                  Tab(
                    child: Text('Home'),
                  ),
                  Tab(
                    child: Text('Referrals'),
                  ),
                  Tab(
                    child: Text('Harvests'),
                  ),
                  Tab(
                    child: Text('Reviews'),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    TechnicianHomeTab(),
                    TechnicianReferralsTab(),
                    TechnicianHarvestsTab(),
                    TechnicianReviewsTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
