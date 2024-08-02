import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/age_group_analytics.dart';
import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/analytics_card.dart';
import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/appointments_analytics.dart';
import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/cases_closed_analytics.dart';
import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/gender_analytics.dart';
import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/ivr_calls_analytics.dart';
import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/statidtics_top_card.dart';
import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/top_suggestions_prescriptions_analytics.dart';
import 'package:eye_care_for_all/apps/admin/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/triage_cases_analytics.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../widgets/consultation_type_analytics.dart';

class TenantAdminAnalyticsDashBoardPage extends StatefulWidget {
  const TenantAdminAnalyticsDashBoardPage({super.key});

  @override
  State<TenantAdminAnalyticsDashBoardPage> createState() =>
      _TenantAdminAnalyticsDashBoardPageState();
}

class _TenantAdminAnalyticsDashBoardPageState
    extends State<TenantAdminAnalyticsDashBoardPage> {
  late int showingTooltip;

  @override
  void initState() {
    showingTooltip = -1;
    super.initState();
  }

  BarChartGroupData generateGroupData(int x, int y, Color color) {
    return BarChartGroupData(
      x: x,
      showingTooltipIndicators: showingTooltip == x ? [0] : [],
      barRods: [
        BarChartRodData(
          toY: y.toDouble(),
          color: color,
          width: 20,
          borderRadius: const BorderRadius.all(
            Radius.circular(0),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    logger.f(w);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const StatisticsTopCard(),
          const SizedBox(height: AppSize.km),
          GridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Responsive.isSemiDesktop(context) ? 2 : 1,
              crossAxisSpacing: AppSize.ks,
              mainAxisSpacing: AppSize.ks,
              childAspectRatio: Responsive.isSemiDesktop(context) ? 1.8 : 1.8,
            ),
            children: [
              // DropdownMenu<String>(
              //     width: Responsive.isMobile(context)
              //         ? AppSize.width(context)
              //         : AppSize.width(context) / 2.8,
              //     leadingIcon: const Icon(
              //       Icons.calendar_today,
              //     ),
              //     label: const Text('19 Jan 23 - 23 Jan 23'),
              //     dropdownMenuEntries: const [
              //       DropdownMenuEntry(
              //         value: '19 Jan 23 - 23 Jan 23',
              //         label: '19 Jan 23 - 23 Jan 23',
              //       ),
              //       DropdownMenuEntry(
              //         value: '19 Jan 23 - 23 Jan 23',
              //         label: '19 Jan 23 - 23 Jan 23',
              //       ),
              //     ]),
              // const SizedBox(height: AppSize.ks),
              // DropdownMenu<String>(
              //   width: Responsive.isMobile(context)
              //       ? AppSize.width(context)
              //       : AppSize.width(context) / 2.7,
              //   leadingIcon: const Icon(
              //     Icons.location_on,
              //   ),
              //   label: const Text('Gachibowli, Hyderabad'),
              //   dropdownMenuEntries: const [
              //     DropdownMenuEntry(
              //       value: 'Gachibowli, Hyderabad',
              //       label: 'Gachibowli, Hyderabad',
              //     ),
              //     DropdownMenuEntry(
              //       value: 'Gachibowli, Hyderabad',
              //       label: 'Gachibowli, Hyderabad',
              //     ),
              //   ],
              // ),

              AnalyticsCard(
                width: AppSize.width(context) / 2 - 2 * AppSize.ks,
                title: 'Triage Cases',
                body: const TriageCasesAnalytics(),
              ),
              AnalyticsCard(
                width: AppSize.width(context) / 2 - 2 * AppSize.ks,
                title: 'Cases Closed',
                body: const CasesClosedAnalytics(),
              ),
              AnalyticsCard(
                width: AppSize.width(context) / 2 - 2 * AppSize.ks,
                title: 'Consultation Type',
                body: const ConsultationTypeAnalytics(),
                height: 270,
              ),
              AnalyticsCard(
                width: AppSize.width(context) / 2 - 2 * AppSize.ks,
                title: 'Appointments',
                body: const AppointmentsAnalytics(),
                titleTrailing: '13.4K',
                showDivider: true,
                height: 270,
              ),
              AnalyticsCard(
                width: AppSize.width(context) / 2 - 2 * AppSize.ks,
                title: 'IVR Calls',
                body: const IVRCallsAnalytics(),
                titleTrailing: "12.67K ",
                showDivider: true,
              ),
              AnalyticsCard(
                width: AppSize.width(context) / 2 - 2 * AppSize.ks,
                title: 'Top Suggestions & Prescriptions',
                body: const TopSuggestionsPrescriptionsAnalytics(),
              ),
              AnalyticsCard(
                width: AppSize.width(context) / 2 - 2 * AppSize.ks,
                title: 'Gender',
                body: const GenderAnalytics(),
              ),
              AnalyticsCard(
                width: AppSize.width(context) / 2 - 2 * AppSize.ks,
                title: 'Age Group',
                body: const AgeGroupAnalytics(),
              ),

              // AnalyticsCard(
              //   height: Responsive.isMobile(context) ? 220 : 250,
              //   width: AppSize.width(context) - 2 * AppSize.ks,
              //   title: 'Language',
              //   body: const LanguageAnalytics(),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
