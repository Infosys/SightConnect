import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_myavailable_dropdown.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTEachRow extends ConsumerWidget {
  VTEachRow(
      {super.key,
      required this.dayAvailabilityindex,
      required this.index,
      required this.daydata});
  var index;
  var daydata;
  var dayAvailabilityindex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(daydata["time"]);
    return Wrap(
      children: [
        const SizedBox(
          width: AppSize.klwidth,
        ),
        VTMarkMyAvailableDropdown(
          dayAvailabilityindex: dayAvailabilityindex,
          index: index,
          dropDownNo: 0,
          disable: daydata["checked"],
          title: "9:00 AM",
          listOfOptions: [
            "9:00 AM",
            "10:00 AM",
            "11:00 AM",
            "12:00 PM",
            "1:00 PM",
            "2:00 PM"
          ],
        ),
        const SizedBox(
          width: AppSize.klwidth * 2,
        ),
        VTMarkMyAvailableDropdown(
          dayAvailabilityindex: dayAvailabilityindex,
          index: index,
          dropDownNo: 1,
          disable: daydata["checked"],
          title: "11:00 AM",
          listOfOptions: [
            "9:00 AM",
            "10:00 AM",
            "11:00 AM",
            "12:00 PM",
            "1:00 PM",
            "2:00 PM"
          ],
        ),
        const SizedBox(
          width: AppSize.klwidth * 2,
        ),
        Text(
        (daydata["time"][index][2])+" hrs",
          style: applyFiraSansFont(
            fontSize: 14,
            color: AppColor.grey,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          width: AppSize.klwidth * 2.1,
        ),
        Wrap(
          direction: Axis.vertical,
          spacing: AppSize.kmheight,
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  color: daydata["checked"] == false
                      ? Color.fromARGB(255, 233, 230, 230)
                      : Colors.white,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.remove,
                    color: AppColor.grey,
                  ),
                  onPressed: daydata["checked"] == false
                      ? null
                      : () {
                          ref
                              .read(markMyAvailabilityProvider.notifier)
                              .removeDayAvailability(
                                  dayAvailabilityindex, index);
                        },
                )),
          ],
        )
      ],
    );
  }
}
