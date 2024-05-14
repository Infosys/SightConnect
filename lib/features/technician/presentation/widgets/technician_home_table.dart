import 'package:eye_care_for_all/features/technician/data/fake_data_source.dart';
import 'package:eye_care_for_all/features/technician/data/technician_paginated_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_size.dart';
import '../../../../shared/responsive/responsive.dart';
import '../../../../shared/theme/text_theme.dart';

class TechnicianHomeTable extends HookWidget {
  const TechnicianHomeTable({super.key});

  @override
  Widget build(BuildContext context) {
    var isMobile = useState<bool>(Responsive.isMobile(context));
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.km),
      child: PaginatedDataTable(
        rowsPerPage: 7,
        source: TechnicianPaginatedDataSource(
          data: TechnicianFakeDataSource.getSampleData(),
          context: context,
        ),
        // onRowsPerPageChanged: (value) {
        //   model.changePageSize(value);
        // },
        availableRowsPerPage: const [10, 20, 30],
        showCheckboxColumn: false,
        columnSpacing: AppSize.width(context) * 0.03,
        headingRowHeight: AppSize.kl * 2,
        dataRowMaxHeight: AppSize.kl * 2.5,
        dataRowMinHeight: AppSize.kl * 1.5,
        columns: [
          DataColumn(
            label: Text(
              "Sample ID",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyFiraSansFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "Date",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyFiraSansFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "Donor",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyFiraSansFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "Tissue",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: applyFiraSansFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "Eye",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: applyFiraSansFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "Category",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: applyFiraSansFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              "Status",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: applyFiraSansFont(
                fontSize: 12,
                color: AppColor.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
