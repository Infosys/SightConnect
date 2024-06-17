import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/consultant/death/presentation/pages/death_notification_page.dart';
import 'package:eye_care_for_all/features/consultant/death/presentation/pages/organ_recovery_info_page.dart';
import 'package:eye_care_for_all/features/consultant/death/presentation/pages/screening_page.dart';
import 'package:flutter/material.dart';

class CounselorDashboardPage extends StatelessWidget {
  const CounselorDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              labelColor: AppColor.primary,
              unselectedLabelColor: AppColor.grey,
              indicatorColor: AppColor.primary,
              tabs: [
                Tab(
                  text: 'Death Notification',
                ),
                Tab(
                  text: 'Screening Page ',
                ),
                Tab(
                  text: 'Organ Recovery ',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  DeathNotificationPage(),
                  ScreeningPage(),
                  OrganRecoveryInfoPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
