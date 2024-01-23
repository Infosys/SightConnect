import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vt_home_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
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
    int currentPage = ref.watch(vtHomeHelperProvider).pageNumber;
    int pageSize = ref.watch(vtHomeHelperProvider).pageSize;
    bool isMobile = Responsive.isMobile(context);

    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          listOfAssessments.isNotEmpty
              ? SizedBox(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      showCheckboxColumn: false,
                      columnSpacing:
                          isMobile ? null : AppSize.width(context) * 0.15,
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
                      rows: List<DataRow>.generate(
                        listOfAssessments.length,
                        (index) {
                          return getRow(
                              listOfAssessments[index], context, watchRef, ref);
                        },
                      ),
                    ),
                  ),
                )
              : Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: AppSize.klheight),
                    child: Text(
                      "No data available",
                      style: applyRobotoFont(),
                    ),
                  ),
                ),
          Row(
            children: [
              const Spacer(),
              InkWell(
                onTap: () {
                  if (currentPage == 0) return;
                  ref
                      .read(vtHomeHelperProvider.notifier)
                      .updatePageNumber(currentPage - 1);
                  logger.d("go to previous page");
                },
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color:
                      currentPage == 0 ? AppColor.lightGrey : AppColor.primary,
                  size: 20,
                ),
              ),
              const SizedBox(width: AppSize.klwidth),
              InkWell(
                onTap: () {
                  if (listOfAssessments.length < pageSize) return;
                  ref
                      .read(vtHomeHelperProvider.notifier)
                      .updatePageNumber(currentPage + 1);
                  logger.d("go to next page");
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: listOfAssessments.length < pageSize
                      ? AppColor.lightGrey
                      : AppColor.primary,
                  size: 20,
                ),
              ),
              const SizedBox(width: AppSize.kmwidth),
            ],
          ),
          const SizedBox(height: AppSize.klheight)
        ],
      ),
    );
  }

  DataRow getRow(VTPatientDto data, BuildContext context,
      VisionTechnicianSearchProvider watchRef, WidgetRef ref) {
    return DataRow(
      onSelectChanged: (value) {
        watchRef.setPatientDetails(data);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VisionTechnicianPreliminaryAssessmentPage(
              patientDetails: data,
            ),
          ),
        );
      },
      cells: [
        DataCell(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "${data.name?.capitalizeFirstOfEach()}",
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

  String categoryMapper(SeverityCategory? category) {
    if (category == null) return "";
    String newCategory =
        "${category.toString().split('.').last.sentenceCase()} Consultation";
    return newCategory;
  }
}
