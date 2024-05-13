import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
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
  }) : super(key: key);

  AppTextField.dob({
    Key? key,
    this.controller,
    this.initialValue,
    this.focusNode,
    this.keyboardType,
    this.onChanged,
    VoidCallback? onDateSelected,
    this.maxLine = 1,
    InputDecoration? decoration,
    this.regex,
  })  : decoration = decoration?.copyWith(
          suffixIcon: IconButton(
            onPressed: onDateSelected,
            icon: const Icon(Icons.calendar_today, color: AppColor.grey),
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

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: isMobile ? AppSize.width(context) * 0.4 : 300,
        maxWidth: isMobile ? AppSize.width(context) * 0.4 : 300,
      ),
      child: TextFormField(
        maxLines: maxLine,
        controller: controller,
        initialValue: initialValue,
        focusNode: focusNode,
        keyboardType: keyboardType,
        onChanged: onChanged,
        decoration: decoration?.copyWith(
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
