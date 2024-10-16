/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_ivr_call_history/domain/model/ivr_call_history_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_ivr_call_history/presentation/providers/ivr_call_history_search_helper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_ivr_call_history/presentation/widgets/ivr_call_history_search_bar_chips.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
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
    final loc = context.loc!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const IvrCallHistorySearchBarChips(),
        const SizedBox(height: AppSize.kl),
        ref.watch(getIvrCallHistoryDetailsProvider).when(
              data: (data) {
                List<IvrCallHistoryModel> reversedData = data.reversed.toList();

                if (reversedData.isEmpty) {
                  return Center(
                    child: Text(loc.vtCallLogEmpty),
                  );
                }
                return SizedBox(
                  width: AppSize.width(context),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      clipBehavior: Clip.antiAlias,
                      headingRowColor: WidgetStateProperty.all(
                        AppColor.scaffold,
                      ),
                      columnSpacing: AppSize.width(context) / 15,
                      horizontalMargin: AppSize.kl,
                      dataRowMaxHeight: AppSize.kl * 2.5,
                      dataRowMinHeight: AppSize.kl * 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSize.ks),
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
                        reversedData.length,
                        (index) => DataRow(
                          cells: generateIvrCallHistoryListTile(
                            reversedData[index],
                            ref,
                            context,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              error: (e, s) {
                logger.d("error :$e");
                return Center(
                  child: Text(loc.vtNoDataAvailable),
                );
              },
              loading: () => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
      ],
    );
  }

  List<DataCell> generateIvrCallHistoryListTile(
    IvrCallHistoryModel data,
    WidgetRef ref,
    BuildContext context,
  ) {
    final loc = context.loc!;
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
            fontWeight: FontWeight.w500,
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
            const SizedBox(width: AppSize.ks),
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
          data.logDate.toLocal().formateTime,
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
              Radius.circular(AppSize.ks),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppSize.ks),
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
                child: CircularProgressIndicator.adaptive(),
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
                                  msg: loc.vtIvrCallNotAvailable);
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
    var currentTime = DateTime.now();
    var diff = currentTime.difference(date).inDays;
    if (diff < 1) {
      return "TODAY";
    } else if (diff < 2) {
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
