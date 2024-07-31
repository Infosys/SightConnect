import 'package:flutter/material.dart';

import '../../../../../../../shared/constants/app_color.dart';
import '../../../../../../../shared/theme/text_theme.dart';

class AdminReturnRequestDataSource extends DataTableSource {
  final BuildContext context;
  final List<Map<String, String>> data;
  AdminReturnRequestDataSource({
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
          onTap: () {
            // final navigator = Navigator.of(context);
            // navigator.push(MaterialPageRoute(builder: (context) {
            //   return const AdminRequestDetailPage();
            // }));
          },
          Text(
            "${data[index]['TR ID']}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.blue,
                fontWeight: FontWeight.w500),
          ),
        ),
        DataCell(
          onTap: () {},
          Text(
            "${data[index]["Tissue ID"]}",
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
            "${data[index]["Return Reason"]}",
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
            "${data[index]["Tissue Sent To"]}",
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
            "${data[index]["Return Date"]}",
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
            "${data[index]["Re-distribution Possible"]}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.black,
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

_getColor(String priority) {
  switch (priority) {
    case "Pending":
      return AppColor.lightRed;
    case "In Transit":
      return AppColor.yellow.withOpacity(0.2);
    case "Delivered":
      return AppColor.lightGreen;
    default:
      return AppColor.grey;
  }
}
