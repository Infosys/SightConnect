import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

class LoginMobileNumberField extends StatelessWidget {
  const LoginMobileNumberField({
    super.key,
    this.onChanged,
    this.controller,
    this.onSaved,
    this.focusNode,
  });

  final Function(String)? onChanged;
  final TextEditingController? controller;
  final Function(String?)? onSaved;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    final loc = context.loc!;
    return TextFormField(
      focusNode: focusNode,
      controller: controller,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        const pattern = r'(^(?:[+0]9)?[0-9]{10}$)';
        final regExp = RegExp(pattern);
        if (value!.isEmpty) {
          return loc.loginEnterMobileNumber;
        } else if (!regExp.hasMatch(value)) {
          return loc.loginEnterValidMobileNumber;
        }
        return null;
      },
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(16),
        border: const UnderlineInputBorder(),
        labelText: loc.mobileNumber,
        labelStyle: const TextStyle(
          fontSize: 14,
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.blue, width: 2.0),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.blue, width: 2.0),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.red, width: 2.0),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.red, width: 2.0),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.lightGrey,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
