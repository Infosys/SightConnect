import 'package:eye_care_for_all/apps/eyebank/features/case_search/data/models/table_data.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_paginated_table.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class WebCaseSearchWidget extends StatelessWidget {
  final int pageSize;
  final List<TableData> data;
  final bool Function(TableData, String) searchFunction;
  final Function(TableData) onTap;
  const WebCaseSearchWidget({
    super.key,
    required this.data,
    required this.pageSize,
    required this.searchFunction,
    required this.onTap,
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
      rowBuilder: (item) => _buildDataRow(item, context, () => onTap(item)),
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

  int calculateTotalPages(List<TableData> data, int pageSize) {
    return (data.length / pageSize).ceil();
  }

  DataRow _buildDataRow(
      TableData item, BuildContext context, VoidCallback? onTap) {
    return DataRow(
      cells: [
        DataCell(
          Text(item.sampleID),
          onTap: onTap,
        ),
        DataCell(Text(item.date.toString())),
        DataCell(Text(item.donor)),
        DataCell(Text(item.tissue)),
        DataCell(Text(item.eye)),
        DataCell(Text(item.category)),
        DataCell(_buildStatusCell(item, context)),
      ],
    );
  }

  Widget _buildStatusCell(TableData item, BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: item.status.toLowerCase() == 'completed'
            ? AppColor.lightGreen
            : AppColor.lightRed,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(item.status,
          style: applyRobotoFont(
            color: Colors.black,
            fontSize: 12,
          )),
    );
  }
}
