import 'dart:async';

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// Constants
const String apiUrl = 'https://api.example.com/data';

//Services

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
  final int rowsPerPage = 5;
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
      children: [
        if (Responsive.isMobile(context)) _buildSearchBar(),
        if (Responsive.isMobile(context)) const SizedBox(height: 16),
        if (Responsive.isMobile(context)) _buildFilterChips(),
        if (Responsive.isMobile(context)) const SizedBox(height: 16),
        if (!Responsive.isMobile(context))
          Row(
            children: [
              Expanded(child: _buildFilterChips()),
              const SizedBox(width: 16),
              _buildSearchBar(),
            ],
          ),
        _buildPaginatedTable(),
        const SizedBox(height: 8),
        _buildPaginationControls(totalPages),
      ],
    );
  }

  Widget _buildSearchBar() {
    const debounceTime = Duration(milliseconds: 200);
    return SizedBox(
      width: Responsive.isMobile(context)
          ? double.infinity
          : AppSize.width(context) * 0.3,
      child: TextField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 22.0, horizontal: 20),
          hintText: 'Search...',
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 8, right: 8),
            child: Icon(
              Icons.search,
              size: 30,
            ),
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: widget.filterOptions.map((filter) {
          return Padding(
            padding: const EdgeInsets.only(right: AppSize.km),
            child: ChoiceChip(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
              label: Text(filter),
              selected: selectedFilter == filter,
              onSelected: (selected) {
                setState(() {
                  selectedFilter = selected ? filter : null;
                  _filterData();
                });
              },
              selectedColor: selectedFilter == filter
                  ? AppColor.primary
                  : AppColor.lightGrey,
              labelStyle: applyRobotoFont(
                color:
                    selectedFilter == filter ? AppColor.white : AppColor.black,
                fontSize: 12,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildPaginatedTable() {
    final displayedRows = _getDisplayedRows();

    return Expanded(
      child: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (Responsive.isMobile(context)) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: displayedRows.length,
                itemBuilder: (context, index) {
                  final cells = widget.rowBuilder(displayedRows[index]).cells;
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ), // adjust this value to control the border radius
                    ),
                    margin: const EdgeInsets.fromLTRB(
                        8, 0, 8, 8), // margin around the Card
                    child: GridView.count(
                      padding: const EdgeInsets.all(16),
                      shrinkWrap: true,
                      crossAxisCount: 2, // number of columns
                      childAspectRatio: 2,
                      children: List<Widget>.generate(
                        cells.length,
                        (cellIndex) {
                          return Wrap(
                            children: [
                              Text(
                                '${widget.headers[cellIndex]}: ',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              cells[cellIndex].child,
                            ],
                          );
                        },
                      ),
                    ),
                  );
                },
              );
            }
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: const EdgeInsets.all(16.0),
                constraints: BoxConstraints(minWidth: constraints.maxWidth),
                child: DataTable(
                  dataTextStyle: applyRobotoFont(
                    fontSize: 14,
                    color: AppColor.black,
                  ),
                  dataRowMaxHeight: 65,
                  headingRowHeight: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColor.white,
                  ),
                  columns: _buildColumns(),
                  rows: displayedRows
                      .map((item) => widget.rowBuilder(item))
                      .toList(),
                ),
              ),
            );
          },
        ),
      ),
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed:
              currentPage > 0 ? () => setState(() => currentPage--) : null,
        ),
        Text('Page ${currentPage + 1} of $totalPages'),
        IconButton(
          icon: const Icon(Icons.chevron_right),
          onPressed: currentPage < totalPages - 1
              ? () => setState(() => currentPage++)
              : null,
        ),
      ],
    );
  }
}

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
                  'Sample ID',
                  'Date',
                  'Donor',
                  'Tissue',
                  'Eye',
                  'Category',
                  'Status',
                ],
                rowBuilder: (item) => _buildDataRow(item, context),
                filterOptions: const [
                  'Completed',
                  'Pending',
                  'All',
                  'None',
                ],
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
        DataCell(_buildStatusCell(item, context)),
      ],
    );
  }

  Widget _buildStatusCell(TableData item, BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Text(item.status);
    }
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      decoration: BoxDecoration(
        color: item.status.toLowerCase() == 'completed'
            ? AppColor.lightGreen
            : AppColor.lightRed,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(item.status,
          style: applyRobotoFont(
            color: Colors.black,
            fontSize: 12,
          )),
    );
  }
}
