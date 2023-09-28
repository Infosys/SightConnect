import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MemberDetailsForm extends HookWidget {
  const MemberDetailsForm({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    final nameFocusNode = useFocusNode();

    final nameFocus = useState(false);

    nameFocusNode.addListener(() {
      nameFocus.value = nameFocusNode.hasFocus;
    });
    return TextField(
      focusNode: nameFocusNode,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: AppColor.primary,
          ),
        ),
        labelText: text,
        labelStyle: applyRobotoFont(
            fontSize: 14,
            color: nameFocus.value ? AppColor.primary : AppColor.black),
      ),
    );
  }
}