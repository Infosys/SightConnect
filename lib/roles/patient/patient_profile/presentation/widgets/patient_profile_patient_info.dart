import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            style: applyRobotoFont(fontSize: 14.sp, color: Color(0xFF888888)),
          ),
          Text(
            valueText ?? "",
            style: applyRobotoFont(fontSize: 14.sp).copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
