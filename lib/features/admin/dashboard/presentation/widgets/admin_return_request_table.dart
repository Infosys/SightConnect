import 'package:eye_care_for_all/features/admin/dashboard/data/local/admin_fake_data_source.dart';
import 'package:eye_care_for_all/features/admin/dashboard/data/table_source/admin_paginated_data_source.dart';
import 'package:eye_care_for_all/features/admin/dashboard/data/table_source/admin_return_request_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../shared/widgets/app_paginated_table.dart';

class AdminReturnRequestTable extends HookWidget {
  const AdminReturnRequestTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = AdminFakeDataSource.getReturnRequestData();
    final dataSource =
        useState(AdminReturnRequestDataSource(data: data, context: context));

    return AppPaginatedTable(
      data: data,
      columnNames: const [
        "TR ID",
        "Tissue ID",
        "Return Reason",
        "Tissue Sent To",
        "Return Date",
        "Re-distribution Possible",
      ],

      
      dataSource: dataSource.value,
      onSort: (columnIndex, ascending) {},
      onSearch: (searchTerm) {
        var filteredData = data.where((item) {
          return item["TR ID"].toString().contains(searchTerm);
        }).toList();

        dataSource.value = AdminReturnRequestDataSource(
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
