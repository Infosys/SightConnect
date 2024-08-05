// import 'package:flutter/material.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// class BeerListView extends StatefulWidget {
//   const BeerListView({super.key});

//   @override
//   _BeerListViewState createState() => _BeerListViewState();
// }

// class _BeerListViewState extends State<BeerListView> {
//   static const _pageSize = 20;

//   final PagingController<int, BeerSummary> _pagingController =
//       PagingController(firstPageKey: 0);

//   @override
//   void initState() {
//     _pagingController.addPageRequestListener((pageKey) {
//       _fetchPage(pageKey);
//     });
//     super.initState();
//   }

//   Future<void> _fetchPage(int pageKey) async {
//     try {
//       final newItems = await RemoteApi.getBeerList(pageKey, _pageSize);
//       final isLastPage = newItems.length < _pageSize;
//       if (isLastPage) {
//         _pagingController.appendLastPage(newItems);
//       } else {
//         final nextPageKey = pageKey + newItems.length;
//         _pagingController.appendPage(newItems, nextPageKey);
//       }
//     } catch (error) {
//       _pagingController.error = error;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PagedListView<int, BeerSummary>(
//       pagingController: _pagingController,
//       builderDelegate: PagedChildBuilderDelegate<BeerSummary>(
//         itemBuilder: (context, item, index) => BeerListItem(
//           beer: item,
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _pagingController.dispose();
//     super.dispose();
//   }
// }

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
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) => ListTile(
          title: Text(item.name),
          subtitle: Text(item.description),
        ),
      ),
    );
  }
}

class Item {
  final String name;
  final String description;

  Item(this.name, this.description);
}
