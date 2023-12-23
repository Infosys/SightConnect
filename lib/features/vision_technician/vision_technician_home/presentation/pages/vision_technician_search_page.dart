import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/pages/vision_technician_assessment_timeline_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/enums/vision_technician_home_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/empty_result_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_search_bar.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_search_filter.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

class VisionTechnicianSearchPage extends HookConsumerWidget {
  const VisionTechnicianSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var query = useState<String>("");

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.klheight * 3,
        title: VTSearchBar(
          readOnly: false,
          onSearched: (value) {
            query.value = value;
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              showVtSearchFilter(context);
            },
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
      body: ref.watch(vtSearchProvider(query.value)).when(
        data: (list) {
          return Align(
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
                    child: Padding(
                      padding: const EdgeInsets.all(AppSize.klpadding),
                      child: DataTable(
                        columnSpacing: AppSize.width(context) * 0.09,
                        horizontalMargin: AppSize.klpadding,
                        dataRowMinHeight: AppSize.klheight * 2,
                        showCheckboxColumn: false,
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(AppSize.ksradius),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      VisionTechnicianAssessmentTimeline(
                                    patientDetails: list[index],
                                  ),
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
          );
        },
        error: (e, s) {
          return const Center(child: EmptyResultCard());
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  List<DataCell> generateListTileSearchResults(VTPatientDto data, context) {
    return [
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
        Text(
          data.mobile ?? "",
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
              "${data.encounterId ?? ""}",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyRobotoFont(fontSize: 14),
            ),
            Text(
              data.encounterStartDate?.formateDateWithTime ?? "",
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
        Chip(
          backgroundColor:
              data.category!.toString().toLowerCase().contains("early")
                  ? AppColor.orange
                  : AppColor.red,
          label: Text(
            data.category.toString().split(".").last,
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
}
