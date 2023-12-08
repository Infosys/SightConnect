import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/source/vision_technician_home_local_source.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'dart:math' as Math;

class AssessmentList extends StatelessWidget {
  const AssessmentList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AssessmentModel> listOfAssessments =
        VisionTechnicianLocalSourceImpl().getAssessmentDetails();

    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            height: Math.min(
              AppSize.klheight * 3 * listOfAssessments.length,
              AppSize.height(context) * 0.4,
            ),
            child: DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              dataRowHeight: AppSize.klheight * 2.5,
              minWidth: 100,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(AppSize.ksradius),
                boxShadow: applyLightShadow(),
              ),
              columns: [
                DataColumn2(
                  label: Text(
                    "Patient",
                    style: applyFiraSansFont(
                      fontSize: 12,
                      color: AppColor.grey,
                    ),
                  ),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text(
                    "Assessment ID",
                    style: applyFiraSansFont(
                      fontSize: 12,
                      color: AppColor.grey,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Status",
                    style: applyFiraSansFont(
                      fontSize: 12,
                      color: AppColor.grey,
                    ),
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Category",
                    style: applyFiraSansFont(
                      fontSize: 12,
                      color: AppColor.grey,
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
            style: applyRobotoFont(
              fontWeight: FontWeight.w500,
              color: AppColor.primary,
            ),
          ),
        ),
      ],
    );

    /*
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: AppSize.klpadding),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: AppSize.width(context) * .23,
                child: Text(
                  "Patient",
                  textAlign: TextAlign.left,
                  style: applyFiraSansFont(
                    fontSize: 12,
                    color: AppColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: AppSize.width(context) * .18,
                child: Text(
                  "Assessment ID",
                  textAlign: TextAlign.left,
                  style: applyFiraSansFont(
                    fontSize: 12,
                    color: AppColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: AppSize.width(context) * .23,
                child: Text(
                  "Status",
                  textAlign: TextAlign.left,
                  style: applyFiraSansFont(
                    fontSize: 12,
                    color: AppColor.grey,
                  ),
                ),
              ),
              SizedBox(
                width: AppSize.width(context) * .10,
                child: Text(
                  "Category",
                  textAlign: TextAlign.left,
                  style: applyFiraSansFont(
                    fontSize: 12,
                    color: AppColor.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        
        // SingleChildScrollView(
        //   child: Container(
        //     padding: const EdgeInsets.symmetric(
        //       horizontal: AppSize.klpadding,
        //       vertical: AppSize.kmpadding,
        //     ),
        //     margin: EdgeInsets.symmetric(vertical: AppSize.kmpadding),
        //     decoration: BoxDecoration(
        //       color: AppColor.white,
        //       borderRadius: BorderRadius.circular(AppSize.ksradius),
        //       boxShadow: applyLightShadow(),
        //     ),
        //     child: ListView.builder(
        //       itemCount: listOfAssessments.length,
        //       shrinkWrap: true,
        //       physics: const ScrollPhysics(),
        //       // scrollDirection: Axis.vertical,
        //       itemBuilder: (context, index) {
        //         return Column(
        //           mainAxisSize: MainAxisSize.min,
        //           children: [
        //             AssessmentListTile(data: listOfAssessments[index]),
        //             const Divider(
        //               color: AppColor.black,
        //             ),
        //             if (index == listOfAssessments.length - 1)
        //               TextButton(
        //                   onPressed: () {},
        //                   child: Text(
        //                     "Show More",
        //                     style: applyRobotoFont(
        //                       fontWeight: FontWeight.w500,
        //                       color: AppColor.primary,
        //                     ),
        //                   )),
        //           ],
        //         );
        //       },
        //     ),
        //   ),
        // ),
      ],
    );*/
  }
}

List<DataCell> generateListTile(AssessmentModel data) {
  return [
    DataCell(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            data.name,
            style: applyRobotoFont(fontSize: 14),
          ),
          Text(
            data.patientId,
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
            data.id,
            style: applyRobotoFont(fontSize: 14),
          ),
          Text(
            data.date,
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
        data.status,
        style: applyRobotoFont(fontSize: 14),
      ),
    ),
    DataCell(
      Text(
        data.category,
        style: applyRobotoFont(
          fontSize: 14,
          color:
              data.category.contains("Early") ? AppColor.orange : AppColor.red,
        ),
      ),
    ),
  ];
}
