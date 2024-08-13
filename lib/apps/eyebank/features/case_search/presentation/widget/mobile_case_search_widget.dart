import 'package:eye_care_for_all/apps/eyebank/features/case_search/data/models/table_data.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_search/presentation/widget/case_register_tile.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_infinite_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getRecordsProvider =
    FutureProvider.family<List<TableData>, GetRecordsParams>(
        (ref, params) async {
  final List<TableData> fakeData = List.generate(
    params.pageSize,
    (index) => TableData(
      eye: "Eye ${index + 1}",
      category: "Category ${index + 1}",
      date: DateTime.now(),
      donor: "Donor ${index + 1}",
      sampleID: "Sample ID ${index + 1}",
      status: "Status ${index + 1}",
      tissue: "Tissue ${index + 1}",
    ),
  );
  await Future.delayed(const Duration(seconds: 2));
  return fakeData;
});

class GetRecordsParams {
  final List<String>? filters;
  final int pageNumber;
  final int pageSize;

  GetRecordsParams({
    this.filters,
    required this.pageNumber,
    required this.pageSize,
  });
}

class MobileCaseSearchWidget extends ConsumerWidget {
  final Function(BuildContext, TableData) onTap;
  final bool Function(TableData, String) searchFunction;

  const MobileCaseSearchWidget({
    super.key,
    required this.onTap,
    required this.searchFunction,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EbInfiniteScrollView<TableData>(
      fetchPageData: (pageKey, pageSize, filters) async {
        final params = GetRecordsParams(
          filters: filters,
          pageNumber: pageKey,
          pageSize: pageSize,
        );
        final records = await ref.read(getRecordsProvider(params).future);
        return records;
      },
      itemBuilder: (context, item, index) {
        return InkWell(
          onTap: () => onTap(context, item),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CaseRegisterTile(
              item: item,
              onTap: () => onTap(context, item),
            ),
          ),
        );
      },
      filterOptions: const ["Status 1", "Status 2", "Status 3"],
      enableSearch: true,
      enableFilter: false,
      defaultPageSize: 10,
      onSearchTap: () {},
    );
  }
}
