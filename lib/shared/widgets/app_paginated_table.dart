import 'package:eye_care_for_all/apps/eyebank/backlog/technician/dashboard/presentation/widgets/technician_home_filtertabs.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppPaginatedTable<T> extends StatefulWidget {
  final List<T> data;
  final List<String> columnNames;
  final DataTableSource dataSource;
  final void Function(T)? onRowSelected;
  final bool showCheckboxColumn;
  final void Function(int, bool)? onSort;
  final List<T> Function(String)? onSearch;
  final void Function(int)? onPageChanged;

  const AppPaginatedTable({
    Key? key,
    required this.data,
    required this.columnNames,
    required this.dataSource,
    this.onRowSelected,
    this.showCheckboxColumn = false,
    this.onSort,
    this.onSearch,
    this.onPageChanged,
  }) : super(key: key);

  @override
  State<AppPaginatedTable<T>> createState() => _AppPaginatedTableState<T>();
}

class _AppPaginatedTableState<T> extends State<AppPaginatedTable<T>> {
  late List<T> _filteredData;

  @override
  void initState() {
    super.initState();
    _filteredData = widget.data;
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (widget.onSearch != null)
          AppSearchFilterTabs(
            onSearch: (searchTerm) {
              setState(() {
                _filteredData = widget.onSearch!(searchTerm);
              });
            },
          ),
        if (widget.onSearch != null) const SizedBox(height: 16),
        PaginatedDataTable(
          rowsPerPage: isMobile ? 7 : (isTablet ? 7 : 10),
          source: widget.dataSource,
          availableRowsPerPage: const [5, 10, 20, 30],
          showCheckboxColumn: widget.showCheckboxColumn,
          // columnSpacing: isMobile
          //     ? AppSize.width(context) * 0.02
          //     : (isTablet
          //         ? AppSize.width(context) * 0.02
          //         : AppSize.width(context) * 0.03),
          headingRowHeight: isMobile
              ? AppSize.kl * 2.5
              : (isTablet ? AppSize.kl * 2 : AppSize.kl * 2.5),
          dataRowMaxHeight: isMobile
              ? AppSize.kl * 3
              : (isTablet ? AppSize.kl * 2.5 : AppSize.kl * 3),
          dataRowMinHeight: isMobile
              ? AppSize.kl * 2
              : (isTablet ? AppSize.kl * 1.5 : AppSize.kl * 2),
          onSelectAll: (bool? value) {
            if (widget.onRowSelected != null) {
              widget.data.forEach(widget.onRowSelected!);
            }
          },
          onPageChanged: widget.onPageChanged,
          columns: widget.columnNames
              .map(
                (columnName) => DataColumn(
                  tooltip: columnName,
                  label: Flexible(
                    child: Text(
                      columnName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                  onSort: widget.onSort,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
