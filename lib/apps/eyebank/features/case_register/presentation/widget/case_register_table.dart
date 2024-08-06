import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/provider/eb_case_register_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/presentation/pages/eb_case_time_line_page.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_infinite_scroll_view.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_paginated_table.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/models/table_data.dart';

class CaseRegisterTable extends ConsumerWidget {
  const CaseRegisterTable({Key? key}) : super(key: key);

  bool searchFunction(TableData item, String query) {
    return item.sampleID.contains(query) ||
        item.donor.contains(query) ||
        item.tissue.contains(query) ||
        item.eye.contains(query) ||
        item.category.contains(query) ||
        item.status.contains(query);
  }

  DataRow _buildDataRow(TableData item, BuildContext context) {
    return DataRow(cells: [
      DataCell(Text(item.sampleID)),
      DataCell(Text(item.date.toIso8601String())),
      DataCell(Text(item.donor)),
      DataCell(Text(item.tissue)),
      DataCell(Text(item.eye)),
      DataCell(Text(item.category)),
      DataCell(Text(item.status)),
    ]);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(ebCaseTableProvider).when(
          data: (data) {
            if (!kIsWeb) {
              return EbInfiniteScrollView<TableData>(
                fetchPageData: (pageKey, pageSize) async {
                  final startIndex = pageKey * pageSize;
                  // Generate dummy data
                  final newItems = List.generate(
                    pageSize,
                    (index) => TableData(
                      eye: "Eye ${startIndex + index + 1}",
                      category: "Category ${startIndex + index + 1}",
                      date: DateTime.now(),
                      donor: "Donor ${startIndex + index + 1}",
                      sampleID: "Sample ID ${startIndex + index + 1}",
                      status: "Status ${startIndex + index + 1}",
                      tissue: "Tissue ${startIndex + index + 1}",
                    ),
                  );

                  // Simulate network delay
                  await Future.delayed(const Duration(seconds: 2));

                  return newItems;
                },
                itemBuilder: (context, item, index) =>
                    CaseRegisterTile(item: item),
                showSearch: true,
                defaultPageSize: 5,
                filterLogic: (item, query) => searchFunction(item, query),
              );
            }

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
              rowBuilder: (item) => _buildDataRow(item, context),
              filterOptions: const ['Completed', 'Pending'],
              filterMatcher: (item, filter) => item.status.contains(filter),
              searchMatcher: searchFunction,
              fetchData: (int pageNumber, int pageSize, String searchQuery,
                  String? selectedFilter) {
                List<TableData> filteredData = data;

                // Apply search filter
                if (searchQuery.isNotEmpty) {
                  filteredData = filteredData.where((item) {
                    return item.sampleID.contains(searchQuery) ||
                        item.donor.contains(searchQuery) ||
                        item.tissue.contains(searchQuery) ||
                        item.eye.contains(searchQuery) ||
                        item.category.contains(searchQuery) ||
                        item.status.contains(searchQuery);
                  }).toList();
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
                      endIndex > filteredData.length
                          ? filteredData.length
                          : endIndex);
                } else {
                  filteredData = [];
                }

                return Future.value(filteredData);
              },
            );
          },
          error: (error, _) => Center(
            child: TextButton.icon(
              onPressed: () {
                ref.invalidate(ebCaseTableProvider);
              },
              label: Text('Error: $error'),
              icon: const Icon(Icons.refresh),
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
  }
}

class CaseRegisterTile extends StatelessWidget {
  final TableData item;

  const CaseRegisterTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListTile(
          onTap: () {
            // Navigate to detail page
            final navigator = Navigator.of(context);
            navigator.push(
              MaterialPageRoute(
                builder: (context) => EbCaseTimeLinePage(
                  caseID: item.sampleID,
                ),
              ),
            );
          },
          title: Text(
            item.sampleID,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.donor),
                const SizedBox(height: 4),
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: [
                    Chip(
                      label: Text(item.tissue),
                      backgroundColor: Colors.blue.shade100,
                    ),
                    Chip(
                      label: Text(item.eye),
                      backgroundColor: Colors.green.shade100,
                    ),
                    Chip(
                      label: Text(item.category),
                      backgroundColor: Colors.orange.shade100,
                    ),
                    Chip(
                      label: Text(item.status),
                      backgroundColor: item.status == 'Completed'
                          ? Colors.green.shade100
                          : Colors.red.shade100,
                    ),
                  ],
                ),
              ],
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
