import 'dart:async';

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EBPaginatedTable<T> extends StatefulWidget {
  final List<String> headers;
  final DataRow Function(T) rowBuilder;
  final List<String> filterOptions;
  final int totalPages;
  final Future<List<T>> Function(
    int pageNumber,
    String searchQuery,
    String? selectedFilter,
  ) fetchData;

  const EBPaginatedTable({
    Key? key,
    required this.headers,
    required this.rowBuilder,
    required this.filterOptions,
    required this.totalPages,
    required this.fetchData,
  }) : super(key: key);

  @override
  EBPaginatedTableState<T> createState() => EBPaginatedTableState<T>();
}

class EBPaginatedTableState<T> extends State<EBPaginatedTable<T>> {
  late List<T> data;
  String searchQuery = '';
  String? selectedFilter;
  int currentPage = 0;
  Timer? _debounce;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      setState(() {
        searchQuery = query;
        selectedFilter = null;
        currentPage = 0;
        _fetchData();
      });
    });
  }

  void _fetchData() async {
    setState(() {
      isLoading = true;
    });
    data = await widget.fetchData(
      currentPage,
      searchQuery,
      selectedFilter,
    );
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSearchBar(context),
        _buildFilterChips(context),
        Expanded(
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: widget.headers
                          .map((header) => DataColumn(label: Text(header)))
                          .toList(),
                      rows:
                          data.map((item) => widget.rowBuilder(item)).toList(),
                    ),
                  ),
                ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: currentPage > 0
                  ? () => setState(() {
                        currentPage--;
                        _fetchData();
                      })
                  : null,
            ),
            Text('Page ${currentPage + 1} of ${widget.totalPages}'),
            IconButton(
              icon: const Icon(Icons.chevron_right),
              onPressed: currentPage < widget.totalPages - 1
                  ? () => setState(() {
                        currentPage++;
                        _fetchData();
                      })
                  : null,
            ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  Widget _buildFilterChips(context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Wrap(
        spacing: 8,
        children: widget.filterOptions.map((filter) {
          return ChoiceChip(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
            label: Text(filter),
            selected: selectedFilter == filter,
            onSelected: (selected) {
              setState(() {
                selectedFilter = selected ? filter : null;
                currentPage = 0;
                _fetchData();
              });
            },
            selectedColor: selectedFilter == filter
                ? AppColor.primary
                : AppColor.lightGrey,
            labelStyle: applyRobotoFont(
              color: selectedFilter == filter ? AppColor.white : AppColor.black,
              fontSize: 12,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
          hintText: 'Search...',
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Icon(
              Icons.search,
              size: 28,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              color: AppColor.primary,
              width: 1.0,
            ),
          ),
        ),
        onChanged: _onSearchChanged,
      ),
    );
  }
}
