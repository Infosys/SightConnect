import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_mark_my_availability/domain/models/mark_my_availability_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_myavailable_each_row_time_picker.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VtMarkMyAvailableEachRow extends ConsumerWidget {
  const VtMarkMyAvailableEachRow({
    super.key,
    required this.dayAvailabilityindex,
    required this.index,
    required this.daydata,
  });
  final int index;
  final MarkMyAvailabilityModel daydata;
  final int dayAvailabilityindex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            const SizedBox(width: AppSize.km),
            VtMarkMyAvailableEachRowTimePicker(
              dayAvailabilityindex: dayAvailabilityindex,
              index: index,
              dropDownNo: 1,
              disable: daydata.checked,
            ),
            const SizedBox(width: AppSize.km),
            Text(
              "${daydata.time[index][2]} hrs",
              style: applyFiraSansFont(
                fontSize: 14,
                color: AppColor.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: AppSize.km),
            IconButton(
              icon: Icon(Icons.remove_circle_outline,
                  color: daydata.checked == false
                      ? AppColor.lightGrey
                      : AppColor.grey,
                  size: 30),
              onPressed: daydata.checked == false
                  ? null
                  : () {
                      // ref
                      //     .read(markMyAvailabilityHelperProvider.notifier)
                      //     .removeDayAvailability(dayAvailabilityindex, index);
                    },
            )
          ],
        ),
      ],
    );
  }
}
