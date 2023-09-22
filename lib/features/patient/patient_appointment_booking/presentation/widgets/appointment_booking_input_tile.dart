import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppointmentBookingInputTile extends StatelessWidget {
  final String? title;
  final String? defaultValue;
  final IconData? trailingIcon;
  final int maxLine;

  const AppointmentBookingInputTile(
      {this.title,
      this.defaultValue,
      this.trailingIcon,
      this.maxLine = 1,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: defaultValue,
      decoration: InputDecoration(
        label: Text(title!),
        suffixIcon: Icon(trailingIcon),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.primary),
        ),
      ),
      maxLines: maxLine,
    );
  }
}
