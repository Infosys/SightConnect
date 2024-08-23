import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/domain/entities/encounter_brief_entity.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/provider/eb_case_record_provider.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/case_register_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class EBCaseSearchPage extends ConsumerStatefulWidget {
  const EBCaseSearchPage({super.key});

  @override
  _EBCaseSearchPageState createState() => _EBCaseSearchPageState();
}

class _EBCaseSearchPageState extends ConsumerState<EBCaseSearchPage> {
  final FocusNode _focusNode = FocusNode();
  static const _pageSize = 10;
  String query = '';
  SearchRecordParams param = SearchRecordParams(
    searchKey: '',
    pageNumber: 0,
    pageSize: _pageSize,
  );

  final PagingController<int, ContentBriefEntity> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });

    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      param = SearchRecordParams(
        searchKey: query,
        pageNumber: pageKey,
        pageSize: _pageSize,
      );
      final newItems = await ref.read(ebSearchRecordProvider(param).future);
      final isLastPage = (newItems.content?.length ?? 0) < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems.content ?? []);
      } else {
        final nextPageKey = pageKey + (newItems.content?.length ?? 0);
        _pagingController.appendPage(newItems.content ?? [], nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _pagingController.dispose();
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
              _pagingController.refresh();
            });
          },
        ),
        body: GestureDetector(
          onTap: () {
            _focusNode.unfocus();
          },
          child: Consumer(
            builder: (context, ref, child) {
              return PagedListView<int, ContentBriefEntity>(
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate<ContentBriefEntity>(
                  itemBuilder: (context, item, index) => EBCaseCard(
                    item: item,
                    onTap: () {},
                  ),
                  firstPageErrorIndicatorBuilder: (context) => const Center(
                    child: Text('Error loading cases'),
                  ),
                  noItemsFoundIndicatorBuilder: (context) => const Center(
                    child: Text('No cases found'),
                  ),
                ),
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
            hintText: 'Search by phone number',
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
