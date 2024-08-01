import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: TextField(
        decoration: const InputDecoration(
          labelText: 'Search',
          border: OutlineInputBorder(),
          labelStyle: TextStyle(color: Colors.blue),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Wrap(
        spacing: 16.0,
        children: widget.filterOptions.map((filter) {
          return ChoiceChip(
            label: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(filter),
            ),
            selected: selectedFilter == filter,
            onSelected: (selected) {
              setState(() {
                selectedFilter = selected ? filter : null;
                _filterData();
              });
            },
            selectedColor: Colors.blue,
            labelStyle: TextStyle(
                color: selectedFilter == filter ? Colors.white : Colors.black),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          );
        }).toList(),
      ),
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
              rows:
                  displayedRows.map((item) => widget.rowBuilder(item)).toList(),
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
  final String sampleID;
  final DateTime date;
  final String donor;
  final String tissue;
  final String eye;
  final String category;
  final String status;

  TableData({
    required this.sampleID,
    required this.date,
    required this.donor,
    required this.tissue,
    required this.eye,
    required this.category,
    required this.status,
  });

  factory TableData.fromJson(Map<String, dynamic> json) {
    return TableData(
      sampleID: json['SampleID'],
      date: DateTime.parse(json['Date']),
      donor: json['Donor'],
      tissue: json['Tissue'],
      eye: json['Eye'],
      category: json['Category'],
      status: json['Status'],
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
      {
        "SampleID": "1",
        "Date": "2022-01-01",
        "Donor": "Axel",
        "Tissue": "Cornea",
        "Eye": "Right Eye",
        "Category": "Reviews",
        "Status": "Completed"
      },
      {
        "SampleID": "2",
        "Date": "2022-01-02",
        "Donor": "Mason",
        "Tissue": "Whole Globe",
        "Eye": "Left Eye",
        "Category": "Harvests",
        "Status": "Pending"
      },
      {
        "SampleID": "3",
        "Date": "2022-01-03",
        "Donor": "Ethan",
        "Tissue": "Retina",
        "Eye": "Right Eye",
        "Category": "Reviews",
        "Status": "Completed"
      },
      {
        "SampleID": "4",
        "Date": "2022-01-04",
        "Donor": "Alexander",
        "Tissue": "Cornea",
        "Eye": "Left Eye",
        "Category": "Harvests",
        "Status": "Pending"
      }
      // Add more data as needed
    ];

    // Convert mock data to List<TableData>
    return mockData.map((item) => TableData.fromJson(item)).toList();
  }
}

class MyTablePage extends StatelessWidget {
  MyTablePage({Key? key}) : super(key: key);

  final ApiService _apiService = ApiService();

  bool searchFunction(TableData item, String query) {
    return item.sampleID.toLowerCase().contains(query.toLowerCase()) ||
        item.date.toString().toLowerCase().contains(query.toLowerCase()) ||
        item.donor.toLowerCase().contains(query.toLowerCase()) ||
        item.tissue.toLowerCase().contains(query.toLowerCase()) ||
        item.eye.toLowerCase().contains(query.toLowerCase()) ||
        item.category.toLowerCase().contains(query.toLowerCase()) ||
        item.status.toLowerCase().contains(query.toLowerCase());
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
                headers: const [
                  'SampleID',
                  'Date',
                  'Donor',
                  'Tissue',
                  'Eye',
                  'Category',
                  'Status'
                ],
                rowBuilder: (item) => DataRow(
                  cells: [
                    DataCell(Text(item.sampleID)),
                    DataCell(Text(DateFormat('d MMM yyyy').format(item.date))),
                    DataCell(Text(item.donor)),
                    DataCell(Text(item.tissue)),
                    DataCell(Text(item.eye)),
                    DataCell(Text(item.category)),
                    DataCell(Text(item.status)),
                  ],
                ),
                filterOptions: const ['Completed', 'Pending'],
                filterMatcher: (item, filter) => item.status.contains(filter),
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
