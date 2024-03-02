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
    return SizedBox(
      width: AppSize.width(context) * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Remarks",
            style: applyFiraSansFont(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextFormField(
                controller: controller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return loc.vtEnterSomeText;
                  }
                  return null;
                },
                keyboardType: keyboardType,
                focusNode: _focusNode,
                autofocus: false,
                maxLines: 2,
                decoration: const InputDecoration(
                  hintText: "Add Remarks",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
