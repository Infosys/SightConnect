import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {

    bool isMobile = Responsive.isMobile(context);

    return Container(
      height: isMobile ? AppSize.kmheight/2 : AppSize.kmheight,
      width: isMobile ? AppSize.kmwidth/2 : AppSize.kmwidth,
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
