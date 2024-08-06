import 'package:eye_care_for_all/apps/eyebank/features/case_search/data/models/table_data.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_paginated_table.dart';
import 'package:flutter/material.dart';

class WebCaseSearchWidget extends StatelessWidget {
  final List<TableData> data;
  final int pageSize;
  final DataRow Function(TableData, BuildContext) rowBuilder;
  final bool Function(TableData, String) searchFunction;

  const WebCaseSearchWidget({
    super.key,
    required this.data,
    required this.pageSize,
    required this.rowBuilder,
    required this.searchFunction,
  });

  @override
  Widget build(BuildContext context) {
    return EBPaginatedTable<TableData>(
      headers: const [
        'Sample ID',
        'Date',
        'Donor',
        'Tissue',
        'Eye',
        'Category',
        'Status',
      ],
      rowBuilder: (item) => rowBuilder(item, context),
      filterOptions: const ['Completed', 'Pending'],
      totalPages: (data.length / pageSize).ceil(),
      fetchData: (
        int pageNumber,
        String searchQuery,
        String? selectedFilter,
      ) async {
        List<TableData> filteredData = data;
        // Apply search filter
        if (searchQuery.isNotEmpty) {
          filteredData =
              data.where((item) => searchFunction(item, searchQuery)).toList();
        }
        // Apply status filter
        if (selectedFilter != null && selectedFilter.isNotEmpty) {
          filteredData = filteredData
              .where((item) => item.status.contains(selectedFilter))
              .toList();
        }
        // Apply pagination
        int startIndex = pageNumber * pageSize;
        int endIndex = startIndex + pageSize;
        if (startIndex < filteredData.length) {
          filteredData = filteredData.sublist(
            startIndex,
            endIndex > filteredData.length ? filteredData.length : endIndex,
          );
        } else {
          filteredData = [];
        }
        return filteredData;
      },
    );
  }
}
