import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AssessmentOverallResultCard extends StatelessWidget {
  const AssessmentOverallResultCard({
    super.key,
    required this.triageResult,
    required this.name,
    required this.id,
    required this.patientImage,
  });
  final Map<String, dynamic> triageResult;
  final String name;
  final String id;
  final String patientImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColor.scaffold,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColor.orange.withOpacity(0.7),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.orange.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 1.5,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: AppColor.orange,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "Routine",
                  style: applyRobotoFont(
                    fontSize: 12,
                    color: AppColor.white,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "12/12/23",
                style: applyRobotoFont(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        subtitle: Flexible(
          child: Text(
            "Sint incididunt est ut non. Veniam elit est exercitation sunt pariatur irure. Duis incididunt enim magna voluptate amet officia incididunt. ",
            style: applyRobotoFont(
              fontSize: 14,
              color: AppColor.darkGrey,
            ),
          ),
        ),
      ),
    );
  }
}
