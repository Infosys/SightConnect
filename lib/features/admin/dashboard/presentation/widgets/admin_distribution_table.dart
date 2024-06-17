import 'package:eye_care_for_all/features/admin/dashboard/data/local/admin_fake_data_source.dart';
import 'package:eye_care_for_all/features/admin/dashboard/data/table_source/admin_distribution_data_source.dart';
import 'package:eye_care_for_all/features/admin/dashboard/data/table_source/admin_paginated_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../shared/widgets/app_paginated_table.dart';

class AdminDistributionTable extends HookWidget {
  const AdminDistributionTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = AdminFakeDataSource.getDistributionData();
    final dataSource =
        useState(AdminDistributionDataSource(data: data, context: context));

    return AppPaginatedTable(
      data: data,
      columnNames: const [
       "Sample ID",
        "Tissue Expiry",
        "Donor Name",
        "Tissue",
        "Approved Usages",
        "Eye",
        "Priority"
      ],
      dataSource: dataSource.value,
      onSort: (columnIndex, ascending) {},
      onSearch: (searchTerm) {
        var filteredData = data.where((item) {
          return item["Sample ID"].toString().contains(searchTerm);
        }).toList();

        dataSource.value = AdminDistributionDataSource(
          data: filteredData,
          context: context,
        );
        return filteredData;
      },
      onPageChanged: (pageIndex) {
        // Implement your page changing logic here
      },
    );
  }
}
