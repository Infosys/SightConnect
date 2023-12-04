import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_mark_myavailable_dropdown.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class VTEachRow extends StatelessWidget {
  VTEachRow(
      {super.key,
      required this.functionhandler,
      required this.index,
      required this.daydata});
  var functionhandler;
  var index;
  var daydata;

  @override
  Widget build(BuildContext context) {
    print(daydata);
    return Wrap(
      children: [
        const SizedBox(
          width: AppSize.klwidth,
        ),
        VTMarkMyAvailableDropdown(
          disable: daydata["checked"],
          title: "9:00 AM",
          listOfOptions: ["9:00 AM", "10:00 AM", "11:00 AM"],
        ),
        const SizedBox(
          width: AppSize.klwidth * 2,
        ),
        VTMarkMyAvailableDropdown(
          disable: daydata["checked"],
          title: "11:00 AM",
          listOfOptions: ["9:00 AM", "10:00 AM", "11:00 AM"],
        ),
        const SizedBox(
          width: AppSize.klwidth * 2,
        ),
        Text(
          "4 Hrs",
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
                          functionhandler(index);
                        },
                )),
          ],
        )
      ],
    );
  }
}
