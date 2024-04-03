import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class VCRadioButton extends StatelessWidget {
  final bool isSelected;
  final VoidCallback? onTap;
  const VCRadioButton({
    super.key,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isSelected ? AppColor.green : AppColor.white,
          border: Border.all(
            color: isSelected ? AppColor.green : AppColor.grey,
            width: 2,
          ),
        ),
        child: Center(
          child: isSelected
              ? const Icon(
                  Icons.check,
                  color: AppColor.white,
                  size: 16,
                  weight: 10,
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
