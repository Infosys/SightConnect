import 'dart:async';

import 'package:flutter/material.dart';

// Layout builder
class TableData {
  final String id;
  final String name;
  final String description;

  TableData({
    required this.id,
    required this.name,
    required this.description,
  });
}

class GenericPaginatedTable<T> extends StatefulWidget {
  final List<T> data;
  final List<String> headers;
  final DataRow Function(T) rowBuilder;
  final List<String> filterOptions;
  final bool Function(T, String) filterMatcher;
  final bool Function(T, String) searchMatcher;

  const GenericPaginatedTable({
    Key? key,
    required this.data,
    required this.headers,
    required this.rowBuilder,
    required this.filterOptions,
    required this.filterMatcher,
    required this.searchMatcher,
  }) : super(key: key);

  @override
  State<GenericPaginatedTable<T>> createState() =>
      _GenericPaginatedTableState<T>();
}

class _GenericPaginatedTableState<T> extends State<GenericPaginatedTable<T>> {
  List<T> filteredData = [];
  String searchQuery = '';
  String? selectedFilter;
  int currentPage = 0;
  final int rowsPerPage = 10;

  @override
  void initState() {
    super.initState();
    filteredData = widget.data;
  }

  void _filterData() {
    setState(() {
      filteredData = widget.data.where((item) {
        final matchesSearch =
            searchQuery.isEmpty || widget.searchMatcher(item, searchQuery);
        final matchesFilter = selectedFilter == null ||
            widget.filterMatcher(item, selectedFilter!);
        return matchesSearch && matchesFilter;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final totalPages = (filteredData.length / rowsPerPage).ceil();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildSearchBar(),
        _buildFilterChips(),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildPaginatedTable(),
              ],
            ),
          ),
        ),
        _buildPaginationControls(totalPages),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: const InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(),
        ),
        onChanged: (query) {
          setState(() {
            searchQuery = query;
            _filterData();
          });
        },
      ),
    );
  }

  Widget _buildFilterChips() {
    return Wrap(
      spacing: 8.0,
      children: widget.filterOptions.map((filter) {
        return ChoiceChip(
          label: Text(filter),
          selected: selectedFilter == filter,
          onSelected: (selected) {
            setState(() {
              selectedFilter = selected ? filter : null;
              _filterData();
            });
          },
        );
      }).toList(),
    );
  }

  Widget _buildPaginatedTable() {
    final displayedRows =
        filteredData.skip(currentPage * rowsPerPage).take(rowsPerPage).toList();

    return DataTable(
      columns: widget.headers
          .map((header) => DataColumn(label: Text(header)))
          .toList(),
      rows: displayedRows.map((item) => widget.rowBuilder(item)).toList(),
    );
  }

  Widget _buildPaginationControls(int totalPages) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: currentPage > 0
              ? () {
                  setState(() {
                    currentPage--;
                  });
                }
              : null,
        ),
        Text('Page ${currentPage + 1} of $totalPages'),
        IconButton(
          icon: const Icon(Icons.chevron_right),
          onPressed: currentPage < totalPages - 1
              ? () {
                  setState(() {
                    currentPage++;
                  });
                }
              : null,
        ),
      ],
    );
  }
}

class MyTablePage extends StatelessWidget {
  final List<TableData> data = [
    TableData(id: '1', name: 'Arpit', description: 'Description 1'),
    TableData(id: '2', name: 'Bhavesh', description: 'Description 2'),
    TableData(id: '3', name: 'C', description: 'Description 3'),
    TableData(id: '4', name: 'D', description: 'Description 4'),
    TableData(id: '5', name: 'E', description: 'Description 5'),
    TableData(id: '6', name: 'F', description: "Description"),
    TableData(id: '7', name: 'G', description: 'Description 7'),
    TableData(id: '8', name: 'H', description: 'Description 8'),
    TableData(id: '9', name: 'I', description: 'Description 9'),
    TableData(id: '10', name: 'J', description: 'Description 10'),
    TableData(id: '11', name: 'K', description: 'Description 11'),
    TableData(id: '12', name: 'L', description: 'Description 12'),
    TableData(id: '13', name: 'Mehul', description: 'Description 13'),
    TableData(id: '14', name: 'N', description: 'Description 14'),
    TableData(id: '15', name: 'O', description: 'Description 15'),
    // Add more data as needed
  ];

  MyTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generic Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GenericPaginatedTable<TableData>(
          data: data,
          headers: const ['ID', 'Name', 'Description'],
          rowBuilder: (item) => DataRow(
            cells: [
              DataCell(Text(item.id)),
              DataCell(Text(item.name)),
              DataCell(Text(item.description)),
            ],
          ),
          filterOptions: const ['Option 1', 'Option 2'],
          filterMatcher: (item, filter) => item.name.contains(filter),
          searchMatcher: (item, query) => searchFunction(item, query),
        ),
      ),
    );
  }
}

bool searchFunction(TableData item, String query) {
  return item.id.toLowerCase().contains(query.toLowerCase()) ||
      item.name.toLowerCase().contains(query.toLowerCase()) ||
      item.description.toLowerCase().contains(query.toLowerCase());
}

class Debouncer {
  Debouncer({required this.milliseconds});
  final int milliseconds;
  Timer? _timer;
  void run(VoidCallback action) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}

// final debouncer = Debouncer(milliseconds: 500);
// debouncer.run(() {
//    // put the code that you want to debounce
//    // example: calling an API, adding a BLoC event
// });
