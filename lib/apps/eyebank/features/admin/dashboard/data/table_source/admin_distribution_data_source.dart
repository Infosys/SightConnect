import 'package:eye_care_for_all/apps/eyebank/features/admin/dashboard/presentation/pages/admin_request_detail_page.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';

import '../../../../../../../shared/constants/app_color.dart';
import '../../../../../../../shared/theme/text_theme.dart';

class AdminDistributionDataSource extends DataTableSource {
  final BuildContext context;
  final List<Map<String, String>> data;
  AdminDistributionDataSource({
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
            final navigator = Navigator.of(context);
            navigator.push(MaterialPageRoute(builder: (context) {
              return const AdminRequestDetailPage();
            }));
          },
          Text(
            "${data[index]['Sample ID']}",
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
            "${data[index]["Tissue Expiry"]}",
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                  backgroundColor: AppColor.lightBlueOpacity,
                  maxRadius: 18,
                  child: Icon(
                    Icons.person,
                    color: AppColor.blue,
                    size: 20,
                  )),
              const SizedBox(width: AppSize.ks),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${data[index]["Donor Name"]}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                    Text(
                      "ID 234532",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: applyRobotoFont(
                        fontSize: 10,
                        color: AppColor.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
            "${data[index]["Approved Usages"]}",
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
            "${data[index]["Eye"]}",
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
            backgroundColor: _getColor(data[index]["Status"] ?? ''),
            label: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${data[index]["Status"]}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyRobotoFont(
                  fontSize: 12,
                  color: AppColor.black,
                ),
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
