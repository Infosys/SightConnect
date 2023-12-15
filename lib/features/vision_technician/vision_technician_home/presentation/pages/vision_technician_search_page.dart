import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/pages/vision_technician_assessment_timeline_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_search_result_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/empty_result_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_search_bar.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_search_filter.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';

class VisionTechnicianSearchPage extends ConsumerWidget {
  const VisionTechnicianSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<VTPatientSearchDto> list =
        ref.watch(visionTechnicianSearchProvider).patientSearchDto;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.klheight * 3,
        // backgroundColor: Colors.red,
        title: const VTSearchBar(readOnly: false),
        actions: [
          IconButton(
            onPressed: () {
              showVtSearchFilter(context);
            },
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
      body: list.isEmpty
          ? const Center(child: EmptyResultCard())
          : Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: list.isEmpty
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        // width: AppSize.width(context),
                        // height: 300,
                        child: DataTable(
                          columnSpacing: AppSize.width(context) * 0.09,
                          horizontalMargin: 12,
                          // dataRowHeight: AppSize.klheight * 2.5,
                          // minWidth: 100,
                          showCheckboxColumn: false,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            borderRadius:
                                BorderRadius.circular(AppSize.ksradius),
                            boxShadow: applyLightShadow(),
                          ),
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
                                "Mobile",
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
                                "Buttons",
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
                          rows: List<DataRow>.generate(
                            list.length,
                            (index) => DataRow(
                              onSelectChanged: (value) {
                                // print(list[index].toString());
                                ref
                                    .read(visionTechnicianSearchProvider)
                                    .setPatientDetails(list[index]);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const VisionTechnicianAssessmentTimeline(),
                                  ),
                                );
                              },
                              cells: generateListTileSearchResults(
                                list[index],
                                context,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

List<DataCell> generateListTileSearchResults(VTPatientSearchDto data) {
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
      Text(
        data.mobile.toString(),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: applyRobotoFont(fontSize: 14),
      ),
    ),
    DataCell(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            data.encounterId.toString(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(fontSize: 14),
          ),
          Text(
            data.encounterStartDate.toString(),
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
        data.status,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: applyRobotoFont(fontSize: 14),
      ),
    ),
    DataCell(
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // button
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const VisionTechnicianPreliminaryAssessmentPage(),
                ),
              );
            },
            icon: const Icon(Icons.edit),
          )
        ],
      ),
    ),
    DataCell(
      Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppSize.kspadding / 1.5,
          horizontal: AppSize.kspadding * 1.5,
        ),
        decoration: BoxDecoration(
          color:
              data.category.contains("Early") ? AppColor.orange : AppColor.red,
          borderRadius: BorderRadius.circular(AppSize.klradius),
        ),
        child: Text(
          data.category,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(
            fontSize: 14,
            color: AppColor.white,
          ),
        ),
      ),
    ),
  ];
}
