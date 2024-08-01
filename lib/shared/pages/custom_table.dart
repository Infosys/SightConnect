import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

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
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    filteredData = widget.data;
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
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
    const debounceTime = Duration(milliseconds: 500);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: const InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(),
        ),
        onChanged: (query) {
          if (_debounce?.isActive ?? false) _debounce?.cancel();
          _debounce = Timer(debounceTime, () {
            setState(() {
              searchQuery = query;
              _filterData();
            });
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
    final displayedRows = _getDisplayedRows();

    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: constraints.maxWidth),
            child: DataTable(
              columns: _buildColumns(),
              rows: displayedRows.map((item) => widget.rowBuilder(item)).toList(),
            ),
          ),
        );
      },
    );
  }

  List<T> _getDisplayedRows() {
    return filteredData
        .skip(currentPage * rowsPerPage)
        .take(rowsPerPage)
        .toList();
  }

  List<DataColumn> _buildColumns() {
    return widget.headers
        .map((header) => DataColumn(
              label: Expanded(
                child: Text(header),
              ),
            ))
        .toList();
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

class TableData {
  final String id;
  final String name;
  final String description;

  TableData({required this.id, required this.name, required this.description});

  factory TableData.fromJson(Map<String, dynamic> json) {
    return TableData(
      id: json['id'],
      name: json['name'],
      description: json['description'],
    );
  }
}

class ApiService {
  static const String _apiUrl = 'https://api.example.com/data';

  Future<List<TableData>> fetchData() async {
    var dio = Dio();
    final response = await dio.get(_apiUrl);

    if (response.statusCode == 200) {
      if (response.data is List) {
        List jsonResponse = response.data;
        return jsonResponse.map((item) => TableData.fromJson(item)).toList();
      } else {
        throw Exception('Invalid data format');
      }
    } else {
      throw Exception(
          'Failed to load data with status: ${response.statusCode}');
    }
  }

  Future<List<TableData>> fetchMockData() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 2));

    // Mock data
    List<Map<String, dynamic>> mockData = [
      {"id": "1", "name": "Apple", "description": "A delicious red apple"},
      {"id": "2", "name": "Banana", "description": "A ripe yellow banana"},
      {"id": "3", "name": "Cherry", "description": "A sweet red cherry"},
      {"id": "4", "name": "Date", "description": "A tasty date fruit"},
      {
        "id": "5",
        "name": "Elderberry",
        "description": "A nutritious elderberry"
      },
      {"id": "6", "name": "Fig", "description": "A sweet fig fruit"},
      {"id": "7", "name": "Grape", "description": "A bunch of juicy grapes"},
      {
        "id": "8",
        "name": "Honeydew",
        "description": "A refreshing honeydew melon"
      },
      {
        "id": "9",
        "name": "Ice Cream Bean",
        "description": "An exotic ice cream bean fruit"
      },
      {
        "id": "10",
        "name": "Jackfruit",
        "description": "A large and tasty jackfruit"
      },
      {"id": "11", "name": "Kiwi", "description": "A tangy kiwi fruit"},
      {"id": "12", "name": "Lemon", "description": "A sour lemon fruit"},
      {"id": "13", "name": "Mango", "description": "A sweet and juicy mango"},
      {
        "id": "14",
        "name": "Nectarine",
        "description": "A ripe nectarine fruit"
      },
      {"id": "15", "name": "Orange", "description": "A juicy orange fruit"},
      {"id": "16", "name": "Papaya", "description": "A sweet papaya fruit"},
      {"id": "17", "name": "Quince", "description": "A rare quince fruit"},
      {
        "id": "18",
        "name": "Raspberry",
        "description": "A handful of raspberries"
      },
      {
        "id": "19",
        "name": "Strawberry",
        "description": "A sweet strawberry fruit"
      },
      {"id": "20", "name": "Tomato", "description": "A ripe tomato fruit"},
    ];

    // Convert mock data to List<TableData>
    return mockData.map((item) => TableData.fromJson(item)).toList();
  }
}

class MyTablePage extends StatelessWidget {
  MyTablePage({Key? key}) : super(key: key);

  final ApiService _apiService = ApiService();

  bool searchFunction(TableData item, String query) {
    return item.id.toLowerCase().contains(query.toLowerCase()) ||
        item.name.toLowerCase().contains(query.toLowerCase()) ||
        item.description.toLowerCase().contains(query.toLowerCase());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generic Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<TableData>>(
          future: _apiService.fetchMockData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              debugPrint(snapshot.error.toString());
              return const Text('An error occurred, please try again later');
            } else {
              return GenericPaginatedTable<TableData>(
                data: snapshot.data!,
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
              );
            }
          },
        ),
      ),
    );
  }
}

// class Debouncer {
//   Debouncer({required this.milliseconds});
//   final int milliseconds;
//   Timer? _timer;
//   void run(VoidCallback action) {
//     if (_timer?.isActive ?? false) {
//       _timer?.cancel();
//     }
//     _timer = Timer(Duration(milliseconds: milliseconds), action);
//   }
// }

// final debouncer = Debouncer(milliseconds: 500);
// debouncer.run(() {
//    // put the code that you want to debounce
//    // example: calling an API, adding a BLoC event
// });
