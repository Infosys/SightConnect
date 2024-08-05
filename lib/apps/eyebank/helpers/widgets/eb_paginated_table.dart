import 'dart:async';

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EBPaginatedTable<T> extends StatefulWidget {
  final List<String> headers;
  final DataRow Function(T) rowBuilder;
  final List<String> filterOptions;
  final Future<List<T>> Function(
    int pageNumber,
    int pageSize,
    String searchQuery,
    String? selectedFilter,
  ) fetchData;

  const EBPaginatedTable({
    Key? key,
    required this.headers,
    required this.rowBuilder,
    required this.filterOptions,
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
  final int rowsPerPage = 10;
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
        currentPage, rowsPerPage, searchQuery, selectedFilter);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(
              labelText: 'Search',
              border: OutlineInputBorder(),
            ),
            onChanged: _onSearchChanged,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 8,
            children: widget.filterOptions.map((filter) {
              return ChoiceChip(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
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
                  color: selectedFilter == filter
                      ? AppColor.white
                      : AppColor.black,
                  fontSize: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: isLoading
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: widget.headers
                        .map((header) => DataColumn(label: Text(header)))
                        .toList(),
                    rows: data.map((item) => widget.rowBuilder(item)).toList(),
                  ),
                ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: currentPage > 0
                  ? () {
                      setState(() {
                        currentPage--;
                        _fetchData();
                      });
                    }
                  : null,
            ),
            Text('Page ${currentPage + 1}'),
            IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  currentPage++;
                  _fetchData();
                });
              },
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
}
