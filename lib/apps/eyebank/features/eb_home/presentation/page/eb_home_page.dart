import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/pages/eb_case_search_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/recent_cases.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_dashboard/presentation/widgets/eye_bank_dashboard_appbar.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_home/presentation/widget/add_case_button.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_home/presentation/widget/eb_analytics_card.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_home/presentation/widget/eb_statistics_top_card.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_profile/presentation/pages/eb_profile_page.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EBHomePage extends StatelessWidget {
  const EBHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EyeBankDashboardAppbar(
        onSearchTap: () {
          final navigator = Navigator.of(context);
          navigator.push(
            MaterialPageRoute(
              builder: (context) {
                return const EBCaseSearchPage();
              },
            ),
          );
        },
        onProfileTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EBProfilePage(),
            ),
          );
        },
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            EbStatisticsTopCard(),
            if (kIsWeb) SizedBox(height: AppSize.km),
            if (kIsWeb) AddCaseButton(),
            SizedBox(height: AppSize.km),
            RecentCases(),
            SizedBox(height: AppSize.km),
            Wrap(
              children: [
                EBStageAnalytics(),
              ],
            ),
            SizedBox(height: AppSize.kl * 4),
          ],
        ),
      ),
      floatingActionButton: !kIsWeb ? const AddCaseButton() : null,
    );
  }
}
