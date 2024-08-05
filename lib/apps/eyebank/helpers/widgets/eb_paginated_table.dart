import 'dart:async';

import 'package:flutter/material.dart';

class EBPaginatedTable<T> extends StatefulWidget {
  final List<String> headers;
  final DataRow Function(T) rowBuilder;
  final List<String> filterOptions;
  final bool Function(T, String) filterMatcher;
  final bool Function(T, String) searchMatcher;
  final Future<List<T>> Function(int pageNumber, int pageSize,
      String searchQuery, String? selectedFilter) fetchData;

  const EBPaginatedTable({
    Key? key,
    required this.headers,
    required this.rowBuilder,
    required this.filterOptions,
    required this.filterMatcher,
    required this.searchMatcher,
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
        DropdownButton<String>(
          value: selectedFilter,
          hint: const Text('Filter'),
          onChanged: (value) {
            setState(() {
              selectedFilter = value;
              currentPage = 0;
              _fetchData();
            });
          },
          items: widget.filterOptions.map((filter) {
            return DropdownMenuItem<String>(
              value: filter,
              child: Text(filter),
            );
          }).toList(),
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
