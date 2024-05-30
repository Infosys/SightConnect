import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/pages/admin_request_detail_page.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/pages/admin_request_page.dart';
import 'package:flutter/material.dart';

class AdminDashboardPages extends StatelessWidget {
  const AdminDashboardPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: AppColor.white,
      //   elevation: 2,
      //   title: Image.asset(
      //     AppImages.logo,
      //     height: 30,
      //   ),
      //   actions: const [
      //     IconButton(
      //       icon: Icon(Icons.search),
      //       onPressed: null,
      //     ),
      //     IconButton(
      //       onPressed: null,
      //       icon: Icon(Icons.notifications),
      //     ),
      //     IconButton(onPressed: null, icon: Icon(Icons.person))
      //   ],
      // ),
      body: DefaultTabController(
        length: 4,
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const TabBar(
                physics: NeverScrollableScrollPhysics(),
                labelColor: AppColor.primary,
                unselectedLabelColor: AppColor.grey,
                indicatorColor: AppColor.primary,
                tabs: [
                  Tab(
                    text: 'Requests',
                  ),
                  Tab(
                    text: 'Inventory',
                  ),
                  Tab(
                    text: 'Distribution',
                  ),
                  Tab(
                    text: 'Return Request',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const AdminRequestDetailPage(),
                    const AdminRequestPage(),
                    Container(),
                    Container()
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
