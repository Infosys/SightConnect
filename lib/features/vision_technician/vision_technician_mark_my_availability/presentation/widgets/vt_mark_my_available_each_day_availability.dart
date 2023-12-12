import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/data/models/mark_my_availability_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_my_available_each_row_day.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VtMarkMyAvailableEachDayAvailability extends ConsumerWidget {
  const VtMarkMyAvailableEachDayAvailability(
      {super.key, required this.dayAvailabilityindex});

  final int dayAvailabilityindex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MarkMyAvailabilityModel dayAvailabilityState = ref
        .watch(markMyAvailabilityProvider)
        .markMyAvailabilityList[dayAvailabilityindex];

    return Column(
     
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                    value: dayAvailabilityState.checked,
                    onChanged: (value) {
                      ref
                          .read(markMyAvailabilityProvider)
                          .toogleDay(dayAvailabilityindex);
                    }),
                SizedBox(
                  width: AppSize.klwidth*3,
                  child: Text(
                    dayAvailabilityState.day,
                    style: applyRobotoFont(
                        color: dayAvailabilityState.checked == true
                            ? AppColor.black
                            : AppColor.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: AppSize.klwidth,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListView(shrinkWrap: true, children: [
                    ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return VtMarkMyAvailableEachRow(
                            dayAvailabilityindex: dayAvailabilityindex,
                            index: index,
                            daydata: dayAvailabilityState);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: AppSize.kmheight,
                        );
                      },
                      itemCount: (dayAvailabilityState.time).length,
                    ),
                  ]),
                  const SizedBox(
                    height: AppSize.ksheight,
                  ),
                  IconButton(
                    icon: Icon(Icons.add_circle_outline,
                        color: dayAvailabilityState.checked == false
                            ? AppColor.lightGrey
                            : AppColor.grey,
                        size: 30),
                    onPressed: dayAvailabilityState.checked == false
                        ? null
                        : () {
                            ref
                                .read(markMyAvailabilityProvider.notifier)
                                .addDayAvailability(dayAvailabilityindex);
                          },
                  )
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.klheight,
        ),
      ],
    );
  }
}
