import 'package:eye_care_for_all/apps/eyebank/features/technician/organ_harvest/presentation/pages/organ_harvest_page.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:flutter/material.dart';

import '../../../../../../shared/constants/app_color.dart';
import '../../../../../../shared/theme/text_theme.dart';

class TechnicianPaginatedDataSource extends DataTableSource {
  final BuildContext context;
  final List<Map<String, String>> data;
  TechnicianPaginatedDataSource({
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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const OrganHarvestPage();
            }));
          },
          Text(
            "${data[index]['sampleId']}",
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
            "${data[index]["Date"]}",
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
                      "${data[index]["Donor"]}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: AppColor.black,
                      ),
                    ),
                    const SizedBox(height: AppSize.ks),
                    Text(
                      "ID 234532",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: applyRobotoFont(
                        fontSize: 14,
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
          Text(
            "${data[index]["Category"]}",
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
            backgroundColor: _getStatusColor(data[index]["Status"]!),
            label: Text(
              "${data[index]["Status"]}",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _getStatusColor(String status) {
    final value = status.toLowerCase();
    if (value == "completed") {
      return AppColor.lightGreen;
    } else if (value == "pending") {
      return AppColor.yellow.withOpacity(0.3);
    } else {
      return AppColor.grey;
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
