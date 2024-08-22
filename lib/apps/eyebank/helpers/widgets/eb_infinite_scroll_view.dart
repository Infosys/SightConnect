import 'dart:async';

import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class EbInfiniteScrollView<T> extends StatefulWidget {
  final Future<List<T>> Function(
      int pageKey, int pageSize, List<String> filters) fetchPageData;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final bool enableSearch;
  final bool enableFilter;
  final List<String>? filterOptions;
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
  final List<String> _selectedFilters = [];
  Timer? _debounce;

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
        _pagingController.appendLastPage([]);
        return;
      }

      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } on EBFailure catch (e, _) {
      logger.e(e);
      _pagingController.error = e.errorMessage;
    } catch (error) {
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
                child: Text('No more items'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        const Text(
                          'Filters',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _selectedFilters.clear();
                            });
                          },
                          child: const Text('Clear all'),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: widget.filterOptions!.length,
                      itemBuilder: (context, index) {
                        final filter = widget.filterOptions![index];
                        return CheckboxListTile(
                          title: Text(filter),
                          value: _selectedFilters.contains(filter),
                          onChanged: (value) {
                            setState(() {
                              if (value!) {
                                _selectedFilters.add(filter);
                              } else {
                                _selectedFilters.remove(filter);
                              }
                            });
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _pagingController.refresh();
                            Navigator.pop(context);
                          },
                          child: const Text('Apply'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }
}
