import 'package:eye_care_for_all/features/admin/dashboard/data/local/admin_fake_data_source.dart';
import 'package:eye_care_for_all/features/admin/dashboard/data/table_source/admin_inventory_data_soruce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../shared/widgets/app_paginated_table.dart';

class AdminInventoryTable extends HookWidget {
  const AdminInventoryTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = AdminFakeDataSource.getSampleData();
    final dataSource =
        useState(AdminInventoryDataSoruce(data: data, context: context));

    return AppPaginatedTable(
      data: data,
      columnNames: const [
        "Sample ID",
        "Tissue Expiry",
        "Delivery",
        "Tissue",
        "Approved Usages",
        "Match",
        "Priority"
      ],
      dataSource: dataSource.value,
      onSort: (columnIndex, ascending) {},
      onSearch: (searchTerm) {
        var filteredData = data.where((item) {
          return item["Sample ID"].toString().contains(searchTerm);
        }).toList();

        dataSource.value = AdminInventoryDataSoruce(
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
