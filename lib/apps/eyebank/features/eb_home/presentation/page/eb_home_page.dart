import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/recent_cases.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_dashboard/presentation/widgets/eye_bank_dashboard_appbar.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_home/presentation/widget/add_case_button.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_home/presentation/widget/eb_analytics_card.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_home/presentation/widget/eb_cases_closed_analytics.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_home/presentation/widget/eb_statistics_top_card.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_profile/presentation/pages/eb_profile_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EBHomePage extends StatelessWidget {
  const EBHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    logger.f('EBHomePage');
    return Scaffold(
      appBar: EyeBankDashboardAppbar(
        onProfileTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EBProfilePage(),
            ),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            const EbStatisticsTopCard(),
            if (kIsWeb) const SizedBox(height: AppSize.km),
            if (kIsWeb) const AddCaseButton(),
            const SizedBox(height: AppSize.km),
            const RecentCases(),
            const SizedBox(height: AppSize.km),
            GridView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isSemiDesktop(context) ? 2 : 1,
                crossAxisSpacing: AppSize.ks,
                mainAxisSpacing: AppSize.ks,
                childAspectRatio: Responsive.isSemiDesktop(context) ? 1.8 : 1.2,
              ),
              children: [
                EbAnalyticsCard(
                  width: AppSize.width(context) / 2 - 2 * AppSize.ks,
                  title: 'Cases Closed',
                  body: const EbCasesClosedAnalytics(),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.km * 3,
            ),
          ],
        ),
      ),
      floatingActionButton: !kIsWeb ? const AddCaseButton() : null,
    );
  }
}
