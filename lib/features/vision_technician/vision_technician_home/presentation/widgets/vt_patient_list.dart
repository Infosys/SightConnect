import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/enums/vision_technician_home_enums.dart';

class VTPatientList extends ConsumerWidget {
  const VTPatientList({
    required this.listOfAssessments,
    super.key,
  });

  final List<VTPatientDto> listOfAssessments;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watchRef = ref.watch(visionTechnicianSearchProvider);

    return PaginatedDataTable(
      showCheckboxColumn: false,
      rowsPerPage: 6,
      columnSpacing: AppSize.width(context) * 0.15,
      horizontalMargin: AppSize.klpadding,
      dataRowMaxHeight: AppSize.klheight * 3,
      dataRowMinHeight: AppSize.klheight * 2,
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
      source: _DataSource(
        list: listOfAssessments,
        context: context,
        watchRef: watchRef,
      ),
    );
  }
}

class _DataSource extends DataTableSource {
  final List<VTPatientDto> list;
  final BuildContext context;
  final VisionTechnicianSearchProvider watchRef;
  _DataSource(
      {required this.list, required this.context, required this.watchRef});
  @override
  DataRow? getRow(int index) {
    final VTPatientDto data = list[index];

    return DataRow(
      onSelectChanged: (value) {
        watchRef.setPatientDetails(list[index]);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => VisionTechnicianPreliminaryAssessmentPage(
                    patientDetails: data,
                  )),
        );
      },
      cells: [
        DataCell(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "${data.name?.sentenceCase()}",
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
                "assessmentId".sentenceCase(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyRobotoFont(fontSize: 14),
              ),
              Text(
                // _formatDate(data.encounterStartDate.toString()),
                data.encounterStartDate!.formatDateTimeMonthName,
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
            categoryMapper(data.category),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
              color: data.category!.toString().toLowerCase().contains("early")
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

  // String _formatDate(String originalDate) {
  //   DateTime date = DateTime.parse(originalDate);
  //   DateFormat dateFormat = DateFormat("dd MMM yy");
  //   String formattedDate = dateFormat.format(date);
  //   return formattedDate.toString();
  // }

  String categoryMapper(SeverityCategory? category) {
    if (category == null) return "";
    return category.toString().split('.').last;
  }
}
