import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeInput extends StatelessWidget {
   TimeInput({super.key, required this.title,required this.controller});

  final String title;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Time';
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
              initialTime: TimeOfDay(hour: 8, minute: 0),
            ).then((selectedDate) {
              if (selectedDate != null) {
                controller.text = selectedDate.format(context);
              }
            });
          },
          icon: const Icon(CupertinoIcons.time),
        ),
      ),
    );
  }
}
