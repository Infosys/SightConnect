import 'dart:async';

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

// Widgets
class EBPaginatedTable<T> extends StatefulWidget {
  final List<T> data;
  final List<String> headers;
  final DataRow Function(T) rowBuilder;
  final List<String> filterOptions;
  final bool Function(T, String) filterMatcher;
  final bool Function(T, String) searchMatcher;

  const EBPaginatedTable({
    Key? key,
    required this.data,
    required this.headers,
    required this.rowBuilder,
    required this.filterOptions,
    required this.filterMatcher,
    required this.searchMatcher,
  }) : super(key: key);

  @override
  EBPaginatedTableState<T> createState() => EBPaginatedTableState<T>();
}

class EBPaginatedTableState<T> extends State<EBPaginatedTable<T>> {
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

    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (Responsive.isMobile(context)) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: displayedRows.length,
              itemBuilder: (context, index) {
                final cells = widget.rowBuilder(displayedRows[index]).cells;
                final headers = widget.headers;
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: const EdgeInsets.all(8.0),
                  child: Wrap(
                    children: [
                      for (var cell in cells)
                        Container(
                          margin: const EdgeInsets.all(16.0),
                          child: Wrap(
                            children: [
                              Text(
                                "${headers[cells.indexOf(cell)]} : ",
                                style: applyRobotoFont(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.black,
                                ),
                              ),
                              cell.child,
                            ],
                          ),
                        ),
                    ],
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
