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
  const VtMarkMyAvailableEachDayAvailability({super.key, required this.dayAvailabilityindex});

  final int dayAvailabilityindex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    MarkMyAvailabilityModel dayAvailabilityState = ref
        .watch(markMyAvailabilityProvider)
        .markMyAvailabilityList[dayAvailabilityindex];

    return Wrap(
      runSpacing: AppSize.kmheight,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Transform.scale(
                  scale: 1.0,
                  child: Checkbox(
                      value: dayAvailabilityState.checked,
                      onChanged: (value) {
                        ref
                            .read(markMyAvailabilityProvider)
                            .toogleDay(dayAvailabilityindex);
                      }),
                ),
                SizedBox(
                  width: AppSize.klwidth * 5,
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
              width: AppSize.kmwidth,
            ),
            Expanded(
              child: Column(
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
                    height: AppSize.kmheight,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: Responsive.isTablet(context)
                            ? AppSize.width(context) / 1.6
                            : AppSize.width(context) / 16),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: const Color.fromARGB(255, 186, 183, 183)),
                        color: dayAvailabilityState.checked == false
                            ? AppColor.lightGrey
                            : AppColor.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        disabledColor: AppColor.white,
                        icon: const Icon(
                          Icons.add,
                          color: AppColor.grey,
                        ),
                        onPressed: dayAvailabilityState.checked == false
                            ? null
                            : () {
                                ref
                                    .read(markMyAvailabilityProvider.notifier)
                                    .addDayAvailability(dayAvailabilityindex);
                              },
                      ),
                    ),
                  ),
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
