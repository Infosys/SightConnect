import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/domain/model/ivr_call_history_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/providers/ivr_call_history_search_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/widgets/ivr_call_history_search_bar_chips.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IvrCallHistoryTableView extends ConsumerWidget {
  const IvrCallHistoryTableView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tableHeading =
        ref.read(ivrCallHistorySearchHelperProvider).tableHeading;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const IvrCallHistorySearchBarChips(),
        const SizedBox(height: AppSize.klheight),
        ref.watch(getIvrCallHistoryDetailsProvider).when(
              data: (data) {
                if (data.isEmpty) {
                  return const Center(
                    child: Text("Call Log is Empty.. No Calls made yet!!"),
                  );
                }
                return SizedBox(
                  width: AppSize.width(context),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      clipBehavior: Clip.antiAlias,
                      headingRowColor: MaterialStateProperty.all(
                        AppColor.scaffold,
                      ),
                      columnSpacing: AppSize.width(context) / 15,
                      dataRowMinHeight: 50,
                      dataRowMaxHeight: 80,
                      horizontalMargin: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.ksradius),
                        color: AppColor.white,
                        boxShadow: applyLightShadow(),
                      ),
                      columns: List<DataColumn>.generate(
                        tableHeading.length,
                        (index) {
                          return DataColumn(
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
                          );
                        },
                      ),
                      rows: List<DataRow>.generate(
                        data.length,
                        (index) => DataRow(
                          cells: generateIvrCallHistoryListTile(
                            data[index],
                            ref,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              error: (e, s) {
                return const Center(
                  child: Text("No Data available"),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
      ],
    );
  }

  List<DataCell> generateIvrCallHistoryListTile(
    IvrCallHistoryModel data,
    WidgetRef ref,
  ) {
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
          ),
        ),
      ),
      DataCell(
        Text(
          data.name.sentenceCase(),
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
              color: data.direction == "in" ? AppColor.green : AppColor.red,
            ),
            const SizedBox(width: AppSize.kspadding),
            Text(
              "${data.duration ?? 0 / 60} min",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          _formateDateToDay(data.logDate),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
      DataCell(
        Text(
          data.logDate.formateTime,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: applyRobotoFont(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
      DataCell(
        Container(
          decoration: BoxDecoration(
            color: _colorCodeStatus(data.status).withOpacity(0.2),
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSize.kspadding),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSize.kspadding),
            child: Text(
              data.status,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: applyRobotoFont(
                fontSize: 10,
                fontWeight: FontWeight.w800,
                color: _colorCodeStatus(data.status),
              ),
            ),
          ),
        ),
      ),
      DataCell(
        ref.watch(ivrCallHistorySearchHelperProvider).isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : CircleAvatar(
                backgroundColor: data.status == "COMPLETED"
                    ? const Color(0xffFAFAFA)
                    : AppColor.lightBlue,
                child: IconButton(
                  onPressed: data.status == "COMPLETED"
                      ? null
                      : () async {
                          if (data.mobile != null) {
                            try {
                              await ref
                                  .read(ivrCallHistorySearchHelperProvider)
                                  .makeIvrCall(data.mobile!);
                            } catch (e) {
                              Fluttertoast.showToast(
                                  msg: "IVR call not available.. Try Again!!");
                            }
                          }
                        },
                  icon: Icon(
                    Icons.phone,
                    size: 22,
                    color: data.status == "COMPLETED"
                        ? const Color(0xffBBBBBB)
                        : AppColor.blue,
                  ),
                ),
              ),
      ),
    ];
  }

  _formateDateToDay(DateTime date) {
    if (date == DateTime.now()) {
      return "TODAY";
    } else if (date == DateTime.now().subtract(const Duration(days: 1))) {
      return "YESTERDAY";
    } else {
      return date.formateDate;
    }
  }

  _colorCodeStatus(String status) {
    if (status == "COMPLETED") {
      return AppColor.green;
    } else if (status == "FAILED") {
      return AppColor.red;
    } else {
      return AppColor.orange;
    }
  }
}
