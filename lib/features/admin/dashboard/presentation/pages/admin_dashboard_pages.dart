import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/pages/admin_request_page.dart';
import 'package:flutter/material.dart';

class AdminDashboardPages extends StatelessWidget {
  const AdminDashboardPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Container(
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
                    const AdminRequestPage(),
                    Container(),
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
