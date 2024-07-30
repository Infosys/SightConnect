import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/domain/models/mark_my_availability_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_my_available_each_row_day.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VtMarkMyAvailableEachDayAvailability extends ConsumerWidget {
  const VtMarkMyAvailableEachDayAvailability(
      {super.key, required this.dayAvailabilityindex});

  final int dayAvailabilityindex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MarkMyAvailabilityModel dayAvailabilityState = ref
        .watch(markMyAvailabilityHelperProvider)
        .markMyAvailabilityList[dayAvailabilityindex];

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                  fillColor: WidgetStateProperty.all(AppColor.grey),
                  value: dayAvailabilityState.checked,
                  onChanged: (value) {
                    // ref
                    //     .read(markMyAvailabilityHelperProvider)
                    //     .toogleDay(dayAvailabilityindex);
                  },
                ),
                SizedBox(
                  width: AppSize.kl * 3,
                  child: Text(
                    dayAvailabilityState.day,
                    style: applyRobotoFont(
                      // color: dayAvailabilityState.checked == true
                      //     ? AppColor.black
                      //     : AppColor.grey,
                      color: AppColor.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: [
                      ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return VtMarkMyAvailableEachRow(
                            dayAvailabilityindex: dayAvailabilityindex,
                            index: index,
                            daydata: dayAvailabilityState,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: AppSize.km,
                          );
                        },
                        itemCount: (dayAvailabilityState.time).length,
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSize.ks),
                  IconButton(
                    icon: Icon(Icons.add_circle_outline,
                        color: dayAvailabilityState.checked == false
                            ? AppColor.lightGrey
                            : AppColor.grey,
                        size: 30),
                    onPressed: dayAvailabilityState.checked == false
                        ? null
                        : () {
                            // ref
                            //     .read(markMyAvailabilityHelperProvider.notifier)
                            //     .addDayAvailability(dayAvailabilityindex);
                          },
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.kl,
        ),
      ],
    );
  }
}
