import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

import '../widgets/techncian_harvests_tab.dart';
import '../widgets/technician_home_tab.dart';
import '../widgets/technician_referrals_tab.dart';
import '../widgets/technician_reviews_tab.dart';

class TechnicianDashboardPage extends StatelessWidget {
  const TechnicianDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: AppColor.white,
        //   shadowColor: AppColor.blackOpacity,
        //   elevation: 3,
        //   leadingWidth: 220,
        //   leading: Padding(
        //     padding: const EdgeInsets.only(left: 16),
        //     child: Image.asset(
        //       AppImages.logo,
        //       height: 35,
        //     ),
        //   ),
        //   automaticallyImplyLeading: false,
        // ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TabBar(
                labelColor: AppColor.primary,
                unselectedLabelColor: AppColor.grey,
                indicatorColor: AppColor.primary,
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
                  physics: NeverScrollableScrollPhysics(),
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
      ),
    );
  }
}
