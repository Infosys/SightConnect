import 'package:eye_care_for_all/features/technician/dashboard/data/fake_data_source.dart';
import 'package:eye_care_for_all/features/technician/dashboard/data/technician_paginated_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_size.dart';
import '../../../../../shared/theme/text_theme.dart';

class TechnicianHomeTable extends HookWidget {
  const TechnicianHomeTable({super.key});

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      rowsPerPage: 7,
      source: TechnicianPaginatedDataSource(
        data: TechnicianFakeDataSource.getSampleData(),
        context: context,
      ),
      availableRowsPerPage: const [10, 20, 30],
      showCheckboxColumn: false,
      columnSpacing: AppSize.width(context) * 0.03,
      headingRowHeight: AppSize.kl * 2,
      dataRowMaxHeight: AppSize.kl * 2.5,
      dataRowMinHeight: AppSize.kl * 1.5,
      columns: [
        ...["Sample ID", "Date", "Donor", "Tissue", "Eye", "Category", "Status"]
            .map(
          (data) => DataColumn(
            tooltip: data,
            label: Text(
              data,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: applyFiraSansFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
