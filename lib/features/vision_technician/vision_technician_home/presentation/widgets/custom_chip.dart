import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });
  final String title;
  final Function(String type) onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(title);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: AppSize.kspadding / 2,
          vertical: AppSize.kspadding / 2,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.kmpadding,
          vertical: AppSize.kspadding,
        ),
        decoration: BoxDecoration(
          color: isSelected ? AppColor.lightBlue : AppColor.white,
          border: Border.all(
            color: isSelected ? AppColor.primary : AppColor.grey,
          ),
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
