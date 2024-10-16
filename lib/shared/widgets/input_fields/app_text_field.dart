/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.keyboardType,
    this.onChanged,
    this.maxLine = 1,
    this.decoration = const InputDecoration(),
    this.regex,
    this.minWidth,
    this.maxWidth,
  }) : super(key: key);

  AppTextField.date({
    Key? key,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.keyboardType,
    this.onChanged,
    Function(DateTime?)? onDateSelected,
    required BuildContext context,
    this.maxLine = 1,
    InputDecoration? decoration,
    this.regex,
    this.minWidth,
    this.maxWidth,
  })  : decoration = decoration?.copyWith(
          suffixIcon: IconButton(
            onPressed: () async {
              try {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                onDateSelected?.call(date);
              } catch (e) {
                logger.e(e);
              }
            },
            icon: const Icon(Icons.calendar_today, color: AppColor.grey),
          ),
        ),
        super(key: key);

  AppTextField.time({
    Key? key,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.keyboardType,
    this.onChanged,
    Function(TimeOfDay?)? onTimeSelected,
    this.maxLine = 1,
    InputDecoration? decoration,
    required BuildContext context,
    this.regex,
    this.minWidth,
    this.maxWidth,
  })  : decoration = decoration?.copyWith(
          suffixIcon: IconButton(
            onPressed: () async {
              try {
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                onTimeSelected?.call(time);
              } catch (e) {
                logger.e(e);
              }
            },
            icon: const Icon(Icons.access_time, color: AppColor.grey),
          ),
        ),
        super(key: key);

  final TextEditingController? controller;
  final String? initialValue;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final String? regex;

  final int maxLine;
  final double? minWidth;
  final double? maxWidth;

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return Container(
      // color: Colors.blue,
      constraints: BoxConstraints(
        minWidth: minWidth ?? (isMobile ? AppSize.width(context) * 0.8 : 300),
        maxWidth: maxWidth ?? (isMobile ? AppSize.width(context) * 0.8 : 300),
      ),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLines: maxLine,
        controller: controller,
        initialValue: initialValue,
        focusNode: focusNode,
        keyboardType: keyboardType,
        onChanged: onChanged,
        decoration: decoration?.copyWith(
          errorMaxLines: 2,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          hintStyle: const TextStyle(
            fontSize: 14,
          ),
          labelStyle: const TextStyle(
            fontSize: 14,
          ),
          floatingLabelStyle: const TextStyle(
            fontSize: 14,
          ),
          errorStyle: const TextStyle(
            fontSize: 12,
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightGrey),
          ),
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.red),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.blue),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightGrey),
          ),
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightGrey),
          ),
          focusedErrorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.red),
          ),
        ),
      ),
    );
  }
}
