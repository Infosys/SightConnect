import 'package:eye_care_for_all/apps/eyebank/features/tenant_admin/tenant_admin_analytics_dashboard/presentation/pages/tenant_admin_analytics_dashboard_page.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/analytics_cards.dart';
import 'package:eye_care_for_all/shared/widgets/app_paginated_table.dart';
import 'package:eye_care_for_all/shared/widgets/home_search_bar.dart';
import 'package:eye_care_for_all/shared/widgets/statistics_cards_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TenantAdminHomePage extends StatelessWidget {
  const TenantAdminHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> slides = [
      const _PatientCasesAnalytics(),
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Responsive.isMobile(context)
                      ? AppSize.height(context) * 0.3
                      : AppSize.height(context) * 0.25,
                  decoration: const BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppSize.kl),
                      bottomRight: Radius.circular(AppSize.kl),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(AppSize.kl),
                  child: Column(
                    children: [
                      const SizedBox(height: AppSize.kl),
                      HomeSearchBar(
                        onSearchButtonPressed: () {},
                        onProfileButtonPressed: () {},
                        selectedProfileName: 'Avendra',
                        isAvailabilityVisible: false,
                        isAvailable: false,
                        searchText: 'Search by Patient ID, Mobile No., Name',
                      ),
                      const SizedBox(height: AppSize.kl),
                      Row(
                        children: [
                          Text(
                            'Vision Center Analytics',
                            style: applyFiraSansFont(
                              fontSize: 18,
                              color: AppColor.white,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const TenantAdminAnalyticsDashBoardPage(),
                                ),
                              );
                            },
                            child: Text(
                              'View Dashboard',
                              style: applyRobotoFont(
                                  decoration: TextDecoration.underline,
                                  fontSize: 12,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSize.kl),
                      StatisticsCardsCarouselSlider(
                        slides: slides,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: AppSize.ks),
            Padding(
                padding: const EdgeInsets.all(AppSize.km),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Assessments',
                      style: applyFiraSansFont(
                        fontSize: 18,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(height: AppSize.km),
                    Row(
                      children: [
                        Row(
                          children: ['All', 'Critical', 'IVR Assessments']
                              .map((e) => Container(
                                  padding: const EdgeInsets.all(AppSize.ks),
                                  margin:
                                      const EdgeInsets.only(right: AppSize.ks),
                                  decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius:
                                        BorderRadius.circular(AppSize.ks),
                                    border: Border.all(
                                      color: AppColor.grey,
                                    ),
                                  ),
                                  child: Text(
                                    e,
                                    style: applyRobotoFont(fontSize: 14),
                                  )))
                              .toList(),
                        ),
                        const Spacer(),
                        const Text(
                          '|',
                          style: TextStyle(
                            color: AppColor.lightGrey,
                            fontSize: 36,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.filter_list_outlined,
                              color: AppColor.grey,
                            ))
                      ],
                    ),
                    const SizedBox(height: AppSize.km),
                    AppPaginatedTable(
                      data: const [],
                      dataSource: _TenantAdminHomeDataSource(),
                      columnNames: const [
                        'Patient',
                        'Assessment ID',
                        'Status',
                        'Category',
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class _PatientCasesAnalytics extends ConsumerWidget {
  const _PatientCasesAnalytics();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Map closedCases = {
      'EARLY': 0,
      'URGENT': 0,
      'ROUTINE': 0,
    };

    final Map triageCompleted = {
      'EARLY': 0,
      'URGENT': 0,
      'ROUTINE': 0,
    };

    return Container(
      width: AppSize.width(context) * 0.95,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Expanded(
            child: AnalyticsCard(
              title: 'Total Cases',
              firstValue: '0',
              secondValue: '0',
              firstAnalyticsDescription: 'IVR Calls',
              secondAnalyticsDescription: 'Clinic Visits',
              firstValueColor: AppColor.black,
              secondValueColor: AppColor.black,
              isLoading: false,
            ),
          ),
          const SizedBox(width: AppSize.ks),
          Expanded(
            child: AnalyticsTriageStats(
              isLoading: false,
              title: 'Cases Closed',
              earlyValue: closedCases['EARLY'].toString(),
              urgentValue: closedCases['URGENT'].toString(),
              routineValue: closedCases['ROUTINE'].toString(),
            ),
          ),
          const SizedBox(width: AppSize.ks),
          Expanded(
            child: AnalyticsTriageStats(
              title: '% Completed',
              isLoading: false,
              earlyValue: triageCompleted['EARLY'].toString(),
              urgentValue: triageCompleted['URGENT'].toString(),
              routineValue: triageCompleted['ROUTINE'].toString(),
            ),
          ),
        ],
      ),
    );
  }
}

class _TenantAdminHomeDataSource extends DataTableSource {
  @override
  DataRow getRow(int index) {
    return const DataRow(cells: [
      DataCell(Text('Avendra ')),
      DataCell(Text('123456')),
      DataCell(Text('Closed')),
      DataCell(Text('Urgent Category', style: TextStyle(color: Colors.red))),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 1;

  @override
  int get selectedRowCount => 0;
}
