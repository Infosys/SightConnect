import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class SymptomsCard extends StatelessWidget {
  const SymptomsCard({
    super.key,
    required this.color,
    required this.value,
    required this.symptom,
  });
  final Color color;
  final double value;
  final String symptom;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: AppSize.kmheight * 2,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            value.toInt().toString(),
            style: applyFiraSansFont(
              fontSize: 24,
              height: 1,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
          const SizedBox(width: AppSize.kswidth),
          Text(
            symptom,
            style: applyRobotoFont(
              height: 1,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColor.grey,
            ),
          )
        ],
      ),
    );
  }
}
