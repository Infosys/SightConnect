/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/appointment_view_model_provider.dart';
import '../providers/book_appointment_provider.dart';

class SelectTime extends HookConsumerWidget {
  const SelectTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedTime = useState<int>(0);
    var model = ref.watch(bookAppointmentProvider);

    List<String> timeSlots = [
      "10:00 am - 10:30 am",
      "10:30 am - 11:00 am",
      "11:00 am - 11:30 am",
      "2:00 pm - 2:30 pm",
      "4:00 pm - 4:30 pm",
      "4:30 pm - 5:00 pm",
      "5:00 pm - 5:30 pm",
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select Time",
          style: applyFiraSansFont(fontSize: 18),
        ),
        const SizedBox(height: AppSize.km),
        ListView.builder(
          padding: const EdgeInsets.all(0),
          itemCount: timeSlots.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                if (selectedTime.value == index) {
                  selectedTime.value = -1;
                  return;
                }
                selectedTime.value = index;
                model.setTimeSlot(timeSlots[index]);
                ref.read(appointmentViewModelProvider).sendAppointmentDetails();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSize.ks,
                  horizontal: AppSize.km,
                ),
                margin: const EdgeInsets.symmetric(
                  vertical: AppSize.ks / 2,
                ),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(AppSize.ks),
                  border: Border.all(
                    color: selectedTime.value == index
                        ? AppColor.primary
                        : AppColor.white,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: selectedTime.value == index
                            ? AppColor.primary
                            : Colors.grey.withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 12,
                      ),
                    ),
                    const SizedBox(width: AppSize.ks),
                    Text(
                      timeSlots[index],
                      style: applyRobotoFont(
                        fontSize: 14,
                        color: selectedTime.value == index
                            ? AppColor.black
                            : AppColor.grey,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
