import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.kmheight,
      width: AppSize.kmwidth,
      margin: const EdgeInsets.all(AppSize.kspadding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          AppSize.ksradius / 2,
        ),
      ),
    );
  }
}
