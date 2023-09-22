import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class PatientInfoCard extends StatelessWidget {
  const PatientInfoCard({super.key, this.keyText, this.valueText});
  final String? keyText;
  final String? valueText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            keyText ?? "",
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.grey,
            ),
          ),
          Text(
            valueText ?? "",
            style: applyRobotoFont(fontSize: 14).copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
