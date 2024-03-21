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
    final isMobile = Responsive.isMobile(context);
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
                      : const EdgeInsets.all(AppSize.kl * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Search by name, mobile number, or assessment ID",
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
                      return Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: AppSize.ks),
                        child: Align(
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
                                      horizontal: AppSize.km,
                                    ),
                                    child: DataTable(
                                      dataTextStyle: applyRobotoFont(
                                        fontSize: 14,
                                      ),
                                      columnSpacing: isMobile
                                          ? AppSize.width(context) * 0.06
                                          : AppSize.width(context) * 0.1,
                                      headingRowHeight: isMobile
                                          ? AppSize.kl * 2
                                          : AppSize.kl * 3,
                                      dataRowMaxHeight: isMobile
                                          ? AppSize.kl * 3
                                          : AppSize.kl * 3.5,
                                      dataRowMinHeight: isMobile
                                          ? AppSize.kl * 1
                                          : AppSize.kl * 2,
                                      showCheckboxColumn: false,
                                      decoration: BoxDecoration(
                                        color: AppColor.white,
                                        borderRadius: BorderRadius.circular(
                                          AppSize.ks,
                                        ),
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
                                            // loc.vtAssessmentID,
                                            "Encounter ID",
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
                                      ],
                                      rows: List<DataRow>.generate(
                                        list.length,
                                        (index) => DataRow(
                                          cells: generateListTileSearchResults(
                                            list[index],
                                            context,
                                            watchRef,
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

  List<DataCell> generateListTileSearchResults(
    VTPatientDto data,
    BuildContext context,
    VisionTechnicianSearchProvider watchRef,
  ) {
    return [
      DataCell(
        onTap: () {
          watchRef.setPatientDetails(data);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return VisionTechnicianAssessmentTimeline(
              patientDetails: data,
            );
          }));
        },
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
                color: AppColor.blue,
                decoration: TextDecoration.underline,
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
        onTap: () {
          watchRef.setPatientDetails(data);
          VTPatientDto patientDetails = data;
          if (context.mounted) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VisionTechnicianPreliminaryAssessmentPage(
                  patientDetails: patientDetails,
                ),
              ),
            );
          }
        },
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "${data.encounterId ?? ""}",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyRobotoFont(
                fontSize: 14,
                color: AppColor.blue,
                decoration: TextDecoration.underline,
              ),
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
          encounterStatusMapper(data.encounterStatus),
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
            color: categoryColor(data.category),
          ),
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

  String encounterStatusMapper(EncounterStatus? status) {
    if (status == null) return "";

    return switch (status) {
      EncounterStatus.COMPLETED => "Closed",
      EncounterStatus.IN_PROGRESS => "In Progress",
      EncounterStatus.CANCELLED => "Cancelled",
    };
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
