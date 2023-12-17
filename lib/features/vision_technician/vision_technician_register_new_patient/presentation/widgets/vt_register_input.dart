import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VTRegisterInput extends HookConsumerWidget {
  VTRegisterInput(
      {super.key,
      required this.title,
      required this.keyboardType,
      required this.controller});
  final String title;
  final TextInputType keyboardType;
  final TextEditingController controller;

  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ValueNotifier<bool> hasFocus = useState(false);
    _focusNode.addListener(() {
      hasFocus.value = _focusNode.hasFocus;
    });
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value?.length == 0) {
          return 'Please enter ${title}';
        }
        if (title == "Email (Optional)" && value!.contains('@') == false) {
          return 'Please enter valid email Id';
        }

        if (title == "Mobile Number" &&
            (RegExp(r'^[0-9]{10}$')).hasMatch(value!) == false) {
          return 'Please enter valid Phone Number';
        }
        if (title == "Pincode" &&
            (RegExp(r'^[0-9]{10}$')).hasMatch(value!) == false) {
          return 'Please enter valid PinCode';
        }
        return null;
      },
      maxLines: keyboardType == TextInputType.multiline ? 2 : 1,
      keyboardType: keyboardType,
      focusNode: _focusNode,
      autofocus: false,
      decoration: InputDecoration(
        labelText: title,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 3,
            color: AppColor.primary,
          ),
        ),
        labelStyle: applyRobotoFont(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: hasFocus.value ? AppColor.primary : AppColor.black,
        ),
        floatingLabelStyle: applyRobotoFont(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: hasFocus.value ? AppColor.primary : AppColor.black,
        ),
      ),
    );
  }
}
