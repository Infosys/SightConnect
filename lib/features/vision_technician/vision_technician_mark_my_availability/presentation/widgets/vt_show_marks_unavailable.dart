import 'dart:ui';
import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';

import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/presentation/widgets/vt_time_input.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_register_new_patient/presentation/widgets/date_input.dart';

import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showMarksUnAvaialbility(BuildContext context) {
  final formKey = GlobalKey<FormState>();
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.klradius),
              ),
              
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mark as Unavailable',
                    style: applyFiraSansFont(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: AppSize.klwidth,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.close))
                ],
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
                            // This bool value toggles the switch.
                            value: true,
                            activeColor: AppColor.blue,
                            onChanged: (bool value) {
                              // This is called when the user toggles the switch.
                              /*     setState(() {
                        light = value;
                      }); */
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.klheight,
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: AppSize.klwidth * 15,
                              child: DateInput(
                                title: "Start Date",
                                controller: TextEditingController(),
                              )),
                          SizedBox(
                            width: AppSize.klwidth,
                          ),
                          SizedBox(
                              width: AppSize.klwidth * 15,
                              child: DateInput(
                                  title: "End Date",
                                  controller: TextEditingController())),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.klheight,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                              width: AppSize.klwidth * 15,
                              child: TimeInput(title: "Start Time")),
                          SizedBox(
                            width: AppSize.klwidth,
                          ),
                          SizedBox(
                              width: AppSize.klwidth * 15,
                              child: TimeInput(title: "End Time")),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.klheight,
                      ),
                      TextFormField(
                        controller: TextEditingController(),
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
    },
  );
}
