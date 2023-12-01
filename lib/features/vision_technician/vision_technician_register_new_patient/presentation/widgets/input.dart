import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input(
      {super.key,
      required this.title,
      required this.keyboardType,
      required this.controller});
  final String title;
  final TextInputType keyboardType;
  final TextEditingController controller;
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final FocusNode _focusNode = FocusNode();
  bool hasFocus = false;

  @override
  Widget build(BuildContext context) {
    _focusNode.addListener(() {
      setState(() {
        hasFocus = _focusNode.hasFocus;
      });
    });
    return TextFormField(
      controller: widget.controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter ${widget.title}';
        }
        return null;
      },
      maxLines: widget.keyboardType == TextInputType.multiline ? 2 : 1,
      keyboardType: widget.keyboardType,
      focusNode: _focusNode,
      autofocus: false,
      decoration: InputDecoration(
        labelText: widget.title,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: AppColor.primary,
          ),
        ),
        labelStyle: applyRobotoFont(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: hasFocus ? AppColor.primary : AppColor.black,
        ),
        floatingLabelStyle: applyRobotoFont(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: hasFocus ? AppColor.primary : AppColor.black,
        ),
      ),
    );
  }
}
