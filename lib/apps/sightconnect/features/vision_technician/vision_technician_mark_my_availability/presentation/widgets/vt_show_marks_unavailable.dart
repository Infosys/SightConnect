import 'dart:ui';

import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_mark_my_availability/presentation/providers/mark_my_availability_helper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_register_date_input.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_time_input.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void showMarksUnAvaialbility(BuildContext context) {
  final formKey = GlobalKey<FormState>();
  final loc = context.loc!;
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
                  borderRadius: BorderRadius.circular(AppSize.kl),
                ),
                title: SizedBox(
                  width: AppSize.width(context),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        loc.vtMarkUnavailable,
                        style: applyFiraSansFont(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.kl,
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
                          height: AppSize.kl,
                        ),
                        Row(
                          children: [
                            Text(
                              loc.vtMarkUnavailable,
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
                          height: AppSize.kl,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: VTRegisterDateInput(
                              title: loc.vtStartDate,
                              controller: startDateController,
                            )),
                            const SizedBox(
                              width: AppSize.kl,
                            ),
                            Expanded(
                                child: VTRegisterDateInput(
                              title: loc.vtEndDate,
                              controller: endDateController,
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: AppSize.kl,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: TimeInput(
                              title: loc.vtStartTime,
                              controller: startTimeController,
                            )),
                            const SizedBox(
                              width: AppSize.kl,
                            ),
                            Expanded(
                                child: TimeInput(
                              title: loc.vtEndTime,
                              controller: endTimeController,
                            )),
                          ],
                        ),
                        const SizedBox(
                          height: AppSize.kl,
                        ),
                        TextFormField(
                          controller: remarksController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return loc.vtPleaseEnterRemark;
                            }
                            return null;
                          },
                          maxLines: 2,
                          keyboardType: TextInputType.multiline,
                          autofocus: false,
                          decoration: InputDecoration(
                            labelText: loc.vtAddRemarksOptional,
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                                color: AppColor.primary,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: AppSize.kl,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.of(context).pop();
                                }
                              },
                              child: Text(loc.vtSave),
                            ),
                            const SizedBox(
                              width: AppSize.kl,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(loc.vtCancel),
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
