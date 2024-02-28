import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
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
    final loc = context.loc!;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSize.kmpadding),
      decoration: BoxDecoration(
        color: AppColor.lightGrey.withOpacity(0.2),
      ),
      child: Center(
        child: TextFormField(
          controller: controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return loc.vtEnterSomeText;
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
        ),
      ),
    );
  }
}
