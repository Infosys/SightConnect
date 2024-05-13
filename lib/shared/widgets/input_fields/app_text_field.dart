import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.keyboardType,
    this.decoration = const InputDecoration(),
  }) : super(key: key);

  final TextEditingController? controller;
  final String? initialValue;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      focusNode: focusNode,
      keyboardType: keyboardType,
      decoration: decoration?.copyWith(
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
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
    );
  }
}
