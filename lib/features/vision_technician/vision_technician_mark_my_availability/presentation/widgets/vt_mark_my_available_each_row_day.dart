import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/data/models/mark_my_availability_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_myavailable_each_row_time_picker.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VtMarkMyAvailableEachRow extends ConsumerWidget {
  VtMarkMyAvailableEachRow(
      {super.key,
      required this.dayAvailabilityindex,
      required this.index,
      required this.daydata});
  int index;
  MarkMyAvailabilityModel daydata;
  int dayAvailabilityindex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(daydata.time);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            VtMarkMyAvailableEachRowTimePicker(
              dayAvailabilityindex: dayAvailabilityindex,
              index: index,
              dropDownNo: 0,
              disable: daydata.checked,
            ),
            VtMarkMyAvailableEachRowTimePicker(
              dayAvailabilityindex: dayAvailabilityindex,
              index: index,
              dropDownNo: 1,
              disable: daydata.checked,
            ),
            Text(
              "${daydata.time[index][2]} hrs",
              style: applyFiraSansFont(
                fontSize: 14,
                color: AppColor.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            IconButton(
              icon: Icon(Icons.remove_circle_outline,
                  color: daydata.checked == false
                      ? AppColor.lightGrey
                      : AppColor.grey,
                  size: AppSize.klwidth * 1.7),
              onPressed: daydata.checked == false
                  ? null
                  : () {
                      ref
                          .read(markMyAvailabilityProvider.notifier)
                          .removeDayAvailability(dayAvailabilityindex, index);
                    },
            )
          ],
        ),
      ],
    );
  }
}
