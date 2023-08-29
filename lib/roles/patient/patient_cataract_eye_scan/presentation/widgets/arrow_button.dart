import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.activeIndex,
  });
  final VoidCallback onTap;
  final IconData icon;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: (activeIndex == 0 && icon == Icons.arrow_back_ios)
                ? AppColor.kGrey
                : AppColor.kPrimary,
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            size: 20,
            color: (activeIndex == 0 && icon == Icons.arrow_back_ios)
                ? AppColor.kGrey
                : AppColor.kPrimary,
          ),
        ),
      ),
    );
  }
}
