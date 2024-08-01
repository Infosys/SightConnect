import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// Constants
const String apiUrl = 'https://api.example.com/data';

//Models
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

//Services
class ApiService {
  final Dio _dio = Dio();

  Future<List<TableData>> fetchData() async {
    final response = await _dio.get(apiUrl);

    if (response.statusCode == 200) {
      if (response.data is List) {
        return (response.data as List)
            .map((item) => TableData.fromJson(item))
            .toList();
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
    List<Map<String, dynamic>> mockData = _getMockData();

    // Convert mock data to List<TableData>
    return mockData.map((item) => TableData.fromJson(item)).toList();
  }

  List<Map<String, dynamic>> _getMockData() {
    return [
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
  }
}

// Widgets
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
  GenericPaginatedTableState<T> createState() =>
      GenericPaginatedTableState<T>();
}

class GenericPaginatedTableState<T> extends State<GenericPaginatedTable<T>> {
  late List<T> filteredData;
  String searchQuery = '';
  String? selectedFilter;
  int currentPage = 0;
  final int rowsPerPage = 10;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    filteredData = List.from(widget.data);
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
            child: _buildPaginatedTable(),
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
          _debounce?.cancel();
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

class MyTablePage extends StatelessWidget {
  MyTablePage({Key? key}) : super(key: key);

  final ApiService _apiService = ApiService();

  bool searchFunction(TableData item, String query) {
    final lowerCaseQuery = query.toLowerCase();
    return item.sampleID.toLowerCase().contains(lowerCaseQuery) ||
        item.date.toString().toLowerCase().contains(lowerCaseQuery) ||
        item.donor.toLowerCase().contains(lowerCaseQuery) ||
        item.tissue.toLowerCase().contains(lowerCaseQuery) ||
        item.eye.toLowerCase().contains(lowerCaseQuery) ||
        item.category.toLowerCase().contains(lowerCaseQuery) ||
        item.status.toLowerCase().contains(lowerCaseQuery);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generic Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                  'Status',
                  '',
                ],
                rowBuilder: (item) => _buildDataRow(item, context),
                filterOptions: const ['Completed', 'Pending'],
                filterMatcher: (item, filter) => item.status.contains(filter),
                searchMatcher: searchFunction,
              );
            }
          },
        ),
      ),
    );
  }

  DataRow _buildDataRow(TableData item, BuildContext context) {
    return DataRow(
      // color: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
      //   if (states.contains(WidgetState.selected)) {
      //     return Theme.of(context).colorScheme.primary.withOpacity(0.08);
      //   }
      //   if (item.status == 'Completed') return Colors.green[100];
      //   return null; // Use default value for other states
      // }),
      cells: [
        DataCell(Text(item.sampleID)),
        DataCell(Text(item.date.toString())),
        DataCell(Text(item.donor)),
        DataCell(Text(item.tissue)),
        DataCell(Text(item.eye)),
        DataCell(Text(item.category)),
        DataCell(_buildStatusCell(item)),
        const DataCell(Icon(Icons.arrow_forward_ios)),
      ],
    );
  }

  Widget _buildStatusCell(TableData item) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: item.status.toLowerCase() == 'completed'
            ? Colors.green
            : Colors.yellow,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        item.status,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
