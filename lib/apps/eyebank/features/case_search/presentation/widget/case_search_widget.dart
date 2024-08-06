import 'package:eye_care_for_all/apps/eyebank/features/case_search/presentation/provider/eb_case_search_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_search/presentation/widget/mobile_case_search_widget.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_search/presentation/widget/web_case_search_widget.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/presentation/pages/eb_case_time_line_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/models/table_data.dart';

class CaseSearchWidget extends ConsumerWidget {
  const CaseSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(ebCaseTableProvider).when(
          data: (data) {
            if (!kIsWeb) {
              return MobileCaseSearchWidget(
                onTap: (context, item) => _onTap(context, item),
                searchFunction: searchFunction,
              );
            }

            return WebCaseSearchWidget(
              data: data,
              pageSize: 10,
              searchFunction: searchFunction,
              onTap: (item) => _onTap(context, item),
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

  bool searchFunction(TableData item, String query) {
    final lowerCaseQuery = query.toLowerCase();
    return item.sampleID.toLowerCase().contains(lowerCaseQuery) ||
        item.date.toString().toLowerCase().contains(lowerCaseQuery) ||
        item.donor.toLowerCase().contains(lowerCaseQuery) ||
        item.tissue.toLowerCase().contains(lowerCaseQuery) ||
        item.eye.toLowerCase().contains(lowerCaseQuery) ||
        item.category.toLowerCase().contains(lowerCaseQuery) ||
        item.status.toLowerCase().contains(lowerCaseQuery);
  }

  void _onTap(BuildContext context, TableData item) {
    final navigator = Navigator.of(context);
    navigator.push(
      MaterialPageRoute(
        builder: (context) => EbCaseTimeLinePage(caseID: item.sampleID),
      ),
    );
  }
}
