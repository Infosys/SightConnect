import 'package:eye_care_for_all/apps/eyebank/features/admin/dashboard/data/table_source/admin_donor_data_source.dart';
import 'package:eye_care_for_all/apps/eyebank/features/admin/dashboard/data/local/admin_fake_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../../../shared/widgets/app_paginated_table.dart';

class AdminDonorTable extends HookWidget {
  const AdminDonorTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = AdminFakeDataSource.getDonorData();
    final dataSource =
        useState(AdminDonorDataSource(data: data, context: context));

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

        dataSource.value = AdminDonorDataSource(
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
