import 'package:eye_care_for_all/apps/eyebank/features/case_search/data/models/table_data.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_search/presentation/widget/case_register_tile.dart';
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
        return InkWell(
          onTap: () => onTap(context, item),
          child: CaseRegisterTile(
            item: item,
            onTap: () => onTap(context, item),
          ),
        );
      },
      showSearch: true,
      defaultPageSize: 5,
      filterLogic: (item, query) => searchFunction(item, query),
    );
  }
}
