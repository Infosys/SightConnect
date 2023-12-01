import 'package:flutter/material.dart';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/dropdown_input.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';

class VTEachDayAvailability extends StatelessWidget {
  const VTEachDayAvailability({super.key, dayAvailability});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: AppSize.klwidth * 7,
              child: CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text("Monday"), // <-- label
                value: true,
                onChanged: (newValue) {},
              ),
            ),
            const SizedBox(
              width: AppSize.klwidth * 1,
            ),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                      width: AppSize.width(context) * 0.2,
                      child: const DropdownInput(
                        title: "9:00 AM",
                        listOfOptions: ["9:00 AM", "10:00 AM", "11:00 AM"],
                      )),
                  const SizedBox(
                    width: AppSize.klwidth,
                  ),
                  SizedBox(
                      width: AppSize.width(context) * 0.2,
                      child: const DropdownInput(
                        title: "9:00 AM",
                        listOfOptions: ["9:00 AM", "10:00 AM", "11:00 AM"],
                      )),
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
                    width: AppSize.klwidth * 3.4,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.grey),
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: const Icon(
                            Icons.remove,
                            color: AppColor.grey,
                          ),
                          onPressed: () {},
                        ),
                      ))
                ],
              ),
            ]),
          ],
        ),
        const SizedBox(
          height: AppSize.klheight,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.grey),
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: AppColor.grey,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
