import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/enums/vision_technician_home_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vt_home_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_search_page/presentation/providers/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';

class PatientAssessmentPaginatedTable extends HookConsumerWidget {
  final List<VTPatientDto> data;
  const PatientAssessmentPaginatedTable({super.key, required this.data});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(vtHomeHelperProvider);

    bool isMobile = Responsive.isMobile(context);
    final loc = context.loc!;
    if (model.listOfAssessments.isEmpty && !model.isLoading) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(AppSize.kmpadding),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                const SizedBox(height: AppSize.kmheight),
                Text(
                  loc.vtNoAssessmentsFound,
                  style: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: AppSize.kmheight),
              ],
            ),
          ),
        ],
      );
    }

    return PaginatedDataTable(
      rowsPerPage: model.pageSize,
      showCheckboxColumn: false,
      columnSpacing: isMobile ? 56 : AppSize.width(context) * 0.05,
      headingRowHeight: AppSize.klheight * 2,
      horizontalMargin: AppSize.klpadding,
      dataRowMaxHeight: AppSize.klheight * 2.5,
      dataRowMinHeight: AppSize.klheight * 2,
      columns: [
        DataColumn(
          label: Text(
            loc.vtPatient.capitalizeFirstOfEach(),
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
      ],
      source: PatientAssessmentDataSource(
        data: data,
        context: context,
        vtSearchProvider: ref.watch(visionTechnicianSearchProvider),
        model: model,
        isLoading: model.isLoading,
      ),
    );
  }
}

class PatientAssessmentDataSource extends DataTableSource {
  final List<VTPatientDto> data;
  final BuildContext context;
  final VisionTechnicianSearchProvider vtSearchProvider;
  final VTHomeHelperNotifier model;
  final bool isLoading;

  PatientAssessmentDataSource({
    required this.data,
    required this.context,
    required this.vtSearchProvider,
    required this.model,
    required this.isLoading,
  });
  @override
  DataRow? getRow(int index) {
    if (isLoading) {
      return DataRow(
        cells: [
          loadingDataCell(),
          loadingDataCell(),
          loadingDataCell(),
          loadingDataCell()
        ],
      );
    }
    if (index >= data.length - 1 && !isLoading && model.hasMore) {
      logger.d("index $index data ${data.length}");
      WidgetsBinding.instance.addPostFrameCallback((_) {
        model.updatePageNumber();
      });
    }
    if (index >= data.length) {
      return null; // No more rows to display
    }
    final loc = context.loc!;

    return DataRow.byIndex(
      index: index,
      onSelectChanged: (value) {
        vtSearchProvider.setPatientDetails(data[index]);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VisionTechnicianPreliminaryAssessmentPage(
              patientDetails: data[index],
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
                "${data[index].name?.capitalizeFirstOfEach()}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyRobotoFont(fontSize: 14),
              ),
              Text(
                data[index].id.toString(),
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
                loc.vtAssessmentID.sentenceCase(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyRobotoFont(fontSize: 14),
              ),
              Text(
                data[index].encounterStartDate!.formatDateTimeMonthName,
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
            data[index].status ?? "",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(fontSize: 14),
          ),
        ),
        DataCell(
          Text(
            categoryMapper(data[index].category),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(
              fontSize: 14,
              color: data[index]
                      .category!
                      .toString()
                      .toLowerCase()
                      .contains("early")
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

DataCell loadingDataCell() {
  return DataCell(
    Shimmer.fromColors(
      baseColor: AppColor.white,
      highlightColor: AppColor.lightGrey.withOpacity(0.1),
      child: Container(
        width: AppSize.klwidth * 5,
        height: AppSize.klheight * 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.ksradius),
          color: AppColor.white,
        ),
      ),
    ),
    showEditIcon: false,
    placeholder: false,
  );
}
