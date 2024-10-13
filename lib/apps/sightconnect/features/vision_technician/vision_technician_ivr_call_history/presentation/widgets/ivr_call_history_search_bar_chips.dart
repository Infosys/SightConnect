/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_ivr_call_history/presentation/providers/ivr_call_history_search_helper_provider.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IvrCallHistorySearchBarChips extends ConsumerWidget {
  const IvrCallHistorySearchBarChips({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var tableFilter = ref.watch(ivrCallHistorySearchHelperProvider).tablefilter;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int index = 0; index < tableFilter.length; index++) ...[
                  InkWell(
                    onTap: () {
                      ref
                          .read(ivrCallHistorySearchHelperProvider)
                          .setTableFilter(index);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: AppSize.ks / 2,
                        vertical: AppSize.ks / 2,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.km,
                        vertical: AppSize.ks,
                      ),
                      decoration: BoxDecoration(
                        color: tableFilter[index]["checked"] as bool
                            ? AppColor.primary.withOpacity(0.2)
                            : AppColor.white,
                        border: Border.all(
                          color: tableFilter[index]["checked"] as bool
                              ? AppColor.primary
                              : AppColor.grey,
                        ),
                        borderRadius: BorderRadius.circular(AppSize.kl / 2),
                      ),
                      child: Text(
                        tableFilter[index]["type"]
                            .toString()
                            .replaceAll("_", " ")
                            .capitalizeFirstOfEach(),
                        style: applyRobotoFont(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
        // const CircleAvatar(
        //   backgroundColor: AppColor.white,
        //   child: Icon(
        //     Icons.calendar_month_rounded,
        //     color: AppColor.grey,
        //   ),
        // )
      ],
    );
  }
}
