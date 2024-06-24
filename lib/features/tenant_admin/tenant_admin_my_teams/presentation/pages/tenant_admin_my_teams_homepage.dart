import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/tenant_admin/tenant_admin_my_teams/presentation/pages/tenant_admin_my_team_member_analytics.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/widgets/app_paginated_table.dart';
import 'package:flutter/material.dart';

class TenantAdminMyTeamsHomePage extends StatelessWidget {
  const TenantAdminMyTeamsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Teams'),
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
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.ks),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppSize.km),
              DropdownMenu<String>(
                width: Responsive.isMobile(context)
                    ? AppSize.width(context)
                    : AppSize.width(context) / 2.7,
                leadingIcon: const Icon(
                  Icons.location_on,
                ),
                label: const Text('Gachibowli, Hyderabad'),
                dropdownMenuEntries: const [
                  DropdownMenuEntry(
                    value: 'Gachibowli, Hyderabad',
                    label: 'Gachibowli, Hyderabad',
                  ),
                  DropdownMenuEntry(
                    value: 'Gachibowli, Hyderabad',
                    label: 'Gachibowli, Hyderabad',
                  ),
                ],
              ),
              const SizedBox(height: AppSize.km),
              AppPaginatedTable(
                data: const [],
                dataSource: OrgAdminMyTeamDataSource(context: context),
                columnNames: const [
                  'Name',
                  'Location',
                  'Patients attended',
                  'IVR Calls',
                  'Availability',
                  'Actions'
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrgAdminMyTeamDataSource extends DataTableSource {
  final BuildContext context;

  OrgAdminMyTeamDataSource({required this.context});
  @override
  DataRow getRow(int index) {
    return DataRow(
      cells: [
        DataCell(
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const TenantAdminMyTeamMemberAnalytics(),
                ),
              );
            },
            title: const Text('Avendra'),
            subtitle: const Text('ID 5356785'),
          ),
        ),
        const DataCell(
          ListTile(
            title: Text('LVPEI Institute'),
            subtitle: Text('Gachibowli, Hyderabad'),
          ),
        ),
        const DataCell(
          Text('25'),
        ),
        const DataCell(
          Text('15'),
        ),
        const DataCell(
          Text(
            'Available',
            style: TextStyle(color: AppColor.altGreen),
          ),
        ),
        const DataCell(
          Icon(
            Icons.phone,
            color: AppColor.primary,
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 15;

  @override
  int get selectedRowCount => 0;
}
