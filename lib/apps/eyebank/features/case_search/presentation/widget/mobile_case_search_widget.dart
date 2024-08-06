import 'package:eye_care_for_all/apps/eyebank/features/case_search/data/models/table_data.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_infinite_scroll_view.dart';
import 'package:flutter/material.dart';

class MobileCaseSearchWidget extends StatelessWidget {
  final Function(BuildContext, TableData) onTap;
  final bool Function(TableData, String) searchFunction;

  const MobileCaseSearchWidget({
    super.key,
    required this.onTap,
    required this.searchFunction,
  });

  @override
  Widget build(BuildContext context) {
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
      itemBuilder: (context, item, index) {
        return _CaseRegisterTile(
          item: item,
          onTap: () => onTap(context, item),
        );
      },
      showSearch: true,
      defaultPageSize: 5,
      filterLogic: (item, query) => searchFunction(item, query),
    );
  }
}

class _CaseRegisterTile extends StatelessWidget {
  final TableData item;
  final VoidCallback? onTap;

  const _CaseRegisterTile({
    Key? key,
    required this.item,
    this.onTap,
  }) : super(key: key);

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
          onTap: onTap,
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
