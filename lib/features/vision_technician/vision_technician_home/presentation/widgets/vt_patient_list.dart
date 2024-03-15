import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/pages/vision_technician_assessment_timeline_page.dart';
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

class PatientAssessmentPaginatedTable extends ConsumerStatefulWidget {
  const PatientAssessmentPaginatedTable({super.key});

  @override
  ConsumerState<PatientAssessmentPaginatedTable> createState() =>
      _PatientAssessmentPaginatedTableState();
}

class _PatientAssessmentPaginatedTableState
    extends ConsumerState<PatientAssessmentPaginatedTable> {
  @override
  Widget build(BuildContext context) {
    var model = ref.watch(vtHomeHelperProvider);
    bool isMobile = Responsive.isMobile(context);
    final loc = context.loc!;

    return PaginatedDataTable(
      header: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColor.white,
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search by Patient Name or Encounter ID",
            hintStyle: applyFiraSansFont(
              fontSize: 14,
              color: AppColor.grey,
            ),
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onChanged: (value) {
            model.searchBasedOnNameAndEncounterId(value);
          },
        ),
      ),
      // onRowsPerPageChanged: (value) {
      //   logger.d("onRowsPerPageChanged $value");
      //   model.updatePageSize(value);
      // },
      onPageChanged: (value) {
        logger.d("onPageChanged $value");
        model.updatePageNumber(value);
      },
      // availableRowsPerPage: [
      //   model.pageSize,
      //   model.pageSize * 2,
      //   model.pageSize * 3
      // ],
      availableRowsPerPage: const [10],
      rowsPerPage: model.pageSize,
      showCheckboxColumn: false,
      columnSpacing: isMobile
          ? AppSize.width(context) * 0.06
          : AppSize.width(context) * 0.05,
      headingRowHeight: isMobile ? AppSize.kl * 2 : AppSize.kl * 3,
      horizontalMargin: isMobile
          ? AppSize.width(context) * 0.05
          : AppSize.width(context) * 0.05,
      dataRowMaxHeight: isMobile ? AppSize.kl * 3 : AppSize.kl * 3.5,
      dataRowMinHeight: isMobile ? AppSize.kl * 1 : AppSize.kl * 2,
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
            textAlign: TextAlign.center,
            style: applyFiraSansFont(
              fontSize: 12,
              color: AppColor.grey,
            ),
          ),
        ),
        DataColumn(
          label: Text(
            "Timline",
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
        data: model.listOfAssessments,
        context: context,
        vtSearchProvider: ref.watch(visionTechnicianSearchProvider),
        model: model,
      ),
    );
  }
}

class PatientAssessmentDataSource extends DataTableSource {
  final List<VTPatientDto> data;
  final BuildContext context;
  final VisionTechnicianSearchProvider vtSearchProvider;
  final VTHomeHelperNotifier model;

  PatientAssessmentDataSource({
    required this.data,
    required this.context,
    required this.vtSearchProvider,
    required this.model,
  });
  @override
  DataRow? getRow(int index) {
    if (model.isLoading) {
      return DataRow(
        cells: [
          loadingDataCell(),
          loadingDataCell(),
          loadingDataCell(),
          loadingDataCell(),
          loadingDataCell()
        ],
      );
    }

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
              const SizedBox(height: 4),
              Text(
                "${data[index].id ?? ""}",
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
                "${data[index].encounterId ?? ""}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: applyRobotoFont(fontSize: 14),
              ),
              const SizedBox(height: 4),
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              encounterStatusMapper(data[index].encounterStatus).toUpperCase(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyRobotoFont(
                fontSize: 14,
                color: encounterStatusColor(data[index].encounterStatus),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        DataCell(
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: categoryColor(data[index].category),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              categoryMapper(data[index].category),
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
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return VisionTechnicianAssessmentTimeline(
                  patientDetails: data[index],
                );
              }));
            },
            icon: const Icon(
              Icons.timeline,
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

  String encounterStatusMapper(EncounterStatus? status) {
    if (status == null) return "";
    return switch (status) {
      EncounterStatus.IN_PROGRESS => "Open",
      EncounterStatus.COMPLETED => "Closed",
      EncounterStatus.CANCELLED => "Cancelled",
    };
  }

  Color encounterStatusColor(EncounterStatus? status) {
    if (status == null) return AppColor.grey;
    return switch (status) {
      EncounterStatus.IN_PROGRESS => AppColor.mediumOrange,
      EncounterStatus.COMPLETED => AppColor.altGreen,
      EncounterStatus.CANCELLED => AppColor.red,
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
        width: AppSize.kl * 5,
        height: AppSize.kl * 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.ks),
          color: AppColor.white,
        ),
      ),
    ),
    showEditIcon: false,
    placeholder: false,
  );
}
