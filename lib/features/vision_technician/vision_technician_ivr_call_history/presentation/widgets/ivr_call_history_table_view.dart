import 'package:data_table_2/data_table_2.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/data/model/ivr_call_history_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/providers/ivr_call_history_search_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/widgets/ivr_call_history_search_bar_chips.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IvrCallHistoryTableView extends HookConsumerWidget {
  const IvrCallHistoryTableView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> tableHeading =
        ref.watch(ivrCallHistorySearchHelperProvider).tableHeading;

    List<IvrCallHistoryModel> ivrCallHistoryDetails =
        ref.watch(ivrCallHistorySearchHelperProvider).ivrCallHistoryDetails;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const IvrCallHistorySearchBarChips(),
        const SizedBox(
          height: AppSize.klheight,
        ),
        SizedBox(
            width: AppSize.width(context),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
             columnSpacing: AppSize.width(context)/10,
              horizontalMargin: 12,
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.circular(AppSize.ksradius),
                boxShadow: applyLightShadow(),
              ),
              columns: List<DataColumn>.generate(
                  tableHeading.length,
                  (index) => DataColumn(
                        label: Flexible(
                          child: Text(
                            tableHeading[index],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: applyFiraSansFont(
                              fontSize: 12,
                              color: AppColor.grey,
                            ),
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
        ),
      ],
    );
  }
}

List<DataCell> generateIvrCallHistoryListTile(IvrCallHistoryModel data) {
  return [
    DataCell(
      Text(
        data.patientId,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
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
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: applyRobotoFont(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
    DataCell(
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.phone_callback_rounded,
            color: data.calltype == "in" ? AppColor.green : AppColor.red,
          ),
          Text(
            data.duration,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    ),
    DataCell(
      Text(
        data.day,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
      ),
    ),
    DataCell(
      Text(
        data.time,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
      ),
    ),
    DataCell(
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
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
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
    ),
    DataCell(
      CircleAvatar(
        backgroundColor: data.status == "COMPLETED"
            ? const Color(0xffFAFAFA)
            : AppColor.lightBlue,
        child: Icon(
          Icons.phone,
          color: data.status == "COMPLETED"
              ? const Color(0xffBBBBBB)
              : AppColor.blue,
        ),
      ),
    ),
  ];
}
