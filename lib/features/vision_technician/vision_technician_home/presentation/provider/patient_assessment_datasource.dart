import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_assessment_timeline.dart/presentation/pages/vision_technician_assessment_timeline_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/enums/vision_technician_home_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vt_home_helper_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PatientAssessmentDataSource extends DataTableSource {
  final List<VTPatientDto> data;
  final BuildContext context;

  final VTHomeHelperNotifier model;
  final bool isLoading;
  final Function(VTPatientDto)? onSelectChanged;

  PatientAssessmentDataSource({
    required this.data,
    required this.context,
    required this.model,
    required this.isLoading,
    this.onSelectChanged,
  });

  @override
  DataRow? getRow(int index) {
    if (isLoading) {
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
    if (index >= data.length - 1 && !isLoading && model.hasMore) {
      logger.d("index $index data ${data.length}");
      WidgetsBinding.instance.addPostFrameCallback((_) {
        model.updatePageNumber();
      });
    }
    if (index >= data.length) {
      return null; // No more rows to display
    }

    return DataRow.byIndex(
      index: index,
      onSelectChanged: (value) => onSelectChanged!(data[index]),
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
                "OP ${data[index].id ?? ""}",
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
          Text(
            encounterStatusMapper(data[index].encounterStatus),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(fontSize: 14),
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return VisionTechnicianAssessmentTimeline(
                      patientDetails: data[index],
                    );
                  },
                ),
              );
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
      EncounterStatus.COMPLETED => "CLOSED",
      EncounterStatus.IN_PROGRESS => "IN PROGRESS",
      EncounterStatus.CANCELLED => "CANCELLED",
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
