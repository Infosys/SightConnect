import 'package:data_table_2/data_table_2.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/model/ivr_call_history_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/providers/ivr_call_history_search_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/widgets/ivr_call_history_search_bar_chips.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IvrCallHistoryTableView extends HookConsumerWidget {
  const IvrCallHistoryTableView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var tableHeading = [
      "Patient ID",
      "Name",
      "Duration",
      "Day",
      "Time",
      "Status",
      ""
    ];

    List<IvrCallHistoryModel> ivrCallHistoryDetails =
        ref.watch(ivrCallHistorySearchProvider).ivrCallHistoryDetails;
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: AppSize.klheight,
          ),
          const IvrCallHistorySearchBarChips(),
          const SizedBox(
            height: AppSize.klheight,
          ),
          Expanded(
            child: DataTable2(
              minWidth: 100,
              isHorizontalScrollBarVisible: true,
              columnSpacing: 0,
              dataRowHeight: AppSize.klheight * 2.5,
              horizontalMargin: 12,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(AppSize.ksradius),
                boxShadow: applyLightShadow(),
              ),
              columns: List<DataColumn>.generate(
                  7,
                  (index) => DataColumn(
                        label: Text(
                          tableHeading[index],
                          style: applyFiraSansFont(
                            fontSize: 12,
                            color: AppColor.grey,
                          ),
                        ),
                      )),
              rows: List<DataRow>.generate(
                ivrCallHistoryDetails.length,
                (index) => DataRow(
                  cells: generateIvrCallHistoryListTile(
                      ivrCallHistoryDetails[index]),
                ),
              ),
            ),
          ),
        ]);
  }
}

List<DataCell> generateIvrCallHistoryListTile(IvrCallHistoryModel data) {
  return [
    DataCell(
      Text(
        data.patientId,
        style: applyRobotoFont(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColor.blue,
            decoration: TextDecoration.underline),
      ),
    ),
    DataCell(
      Text(
        data.name,
        style: applyRobotoFont(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    DataCell(
      Row(
        children: [
          Icon(
            Icons.phone_callback_rounded,
            color: data.calltype == "in" ? AppColor.green : AppColor.red,
          ),
          const SizedBox(
            width: AppSize.klwidth,
          ),
          Text(
            data.duration,
            style: applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ),
    DataCell(
      Text(
        data.day,
        style: applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
      ),
    ),
    DataCell(
      Text(
        data.time,
        style: applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
      ),
    ),
    DataCell(
      Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: data.status == "COMPLETED"
                    ? AppColor.lightGreen
                    : (data.status == "FAILED")
                        ? AppColor.lightRed
                        : AppColor.lightOrange,
                borderRadius:
                    const BorderRadius.all(Radius.circular(AppSize.kspadding))),
            child: Padding(
              padding: const EdgeInsets.all(AppSize.kspadding),
              child: Text(
                data.status,
                style: applyRobotoFont(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: data.status == "COMPLETED"
                      ? AppColor.green
                      : (data.status == "FAILED")
                          ? AppColor.red
                          : AppColor.orange,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    DataCell(CircleAvatar(
        backgroundColor: data.status == "COMPLETED"
            ? const Color(0xffFAFAFA)
            : AppColor.lightBlue,
        child: Icon(
          Icons.phone,
          color: data.status == "COMPLETED"
              ? const Color(0xffBBBBBB)
              : AppColor.blue,
        ))),
  ];
}
