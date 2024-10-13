/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class TimeInput extends StatelessWidget {
  const TimeInput({super.key, required this.title, required this.controller});

  final String title;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return Flexible(
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return loc.vtEnterTime;
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          labelText: title,
          hintStyle: applyRobotoFont(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              showTimePicker(
                context: context,
                initialTime: const TimeOfDay(hour: 8, minute: 0),
              ).then((selectedDate) {
                if (selectedDate != null) {
                  controller.text = selectedDate.format(context);
                }
              });
            },
            icon: const Icon(Icons.expand_more),
          ),
        ),
      ),
    );
  }
}
