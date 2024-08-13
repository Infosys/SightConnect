import 'package:eye_care_for_all/apps/eyebank/features/case_search/data/models/table_data.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_search/presentation/provider/eb_case_search_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_search/presentation/widget/case_register_tile.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_infinite_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobileCaseSearchWidget extends ConsumerWidget {
  const MobileCaseSearchWidget({super.key});

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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CaseRegisterTile(
            item: item,
            onTap: () {},
          ),
        );
      },
      filterOptions: const ["Status 1", "Status 2", "Status 3"],
      enableSearch: true,
      enableFilter: true,
      defaultPageSize: 10,
      onSearchTap: () {},
    );
  }
}
