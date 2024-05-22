import 'package:eye_care_for_all/features/admin/data/admin_fake_data_source.dart';
import 'package:eye_care_for_all/features/admin/data/admin_paginated_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../shared/widgets/app_paginated_table.dart';

class AdminRequestTable extends HookWidget {
  const AdminRequestTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = AdminFakeDataSource.getSampleData();
    final dataSource =
        useState(AdminPaginatedDataSource(data: data, context: context));

    return AppPaginatedTable(
      data: data,
      columnNames: const [
        "RequestID",
        "ExpiryDate",
        "RequestedBy",
        "TransplantationTechnique",
        "Tissue",
        "Eye",
        "Priority"
      ],
      dataSource: dataSource.value,
      onSort: (columnIndex, ascending) {
        // Implement your sorting logic here
      },
      onSearch: (searchTerm) {
        var filteredData = data.where((item) {
          // Implement your search logic here.
          // This is a simple example that checks if the item's toString() contains the search term.
          // You need to replace this with your actual search logic.
          return item["RequestID"].toString().contains(searchTerm);
        }).toList();

        dataSource.value = AdminPaginatedDataSource(
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
