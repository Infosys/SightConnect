import 'dart:ffi';

import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EyeProblemType extends HookWidget {
  const EyeProblemType({super.key});

  @override
  Widget build(BuildContext context) {
    var dropdownValue = useState<String>('Item 1');
    List<String> items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Eye Problem Type",
          style: applyFiraSansFont(fontSize: 18),
        ),
        const SizedBox(height: AppSize.kmheight),
        Container(
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(AppSize.ksradius),
          ),
          child: FormField<String>(
            builder: (FormFieldState<String> state) {
              return InputDecorator(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: AppSize.kmpadding,
                    vertical: AppSize.kspadding / 2,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSize.ksradius),
                    borderSide: const BorderSide(
                      color: AppColor.white,
                      width: 0,
                    ),
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: dropdownValue.value,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    hint: Text(
                      "Select the type of eye problem",
                      style: applyRobotoFont(),
                    ),
                    style: applyRobotoFont(),
                    isExpanded: true,
                    isDense: true,
                    // underline: null,
                    underline: SizedBox(),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      dropdownValue.value = newValue!;
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
