import 'package:data_table_2/data_table_2.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_home_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'dart:math' as Math;

import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTPatientList extends ConsumerWidget {
  const VTPatientList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<VTPatientModel> listOfAssessments =
        ref.watch(visionTechnicianHomeProvider.notifier).listOfAssessments;

    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: AppSize.width(context),
            child: DataTable(
              columnSpacing: 8,
              horizontalMargin: 12,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(AppSize.ksradius),
                boxShadow: applyLightShadow(),
              ),
              columns: [
                DataColumn(
                  label: Flexible(
                    child: Text(
                      "Patient",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  label: Flexible(
                    child: Text(
                      "Assessment ID",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  label: Flexible(
                    child: Text(
                      "Status",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                ),
                DataColumn(
                  label: Flexible(
                    child: Text(
                      "Category",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: applyFiraSansFont(
                        fontSize: 12,
                        color: AppColor.grey,
                      ),
                    ),
                  ),
                ),
              ],
              rows: List<DataRow>.generate(
                listOfAssessments.length,
                (index) => DataRow(
                  cells: generateListTile(listOfAssessments[index]),
                ),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Show More",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontWeight: FontWeight.w500,
              color: AppColor.primary,
            ),
          ),
        ),
      ],
    );
  }
}

List<DataCell> generateListTile(VTPatientModel data) {
  return [
    DataCell(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${data.firstName} ${data.lastName}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(fontSize: 14),
          ),
          Text(
            data.patientId,
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
            data.assessmentId,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(fontSize: 14),
          ),
          Text(
            data.assessmentDate,
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
      Flexible(
        child: Text(
          data.status!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(fontSize: 14),
        ),
      ),
    ),
    DataCell(
      Flexible(
        child: Text(
          data.category!,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(
            fontSize: 14,
            color: data.category!.contains("Early")
                ? AppColor.orange
                : AppColor.red,
          ),
        ),
      ),
    ),
  ];
}
