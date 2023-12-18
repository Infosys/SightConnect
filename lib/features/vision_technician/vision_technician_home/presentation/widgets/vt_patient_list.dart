import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTPatientList extends StatelessWidget {
  const VTPatientList({
    required this.listOfAssessments,
    super.key,
  });

  final List<VTPatientDto> listOfAssessments;
  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      rowsPerPage: 6,
      columnSpacing: AppSize.width(context) * 0.09,
      columns: [
        DataColumn(
          label: Text(
            "Patient",
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
            "Assessment ID",
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
            "Status",
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
            "Category",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyFiraSansFont(
              fontSize: 12,
              color: AppColor.grey,
            ),
          ),
        ),
      ],
      source: _DataSource(list: listOfAssessments),
    );
  }
}

// class VTPatientList extends ConsumerWidget {
//   const VTPatientList({
//     required this.listOfAssessments,
//     super.key,
//   });

//   final List<VTPatientDto> listOfAssessments;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Center(
//       child: Column(

//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [

//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: DataTable(
//               columnSpacing: AppSize.width(context) * 0.09,
//               horizontalMargin: AppSize.klpadding,
//               dataRowMinHeight: AppSize.klheight * 2.5,
//               decoration: BoxDecoration(
//                 color: AppColor.white,
//                 borderRadius: BorderRadius.circular(AppSize.ksradius),
//                 boxShadow: applyLightShadow(),
//               ),
//               columns: [
//                 DataColumn(
//                   label: Text(
//                     "Patient",
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                     style: applyFiraSansFont(
//                       fontSize: 12,
//                       color: AppColor.grey,
//                     ),
//                   ),
//                 ),
//                 DataColumn(
//                   label: Text(
//                     "Assessment ID",
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                     style: applyFiraSansFont(
//                       fontSize: 12,
//                       color: AppColor.grey,
//                     ),
//                   ),
//                 ),
//                 DataColumn(
//                   label: Text(
//                     "Status",
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                     style: applyFiraSansFont(
//                       fontSize: 12,
//                       color: AppColor.grey,
//                     ),
//                   ),
//                 ),
//                 DataColumn(
//                   label: Text(
//                     "Category",
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                     style: applyFiraSansFont(
//                       fontSize: 12,
//                       color: AppColor.grey,
//                     ),
//                   ),
//                 ),
//               ],
//               rows: List<DataRow>.generate(
//                 listOfAssessments.length,
//                 (index) => DataRow(
//                   cells: generateListTile(listOfAssessments[index]),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class _DataSource extends DataTableSource {
  final List<VTPatientDto> list;
  _DataSource({required this.list});
  @override
  DataRow? getRow(int index) {
    final VTPatientDto data = list[index];

    return DataRow(
      cells: [
        DataCell(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "${data.name}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyRobotoFont(fontSize: 14),
              ),
              Text(
                data.id.toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyRobotoFont(
                  fontSize: 12,
                  color: AppColor.grey,
                ),
              ),
            ],
          ),
        ),
        DataCell(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "assessmentId",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyRobotoFont(fontSize: 14),
              ),
              Text(
                "assessmentDate",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyRobotoFont(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColor.grey,
                ),
              ),
            ],
          ),
        ),
        DataCell(
          Text(
            data.status ?? "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(fontSize: 14),
          ),
        ),
        DataCell(
          Text(
            data.category ?? "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
              color: data.category!.toLowerCase().contains("early")
                  ? AppColor.orange
                  : AppColor.red,
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  get rowCount => list.length;

  @override
  int get selectedRowCount => 0;
}

List<DataCell> generateListTile(VTPatientDto data) {
  return [
    DataCell(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${data.name}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(fontSize: 14),
          ),
          Text(
            data.id.toString(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 12,
              color: AppColor.grey,
            ),
          ),
        ],
      ),
    ),
    DataCell(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "assessmentId",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(fontSize: 14),
          ),
          Text(
            "assessmentDate",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColor.grey,
            ),
          ),
        ],
      ),
    ),
    DataCell(
      Text(
        data.status ?? "",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: applyRobotoFont(fontSize: 14),
      ),
    ),
    DataCell(
      Text(
        data.category ?? "",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: applyRobotoFont(
          fontSize: 14,
          color: data.category!.toLowerCase().contains("early")
              ? AppColor.orange
              : AppColor.red,
        ),
      ),
    ),
  ];
}
