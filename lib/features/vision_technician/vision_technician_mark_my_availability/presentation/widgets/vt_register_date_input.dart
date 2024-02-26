import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VTRegisterDateInput extends StatelessWidget {
  const VTRegisterDateInput(
      {super.key, required this.title, required this.controller});
  final TextEditingController controller;
  final String title;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return loc.vtEnterDate;
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
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
            ).then((selectedDate) {
              if (selectedDate != null) {
                /* controller.text = selectedDate.formateDate.toString(); */

                var result = DateFormat('dd MMM yyyy').format(selectedDate);
                controller.text = result;
              }
            });
          },
          icon: const Icon(CupertinoIcons.calendar),
        ),
      ),
    );
  }
}
