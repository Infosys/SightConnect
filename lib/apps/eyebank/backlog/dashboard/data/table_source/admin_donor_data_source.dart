import 'package:flutter/material.dart';

import '../../../../../../shared/constants/app_color.dart';
import '../../../../../../shared/theme/text_theme.dart';

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
          Text(
            "${data[index]["Delivery"]}",
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
          Chip(
            backgroundColor: _getPercentageColor(data[index]["Match"]!),
            label: Text(
              data[index]["Match"]!,
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
          Chip(
            labelPadding: const EdgeInsets.all(8),
            backgroundColor: AppColor.primary,
            label: Text(
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

  _getPercentageColor(String percentage) {
    final value = percentage.replaceAll("%", "");
    final doubleValue = double.parse(value);
    if (doubleValue >= 90) {
      return AppColor.lightGreen;
    } else if (doubleValue >= 70) {
      return AppColor.yellow.withOpacity(0.2);
    } else {
      return AppColor.lightRed;
    }
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
