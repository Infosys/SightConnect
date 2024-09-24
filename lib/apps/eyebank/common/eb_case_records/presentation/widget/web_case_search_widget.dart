import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/pages/eb_case_time_line_page.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_paginated_table.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WebCaseSearchWidget extends ConsumerWidget {
  const WebCaseSearchWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return EBPaginatedTable<ContentBriefEntity>(
      headers: const [
        'Encounter ID',
        'Death Date',
        'Notifier Name',
        'Notifier Contact',
        'Donor Name',
        'Donor Contact',
        'Active Stages',
      ],
      rowBuilder: (item) =>
          _buildDataRow(item, context, () => _onTap(context, item)),
      filterOptions: const [],
      totalPages: 10,
      fetchData:
          (int pageNumber, String searchQuery, String? selectedFilter) async {
        final params = GetRecordsParams(
          page: pageNumber,
          size: 10,
        );
        final records = await ref.read(ebGetRecordsProvider(params).future);
        return records.content ?? [];
      },
    );
  }

  int calculateTotalPages(List<ContentBriefEntity> data, int pageSize) {
    return (data.length / pageSize).ceil();
  }

  DataRow _buildDataRow(
      ContentBriefEntity item, BuildContext context, VoidCallback? onTap) {
    return DataRow(
      cells: [
        DataCell(Text(item.encounterId.toString())),
        DataCell(Text(item.deathDate.formatDateTimeMonthName)),
        DataCell(Text(item.notifierBrief?.name ?? "")),
        DataCell(Text(item.notifierBrief?.contact ?? "")),
        DataCell(Text(item.donorBrief?.name ?? "")),
        DataCell(Text(item.donorBrief?.contact ?? "")),
        DataCell(Text(item.activeStages.map((e) => e.name).join(", "))),
      ],
    );
  }

  bool searchFunction(ContentBriefEntity item, String query) {
    return true;
  }

  void _onTap(BuildContext context, ContentBriefEntity item) {
    final navigator = Navigator.of(context);
    navigator.push(
      MaterialPageRoute(
        builder: (context) => const EbCaseTimeLinePage(encounterID: "123"),
      ),
    );
  }
}
