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
    return Column(
      children: [
        _buildSearchBar(),
        _buildFilterChips(),
        _buildPaginatedTable(),
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
    final totalPages = (filteredData.length / rowsPerPage).ceil();

    return Column(
      children: [
        DataTable(
          columns: widget.headers
              .map((header) => DataColumn(label: Text(header)))
              .toList(),
          rows: displayedRows.map((item) => widget.rowBuilder(item)).toList(),
        ),
        _buildPaginationControls(totalPages),
      ],
    );
  }

  Widget _buildPaginationControls(int totalPages) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
    TableData(id: '1', name: 'Item 1', description: 'Description 1'),
    TableData(id: '2', name: 'Item 2', description: 'Description 2'),
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
          searchMatcher: (item, query) =>
              item.name.contains(query) || item.description.contains(query),
        ),
      ),
    );
  }
}
