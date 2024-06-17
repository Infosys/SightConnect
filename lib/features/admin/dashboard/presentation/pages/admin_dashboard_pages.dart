import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/pages/admin_distribution_page.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/pages/admin_inventory_page.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/pages/admin_request_page.dart';
import 'package:eye_care_for_all/features/admin/dashboard/presentation/pages/admin_return_request_page.dart';
import 'package:flutter/material.dart';

class AdminDashboardPages extends StatelessWidget {
  const AdminDashboardPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Container(
          child: const Column(
            children: [
              TabBar(
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
                    AdminRequestPage(),
                    AdminInventoryPage(),
                    AdminDistributionPage(),
                    AdminReturnRequestPage()
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
