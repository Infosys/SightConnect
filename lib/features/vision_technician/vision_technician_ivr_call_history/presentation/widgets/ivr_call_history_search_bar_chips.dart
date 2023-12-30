import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_ivr_call_history/presentation/providers/ivr_call_history_search_helper_provider.dart';
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
                          horizontal: AppSize.kspadding / 2,
                          vertical: AppSize.kspadding / 2),
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSize.width(context) * 0.01,
                        vertical: AppSize.kspadding,
                      ),
                      decoration: BoxDecoration(
                        color: tableFilter[index]["checked"] as bool
                            ? AppColor.primary.withOpacity(0.2)
                            : AppColor.white,
                        border: Border.all(
                            color: tableFilter[index]["checked"] as bool
                                ? AppColor.primary
                                : AppColor.grey),
                        borderRadius:
                            BorderRadius.circular(AppSize.klradius / 2),
                      ),
                      child: Text(
                        tableFilter[index]["type"].toString(),
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
