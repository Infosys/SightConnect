import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppPaginatedTable extends StatelessWidget {
  final int pageSize;
  final DataTableSource dataSource;
  final Function(int?)? onRowsPerPageChanged;
  final List<String> columnNames;
  final List<int> availableRowsPerPage;

  const AppPaginatedTable({
    super.key,
    required this.pageSize,
    required this.dataSource,
    required this.onRowsPerPageChanged,
    required this.columnNames,
    this.availableRowsPerPage = const [10, 20, 50],
  });

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Row(
      children: [
        Expanded(
          child: PaginatedDataTable(
            rowsPerPage: pageSize,
            source: dataSource,
            onRowsPerPageChanged: onRowsPerPageChanged,
            availableRowsPerPage: availableRowsPerPage,
            showCheckboxColumn: false,
            headingRowHeight: isMobile ? AppSize.kl * 2 : AppSize.kl * 3,
            dataRowMaxHeight: isMobile ? AppSize.kl * 3 : AppSize.kl * 3.5,
            dataRowMinHeight: isMobile ? AppSize.kl * 1 : AppSize.kl * 2,
            columns: columnNames
                .map(
                  (e) => DataColumn(
                    label: Text(
                      e.capitalizeFirstOfEach(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
