import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

import '../widgets/techncian_harvests_tab.dart';
import '../widgets/technician_home_tab.dart';
import '../widgets/technician_referrals_tab.dart';
import '../widgets/technician_reviews_tab.dart';

class TechnicianHomePage extends StatelessWidget {
  const TechnicianHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColor.white,
            shadowColor: AppColor.blackOpacity,
            elevation: 3,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset(
                AppImages.logo,
                height: AppSize.height(context) * 0.04,
                width: AppSize.width(context) * 0.3,
              ),
            ),
            automaticallyImplyLeading: false,
          ),
          body: const SizedBox(
            child: Padding(
              padding: EdgeInsets.all(16.0),
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
