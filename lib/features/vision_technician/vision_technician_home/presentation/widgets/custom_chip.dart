import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomChip extends HookWidget {
  const CustomChip({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    var backgroundColor = useState(AppColor.white);
    var borderColor = useState(AppColor.grey);

    return InkWell(
      onTap: () {
        print("working");

        backgroundColor.value = backgroundColor.value == AppColor.white
            ? AppColor.primary.withOpacity(0.2)
            : AppColor.white;

        borderColor.value = borderColor.value == AppColor.grey
            ? AppColor.primary
            : AppColor.grey;
        print(backgroundColor);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: AppSize.kspadding / 2, vertical: AppSize.kspadding / 2),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.kmpadding,
          vertical: AppSize.kspadding,
        ),
        decoration: BoxDecoration(
          color: backgroundColor.value,
          border: Border.all(color: borderColor.value),
          borderRadius: BorderRadius.circular(AppSize.klradius / 2),
        ),
        child: Text(
          title,
          style: applyRobotoFont(fontSize: 14),
        ),
      ),
    );
  }
}
