import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_table_card.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class EbInfiniteScrollView extends StatefulWidget {
  const EbInfiniteScrollView({super.key});

  @override
  State<EbInfiniteScrollView> createState() => _EbInfiniteScrollViewState();
}

class _EbInfiniteScrollViewState extends State<EbInfiniteScrollView> {
  static const _pageSize = 20;
  final PagingController<int, Item> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      // Simulate network delay
      await Future.delayed(const Duration(seconds: 2));

      // Generate dummy data
      final newItems = List.generate(
        _pageSize,
        (index) => Item(
          'Item ${pageKey + index + 1}',
          'Description for item ${pageKey + index + 1}',
        ),
      );

      // Check if it's the last page
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, Item>(
      padding: const EdgeInsets.all(0),
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) => const EbTableCard(),
        firstPageErrorIndicatorBuilder: (context) => const SizedBox(
          height: 100,
          child: Center(
            child: Text('Error loading first page'),
          ),
        ),
        noItemsFoundIndicatorBuilder: (context) => const SizedBox(
          height: 100,
          child: Center(
            child: Text('No items found'),
          ),
        ),
        newPageErrorIndicatorBuilder: (context) => const SizedBox(
          height: 100,
          child: Center(
            child: Text('Error loading new page'),
          ),
        ),
        firstPageProgressIndicatorBuilder: (context) => const SizedBox(
          height: 100,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        newPageProgressIndicatorBuilder: (context) => const SizedBox(
          height: 100,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        noMoreItemsIndicatorBuilder: (context) => const SizedBox(
          height: 100,
          child: Center(
            child: Text('No more items'),
          ),
        ),
        animateTransitions: true,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    );
  }
}

class Item {
  final String name;
  final String description;

  Item(this.name, this.description);
}
