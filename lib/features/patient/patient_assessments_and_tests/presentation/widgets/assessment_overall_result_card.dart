import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_and_assessment_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class AssessmentOverallResultCard extends StatelessWidget {
  const AssessmentOverallResultCard({
    super.key,
    required this.triageResult,
    required this.name,
    required this.id,
    required this.patientImage,
    required this.triageResultEntities,
  });
  final TriageReportDetailedEntity triageResultEntities;
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
          color: getRequestPriorityColor(triageResultEntities.priority)
              .withOpacity(0.7),
        ),
        boxShadow: [
          BoxShadow(
            color: getRequestPriorityColor(triageResultEntities.priority)
                .withOpacity(0.2),
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
                  color: getRequestPriorityColor(triageResultEntities.priority),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  getRequestPriorityText(triageResultEntities.priority),
                  style: applyRobotoFont(
                    fontSize: 12,
                    color: AppColor.white,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                triageResultEntities.reportDate,
                style: applyRobotoFont(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        subtitle: Text(
          triageResultEntities.questionResultDescription,
          style: applyRobotoFont(
            fontSize: 14,
            color: AppColor.darkGrey,
          ),
        ),
      ),
    );
  }
}

String getRequestPriorityText(RequestPriority priority) {
  switch (priority) {
    case RequestPriority.URGENT:
      return "Urgent Consult";
    case RequestPriority.ROUTINE:
      return "Routine Checkup";
    case RequestPriority.ASAP:
      return "ASAP";
    case RequestPriority.STAT:
      return "STAT";
    default:
      return "";
  }
}

Color getRequestPriorityColor(RequestPriority priority) {
  switch (priority) {
    case RequestPriority.URGENT:
      return AppColor.red;
    case RequestPriority.ROUTINE:
      return AppColor.green;
    case RequestPriority.ASAP:
      return AppColor.orange;
    case RequestPriority.STAT:
      return AppColor.red;
    default:
      return AppColor.grey;
  }
}
