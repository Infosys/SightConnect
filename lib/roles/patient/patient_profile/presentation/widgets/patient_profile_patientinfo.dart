import 'package:eye_care_for_all/shared/theme/app_theme.dart';
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
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          Text(
            valueText ?? "",
            style: AppTheme.lightTheme.textTheme.bodySmall?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}