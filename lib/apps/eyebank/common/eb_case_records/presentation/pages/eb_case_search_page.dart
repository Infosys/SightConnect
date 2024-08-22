import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/case_register_tile.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/presentation/pages/eb_case_time_line_page.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_infinite_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EBCaseSearchPage extends StatefulWidget {
  const EBCaseSearchPage({super.key});

  @override
  _EBCaseSearchPageState createState() => _EBCaseSearchPageState();
}

class _EBCaseSearchPageState extends State<EBCaseSearchPage> {
  String query = '';
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Request focus when the page is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(
          onSubmitted: (value) {
            setState(() {
              query = value;
            });
          },
        ),
        body: GestureDetector(
          onTap: () {
            _focusNode.unfocus();
          },
          child: Consumer(
            builder: (context, ref, child) {
              return EbInfiniteScrollView<ContentBriefEntity>(
                fetchPageData: (pageKey, pageSize, filters) async {
                  final params = SearchRecordParams(
                    searchKey: query,
                    filters: filters,
                    pageNumber: pageKey,
                    pageSize: pageSize,
                  );
                  final records =
                      await ref.read(ebSearchRecordProvider(params).future);
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
                filterOptions: const [],
                enableSearch: false,
                enableFilter: false,
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
            },
          ),
        ),
      ),
    );
  }

  _buildAppBar({
    required Function(String) onSubmitted,
  }) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: TextField(
          focusNode: _focusNode,
          decoration: InputDecoration(
            hintText: 'Search for a case record',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          ),
          onSubmitted: (value) {
            onSubmitted(value.trim());
          },
        ),
      ),
    );
  }
}
