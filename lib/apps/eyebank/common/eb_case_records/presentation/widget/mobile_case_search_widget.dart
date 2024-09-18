import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/pages/eb_case_search_page.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/case_register_tile.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/pages/eb_case_time_line_page.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/domain/enums/global_eb_enums.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_infinite_scroll_view.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'filter_bottom_sheet.dart';

class MobileCaseSearchWidget extends ConsumerWidget {
  const MobileCaseSearchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EbInfiniteScrollView<ContentBriefEntity>(
      fetchPageData: (pageKey, pageSize, filters) async {
        logger.d({
          "Filters": filters.map((e) => e.value).toList(),
        });
        final filterMap = {
          for (var filter in filters) filter.name: filter.value
        };

        final params = GetRecordsParams(
          page: pageKey,
          size: pageSize,
          startDate: filterMap['Start Date'],
          endDate: filterMap['End Date'],
          encounterStage: filterMap['Filter by Stage'],
        );
        final records = await ref.read(ebGetRecordsProvider(params).future);
        return records.content ?? [];
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
                  builder: (context) => EbCaseTimeLinePage(
                    encounterID: item.encounterId,
                    timlineVersion: item.timelineVersion,
                    timelineName: item.timelineName,
                  ),
                ),
              );
            },
          ),
        );
      },
      filterOptions: [
        Filter(
          name: 'Start Date',
          type: FilterType.date,
        ),
        Filter(
          name: 'End Date',
          type: FilterType.date,
        ),
        Filter(
          name: 'Filter by Stage',
          type: FilterType.dropdown,
          dropdownOptions:
              EBStageName.options.map((e) => e.name.toUpperCase()).toList(),
        )
      ],
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
