import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/pages/eb_case_search_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/case_register_tile.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/pages/eb_case_time_line_page.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_infinite_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobileCaseSearchWidget extends ConsumerWidget {
  const MobileCaseSearchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EbInfiniteScrollView<EncounterBriefEntity>(
      fetchPageData: (pageKey, pageSize, filters) async {
        final params = GetRecordsParams(
          filters: filters,
          pageNumber: pageKey,
          pageSize: pageSize,
        );
        final records = await ref.read(ebGetRecordsProvider(params).future);
        return records;
      },
      itemBuilder: (context, item, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: EBCaseCard(
            item: item,
            onTap: () {
              final navigator = Navigator.of(context);
              navigator.push(
                MaterialPageRoute(
                  builder: (context) => const EbCaseTimeLinePage(
                    encounterID: 1,
                    timelineVersion: '1',
                  ),
                ),
              );
            },
          ),
        );
      },
      filterOptions: const ["Status 1", "Status 2", "Status 3"],
      enableSearch: true,
      enableFilter: true,
      defaultPageSize: 10,
      onSearchTap: () {
        final navigator = Navigator.of(context);
        navigator.push(
          MaterialPageRoute(
            builder: (context) {
              return const EBCaseSearchPage();
            },
          ),
        );
      },
    );
  }
}
