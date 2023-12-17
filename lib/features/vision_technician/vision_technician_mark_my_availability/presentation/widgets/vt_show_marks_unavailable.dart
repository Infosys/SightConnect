import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_helper_provider.dart';

import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_time_input.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/vt_register_date_input.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void showMarksUnAvaialbility(BuildContext context) {
  final formKey = GlobalKey<FormState>();

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return Consumer(builder: (context, ref, child) {
        bool markmyAvailableStatus =
            ref.watch(markMyAvailabilityHelperProvider).markAvailability;
        TextEditingController startDateController =
            ref.watch(markMyAvailabilityHelperProvider).startDateController;
        TextEditingController startTimeController =
            ref.watch(markMyAvailabilityHelperProvider).startTimeController;
        TextEditingController endDateController =
            ref.watch(markMyAvailabilityHelperProvider).endDateController;
        TextEditingController endTimeController =
            ref.watch(markMyAvailabilityHelperProvider).endTimeController;
        TextEditingController remarksController =
            ref.watch(markMyAvailabilityHelperProvider).remarksController;

        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.klradius),
                ),
                title: SizedBox(
                  width: AppSize.width(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mark as Unavailable',
                        style: applyFiraSansFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.klwidth,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.close))
                    ],
                  ),
                ),
                content: SingleChildScrollView(
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: AppSize.klheight,
                        ),
                        Row(
                          children: [
                            Text(
                              "Mark as Unavailable",
                              style: applyRobotoFont(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                            CupertinoSwitch(
                              value: markmyAvailableStatus,
                              activeColor: AppColor.blue,
                              onChanged: (bool value) {
                                ref
                                    .watch(markMyAvailabilityHelperProvider
                                        .notifier)
                                    .toggleMarkMyAvailableStatus(value);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: AppSize.klheight,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: VTRegisterDateInput(
                              title: "Start Date",
                              controller: startDateController,
                            )),
                            const SizedBox(
                              width: AppSize.klwidth,
                            ),
                            Expanded(
                                child: VTRegisterDateInput(
                              title: "End Date",
                              controller: endDateController,
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: AppSize.klheight,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: TimeInput(
                              title: "Start Time",
                              controller: startTimeController,
                            )),
                            const SizedBox(
                              width: AppSize.klwidth,
                            ),
                            Expanded(
                                child: TimeInput(
                              title: "End Time",
                              controller: endTimeController,
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: AppSize.klheight,
                        ),
                        TextFormField(
                          controller: remarksController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Remark';
                            }
                            return null;
                          },
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          autofocus: false,
                          decoration: const InputDecoration(
                            labelText: "Add Remarks (Optional)",
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                                color: AppColor.primary,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.klheight,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  var result = {
                                    "start Date": startDateController.text,
                                    "end Date": endDateController.text,
                                    "start Time": startTimeController.text,
                                    "end Time": endTimeController.text,
                                    "remarks": remarksController.text,
                                  };

                                  Navigator.of(context).pop();
                                }
                              },
                              child: const Text('Save'),
                            ),
                            const SizedBox(
                              width: AppSize.klwidth,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      });
    },
  );
}
