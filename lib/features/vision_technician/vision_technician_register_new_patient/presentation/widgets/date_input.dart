import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateInput extends StatelessWidget {
  const DateInput({super.key, required this.title});
  static TextEditingController controller = TextEditingController();
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: title,
        hintStyle: applyRobotoFont(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            ).then((selectedDate) {
              if (selectedDate != null) {
                controller.text = selectedDate.formateDate.toString();
              }
            });
          },
          icon: const Icon(CupertinoIcons.calendar),
        ),
      ),
    );
  }
}
