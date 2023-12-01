import 'package:data_table_2/data_table_2.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/assessment_list.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/empty_result_card.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/widgets/search_bar_vt.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VisionTechnicianSearchPage extends ConsumerWidget {
  const VisionTechnicianSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<AssessmentModel> list =
        ref.watch(visionTechnicianSearchProvider).searchedAssessmentUserList;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: AppSize.klheight * 3,
        // backgroundColor: Colors.red,
        title: const SearchBarVT(readOnly: false),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (list.isEmpty) const EmptyResultCard(),
            if (list.isNotEmpty)
              SingleChildScrollView(
                child: SizedBox(
                  height: 300,
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
                      list.length,
                      (index) => DataRow(
                        cells: generateListTile(list[index]),
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
}
