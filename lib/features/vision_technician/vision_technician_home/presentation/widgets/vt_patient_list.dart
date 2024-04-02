import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vt_home_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/pages/vision_technician_preliminary_assessment_page.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_search_page/presentation/providers/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/patient_assessment_datasource.dart';

class PatientAssessmentPaginatedTable extends HookConsumerWidget {
  const PatientAssessmentPaginatedTable({super.key});

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
            padding: const EdgeInsets.all(AppSize.km),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                const SizedBox(height: AppSize.km),
                Text(
                  loc.vtNoAssessmentsFound,
                  style: applyFiraSansFont(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: AppSize.km),
              ],
            ),
          ),
        ],
      );
    }

    return Padding(
      padding: isMobile
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(horizontal: AppSize.km),
      child: PaginatedDataTable(
        rowsPerPage: model.pageSize,
        source: PatientAssessmentDataSource(
          data: model.listOfAssessments,
          context: context,
          model: model,
          isLoading: model.isLoading,
          onSelectChanged: (value) {
            ref.read(visionTechnicianSearchProvider).setPatientDetails(value);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VisionTechnicianPreliminaryAssessmentPage(
                  patientDetails: value,
                ),
              ),
            );
          },
        ),
        onRowsPerPageChanged: (value) {
          model.changePageSize(value);
        },
        availableRowsPerPage: const [10, 20, 30],
        showCheckboxColumn: false,
        columnSpacing: AppSize.width(context) * 0.1,
        headingRowHeight: isMobile ? AppSize.kl * 2 : AppSize.kl * 3,
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
        ],
      ),
    );
  }
}
