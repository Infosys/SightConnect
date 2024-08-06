import 'package:eye_care_for_all/apps/eyebank/features/case_register/presentation/provider/eb_case_register_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/modals/search_case_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_infinite_scroll_view.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_paginated_table.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

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
                itemBuilder: (context, item, index) => CaseRegisterTile(
                  item: item,
                ),
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
  final bool isCompact;

  const CaseRegisterTile({Key? key, required this.item, this.isCompact = false})
      : super(key: key);

  static final SearchCaseModel caseModel = SearchCaseModel(
    caseId: 1945,
    screeningStatus: 'Final',
    donarBrief: const DonarBrief(
      id: 9334,
      name: "George Soros",
      contact: '666 666 666 666',
    ),
    intimateDate: DateTime.parse('2024-08-06T07:00:22.706Z'),
    performerId: 0,
    deathDate: DateTime.parse('2024-08-06T07:00:22.706Z'),
    bodyLocation: const BodyLocation(
      street: '42 Avenue Street',
      city: 'New York City',
      state: 'New York',
      zipCode: '10001',
      country: 'USA',
      landmark: 'Statue of Liberty',
      village: 'string',
      district: 'string',
      latitude: 'string',
      longitude: 'string',
    ),
    organExtracted: ['Brain'],
  );

  @override
  Widget build(BuildContext context) {
    if (isCompact) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCompactRow(context),
          const SizedBox(height: 15),
        ],
      );
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          height: 150, // Reduced height for more compactness
          padding: const EdgeInsets.all(12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _buildTopRow(context),
            const SizedBox(height: 8),
            _buildContactInfo(context),
            const SizedBox(height: 8),
            _buildDateInfo(context),
            const SizedBox(height: 8),
            _buildOrganInfo(context),
          ]),
        ),
      ),
    );
  }

  Widget _buildCompactRow(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                caseModel.donarBrief!.name!,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Case ID : ${caseModel.caseId}',
                style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                caseModel.screeningStatus!,
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              caseModel.donarBrief!.contact!,
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
            Row(
              children: [
                Icon(Icons.pin_drop,
                    size: 14, color: Theme.of(context).primaryColor),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  '${caseModel.bodyLocation!.street!}, ${caseModel.bodyLocation!.city}, ${caseModel.bodyLocation!.state}',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTopRow(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            caseModel.donarBrief!.name!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'Case ID : ${caseModel.caseId}',
            style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            caseModel.screeningStatus!,
            style: const TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _buildContactInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          caseModel.donarBrief!.contact!,
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        ),
        Text(
          '${caseModel.bodyLocation!.street!}, ${caseModel.bodyLocation!.city}, ${caseModel.bodyLocation!.state}',
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  Widget _buildDateInfo(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.calendar_today,
            size: 14, color: Theme.of(context).primaryColor),
        const SizedBox(width: 4),
        Text(
          'Death: ${DateFormat('MMM dd, yyyy').format(caseModel.deathDate!)}',
          style: const TextStyle(fontSize: 12),
        ),
        const SizedBox(width: 8),
        Text(
          'Intimate: ${DateFormat('MMM dd, yyyy').format(caseModel.intimateDate!)}',
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildOrganInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Organs Extracted:',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor),
        ),
        const SizedBox(height: 4),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: caseModel.organExtracted!
              .map((organ) => _buildOrganChip(context, organ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildOrganChip(BuildContext context, String organ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Theme.of(context).primaryColor, width: 0.5),
      ),
      child: Text(
        organ,
        style: TextStyle(fontSize: 10, color: Theme.of(context).primaryColor),
      ),
    );
  }
}

// return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Column(
//         children: [
//           _buildHeader(context),
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 _buildDonorInfo(),
//                 const SizedBox(height: 16),
//                 _buildDateInfo(),
//                 const SizedBox(height: 16),
//                 _buildLocationInfo(),
//                 const SizedBox(height: 16),
//                 _buildOrganInfo(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildHeader(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//       decoration: BoxDecoration(
//         color: Theme.of(context).primaryColor,
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(12),
//           topRight: Radius.circular(12),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             'Case #${caseModel.caseId}',
//             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
//           ),
//           _buildStatusChip(),
//         ],
//       ),
//     );
//   }

//   Widget _buildStatusChip() {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Text(
//         caseModel.screeningStatus,
//         style: TextStyle(
//           color: Theme.of(context).primaryColor,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }

//   Widget _buildDonorInfo() {
//     return Row(
//       children: [
//         const Icon(Icons.person, color: Colors.grey),
//         const SizedBox(width: 8),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 caseModel.donarBrief.name,
//                 style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 caseModel.donarBrief.contact,
//                 style: const TextStyle(color: Colors.grey),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDateInfo() {
//     return Row(
//       children: [
//         const Icon(Icons.calendar_today, color: Colors.grey),
//         const SizedBox(width: 8),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Death Date: ${DateFormat('MMM dd, yyyy').format(caseModel.deathDate)}',
//               style: const TextStyle(fontSize: 14),
//             ),
//             Text(
//               'Intimate Date: ${DateFormat('MMM dd, yyyy').format(caseModel.intimateDate)}',
//               style: const TextStyle(fontSize: 14, color: Colors.grey),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildLocationInfo() {
//     return Row(
//       children: [
//         const Icon(Icons.location_on, color: Colors.grey),
//         const SizedBox(width: 8),
//         Expanded(
//           child: Text(
//             '${caseModel.bodyLocation.street}, ${caseModel.bodyLocation.city}, ${caseModel.bodyLocation.state}',
//             style: const TextStyle(fontSize: 14),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildOrganInfo() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text(
//           'Organs Extracted:',
//           style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 4),
//         Wrap(
//           spacing: 8,
//           children: caseModel.organExtracted.map((organ) => Chip(
//             label: Text(organ),
//             backgroundColor: Colors.grey[200],
//           )).toList(),
//         ),
//       ],
//     );
//   }
// }
