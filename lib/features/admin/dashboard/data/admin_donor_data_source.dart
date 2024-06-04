import 'package:flutter/material.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../shared/theme/text_theme.dart';

class AdminDonorDataSource extends DataTableSource {
  final BuildContext context;
  final List<Map<String, String>> data;
  AdminDonorDataSource({
    required this.context,
    required this.data,
  });

  @override
  DataRow? getRow(int index) {
    if (index >= data.length) {
      return null; // No more rows to display
    }

    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(
          onTap: () {},
          Text(
            "${data[index]['Sample ID']}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.blue,
            ),
          ),
        ),
        DataCell(
          onTap: () {},
          Text(
            "${data[index]["TissueExpiry"]}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.black,
            ),
          ),
        ),
        DataCell(
          onTap: () {},
          Flexible(
            child: Text(
              "${data[index]["Delivery"]}",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.black,
              ),
            ),
          ),
        ),
        DataCell(
          onTap: () {},
          Text(
            "${data[index]["Tissue"]}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.black,
            ),
          ),
        ),
        DataCell(
          onTap: () {},
          Text(
            "${data[index]["ApprovedUsages"]}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.black,
            ),
          ),
        ),
        DataCell(
          onTap: () {},
          Text(
            "${data[index]["Match"]}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.black,
            ),
          ),
        ),
        DataCell(
          onTap: () {},
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: AppColor.primary,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Text(
              "${data[index]["Priority"]}",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // TODO: implement rowCount
  int get rowCount => data.length;

  @override
  // TODO: implement selectedRowCount
  int get selectedRowCount => 0;
}
