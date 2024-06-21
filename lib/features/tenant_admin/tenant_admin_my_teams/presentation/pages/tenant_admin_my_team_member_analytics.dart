import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/age_group_analytics.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/analytics_card.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/appointments_analytics.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/cases_closed_analytics.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/consultation_type_analytics.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/gender_analytics.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/ivr_calls_analytics.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/language_analytics.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/statidtics_top_card.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/top_suggestions_prescriptions_analytics.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/widgets/triage_cases_analytics.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class TenantAdminMyTeamMemberAnalytics extends StatelessWidget {
  const TenantAdminMyTeamMemberAnalytics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preethan Kumar, ID 5356785'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(AppSize.ks),
            child: DropdownMenu<String>(
                width: Responsive.isMobile(context)
                    ? AppSize.width(context)
                    : AppSize.width(context) / 4,
                leadingIcon: const Icon(
                  Icons.calendar_today,
                ),
                label: const Text('Today'),
                dropdownMenuEntries: const [
                  DropdownMenuEntry(
                    value: 'Weekely',
                    label: 'Weekely',
                  ),
                  DropdownMenuEntry(
                    value: 'Monthly',
                    label: 'Monthly',
                  ),
                ]),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.ks),
          child: Wrap(
            children: [
              const SizedBox(height: AppSize.km),
              const StatisticsTopCard(),
              const SizedBox(height: AppSize.km),
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
              AnalyticsCard(
                height: 180,
                width: AppSize.width(context) - 2 * AppSize.ks,
                title: 'Language',
                body: const LanguageAnalytics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
