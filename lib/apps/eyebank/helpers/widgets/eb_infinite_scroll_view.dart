import 'dart:async';

import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class EbInfiniteScrollView<T> extends StatefulWidget {
  final Future<List<T>> Function(int pageKey, int pageSize) fetchPageData;
  final Widget Function(BuildContext context, T item, int index) itemBuilder;
  final bool showSearch;
  final bool Function(T item, String query)? filterLogic;
  final int defaultPageSize;

  const EbInfiniteScrollView({
    super.key,
    required this.fetchPageData,
    required this.itemBuilder,
    this.showSearch = false,
    this.defaultPageSize = 20,
    this.filterLogic,
  });

  @override
  EbInfiniteScrollViewState<T> createState() => EbInfiniteScrollViewState<T>();
}

class EbInfiniteScrollViewState<T> extends State<EbInfiniteScrollView<T>> {
  int _pageSize = 10;
  late PagingController<int, T> _pagingController;
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  Timer? _debounce;

  @override
  void initState() {
    _pageSize = widget.defaultPageSize;
    _pagingController = PagingController(firstPageKey: 0);
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      logger.f('Fetching page: $pageKey');
      final newItems = await widget.fetchPageData(pageKey, _pageSize);

      final filteredItems = widget.filterLogic != null
          ? newItems
              .where((item) => widget.filterLogic!(item, _searchQuery))
              .toList()
          : newItems;

      logger.f(
          'Fetched ${newItems.length} items, ${filteredItems.length} after filtering');

      final isLastPage = filteredItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(filteredItems);
        logger.f('Appended last page');
      } else {
        final nextPageKey = pageKey + filteredItems.length;
        _pagingController.appendPage(filteredItems, nextPageKey);
        logger.f('Appended page, next page key: $nextPageKey');
      }
    } catch (error) {
      _pagingController.error = error;
      logger.f('Error fetching page: $error');
    }
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      setState(() {
        _searchQuery = _searchController.text;
      });
      _pagingController.refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        if (widget.showSearch)
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            title: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                    _onSearchChanged();
                  },
                ),
                border: const OutlineInputBorder(),
              ),
              onChanged: (value) => _onSearchChanged(),
            ),
          ),
        PagedSliverList<int, T>(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate<T>(
            itemBuilder: widget.itemBuilder,
            firstPageErrorIndicatorBuilder: (context) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Error loading data'),
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
                    onPressed: () => _pagingController.retryLastFailedRequest(),
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
