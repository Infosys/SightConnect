import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/presentation/widget/filter_bottom_sheet.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class EbInfiniteScrollView<T> extends StatefulWidget {
  final Future<List<T>> Function(
      int pageKey, int pageSize, List<Filter> filters) fetchPageData;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final bool enableSearch;
  final bool enableFilter;
  final List<Filter>? filterOptions;
  final int defaultPageSize;
  final VoidCallback? onSearchTap;

  EbInfiniteScrollView({
    super.key,
    required this.fetchPageData,
    required this.itemBuilder,
    this.enableSearch = false,
    this.enableFilter = false,
    this.defaultPageSize = 10,
    this.filterOptions,
    this.onSearchTap,
  }) {
    if (enableFilter) {
      if (filterOptions == null) {
        throw ArgumentError(
            'filterOptions are required when enableFilter is true');
      }
    }
    if (enableSearch) {
      if (onSearchTap == null) {
        throw ArgumentError(
            'onSearchTap is required when enableSearch is true');
      }
    }
  }

  @override
  EbInfiniteScrollViewState<T> createState() => EbInfiniteScrollViewState<T>();
}

class EbInfiniteScrollViewState<T> extends State<EbInfiniteScrollView<T>> {
  int _pageSize = 0;
  late PagingController<int, T> _pagingController;
  final TextEditingController _searchController = TextEditingController();
  final List<Filter> _selectedFilters = [];

  @override
  void initState() {
    _pageSize = widget.defaultPageSize;
    _pagingController = PagingController(firstPageKey: 0);
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    _pagingController.addListener(() {
      setState(() {
        logger.d("Next Page Key: ${_pagingController.nextPageKey}");
      });
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems =
          await widget.fetchPageData(pageKey, _pageSize, _selectedFilters);

      // Check if the response is empty
      if (newItems.isEmpty) {
        if (!mounted) return;
        _pagingController.appendLastPage([]);
        return;
      }

      final isLastPage = newItems.length < _pageSize;
      if (!mounted) return;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } on EBFailure catch (e, _) {
      if (!mounted) return;
      logger.e(e);
      _pagingController.error = e.errorMessage;
    } catch (error) {
      if (!mounted) return;
      logger.e(error);
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          if (widget.enableSearch || widget.enableFilter)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: widget.enableSearch
                        ? InkWell(
                            onTap: widget.onSearchTap,
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 12),
                                  const Icon(
                                    Icons.search,
                                    color: AppColor.grey,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    'Search',
                                    style: applyRobotoFont(
                                      fontSize: 14,
                                      color: AppColor.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : widget.enableFilter
                            ? Text(
                                'Total ${_pagingController.itemList?.length ?? 0} Records')
                            : Container(),
                  ),
                  if (widget.enableFilter)
                    IconButton(
                      icon: const Icon(Icons.filter_list),
                      onPressed: () {
                        _showFilterBottomSheet();
                      },
                    ),
                ],
              ),
            ),
          PagedListView<int, T>(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate<T>(
              itemBuilder: widget.itemBuilder,
              firstPageErrorIndicatorBuilder: (context) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Error loading data'),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () => _pagingController.refresh(),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              firstPageProgressIndicatorBuilder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
              newPageErrorIndicatorBuilder: (context) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Error loading data'),
                    ElevatedButton(
                      onPressed: () =>
                          _pagingController.retryLastFailedRequest(),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              newPageProgressIndicatorBuilder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
              noItemsFoundIndicatorBuilder: (context) => const Center(
                child: Text('No items found'),
              ),
              noMoreItemsIndicatorBuilder: (context) => const Center(
                child: SizedBox(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return FilterBottomSheet(
          filterOptions: widget.filterOptions!,
          selectedFilters: _selectedFilters,
          onApply: (selectedFilters) {
            setState(() {
              _selectedFilters.clear();
              _selectedFilters.addAll(selectedFilters);
            });
            _pagingController.refresh();
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    _searchController.dispose();

    super.dispose();
  }
}
