import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/pages/vision_technician_assessment_timeline_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/enums/vision_technician_home_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_search_page/presentation/providers/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_search_page/presentation/widgets/empty_result_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/vt_search_bar.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:eye_care_for_all/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

class VisionTechnicianSearchPage extends HookConsumerWidget {
  const VisionTechnicianSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = context.loc!;
    var query = useState<String>("");

    var watchRef = ref.watch(visionTechnicianSearchProvider);

    return Scaffold(
      appBar: const CustomAppbar(
        centerTitle: false,
        title: Text("Search Patient Triaging"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          VTSearchBar(
            onSearched: (value) {
              query.value = value;
            },
          ),
          () {
            if (query.value.isEmpty) {
              return Center(
                child: Padding(
                  padding: Responsive.isMobile(context)
                      ? const EdgeInsets.all(16)
                      : const EdgeInsets.all(AppSize.klpadding * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "You can search for a patient by their name, mobile number, or assessment ID",
                        textAlign: TextAlign.center,
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Expanded(
                child: ref.watch(vtSearchProvider(query.value)).when(
                  data: (list) {
                    if (list.isEmpty) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              loc.vtNoDataFound,
                              style: applyFiraSansFont(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppSize.kmpadding),
                                  child: DataTable(
                                    dataTextStyle: applyRobotoFont(
                                      fontSize: 14,
                                    ),
                                    columnSpacing: Responsive.isMobile(context)
                                        ? AppSize.width(context) * 0.05
                                        : AppSize.width(context) * 0.09,
                                    horizontalMargin:
                                        Responsive.isMobile(context)
                                            ? AppSize.kmpadding
                                            : AppSize.klpadding,
                                    dataRowMaxHeight:
                                        Responsive.isMobile(context)
                                            ? AppSize.klheight * 2.5
                                            : AppSize.klheight * 3,
                                    dataRowMinHeight:
                                        Responsive.isMobile(context)
                                            ? AppSize.klheight * 1.2
                                            : AppSize.klheight * 2,
                                    showCheckboxColumn: false,
                                    decoration: BoxDecoration(
                                      color: AppColor.white,
                                      borderRadius: BorderRadius.circular(
                                        AppSize.ksradius,
                                      ),
                                      // boxShadow: applyLightShadow(),
                                    ),
                                    columns: [
                                      DataColumn(
                                        label: Text(
                                          loc.vtPatient,
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
                                          loc.vtMobile,
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
                                          loc.vtAssessmentID,
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
                                          loc.vtStatus,
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
                                          loc.vtCategory,
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
                                          loc.vtTimeline,
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
                                          watchRef
                                              .setPatientDetails(list[index]);
                                          VTPatientDto patientDetails =
                                              list[index];
                                          if (context.mounted) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    VisionTechnicianPreliminaryAssessmentPage(
                                                  patientDetails:
                                                      patientDetails,
                                                ),
                                              ),
                                            );
                                          }
                                        },
                                        cells: generateListTileSearchResults(
                                            list[index], context, watchRef),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  },
                  error: (e, s) {
                    logger.d("error for search $e");
                    return const Center(child: EmptyResultCard());
                  },
                  loading: () {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  },
                ),
              );
            }
          }()
        ],
      ),
    );
  }

  List<DataCell> generateListTileSearchResults(VTPatientDto data,
      BuildContext context, VisionTechnicianSearchProvider watchRef) {
    return [
      DataCell(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${data.name?.capitalizeFirstOfEach()}",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
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
            const SizedBox(height: 4),
            Text(
              data.encounterStartDate?.formatDateTimeMonthName ?? "",
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
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: categoryColor(data.category),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Text(
            categoryMapper(data.category),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.white,
            ),
          ),
        ),
      ),
      DataCell(
        IconButton(
          onPressed: () {
            watchRef.setPatientDetails(data);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return VisionTechnicianAssessmentTimeline(
                patientDetails: data,
              );
            }));
          },
          icon: const Icon(Icons.timeline_outlined),
        ),
      ),
    ];
  }

  String categoryMapper(SeverityCategory? category) {
    if (category == null) return "";

    String newCategory =
        "${category.toString().split('.').last.sentenceCase()} Consultation";
    return newCategory;
  }

  Color categoryColor(SeverityCategory? category) {
    if (category == null) return AppColor.grey;
    if (category.toString().toLowerCase().contains("early")) {
      return AppColor.mediumOrange;
    } else if (category.toString().toLowerCase().contains("routine")) {
      return AppColor.altGreen;
    } else if (category.toString().toLowerCase().contains("urgent")) {
      return AppColor.red;
    } else {
      return AppColor.grey;
    }
  }
}
