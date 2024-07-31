import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/l10n/app_localizations.dart';
import 'package:eye_care_for_all/shared/constants/app_color.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
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
          color: getRequestSeverityColor(
                  triageResultEntities.questionResponseSeverity)
              .withOpacity(0.7),
        ),
        boxShadow: [
          BoxShadow(
            color: getRequestSeverityColor(
                    triageResultEntities.questionResponseSeverity)
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
                  color: getRequestSeverityColor(
                      triageResultEntities.questionResponseSeverity),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  getSeverityText(triageResultEntities.questionResponseSeverity,
                      context.loc!),
                  style: applyRobotoFont(
                    fontSize: 12,
                    color: AppColor.white,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                triageResultEntities.reportDate!.formateDateWithTime,
                style: applyRobotoFont(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        subtitle: Text(
          triageResultEntities.questionResultDescription ?? "NA",
          style: applyRobotoFont(
            fontSize: 14,
            color: AppColor.darkGrey,
          ),
        ),
      ),
    );
  }
}

String getSeverityText(Severity? severity, AppLocalizations loc) {
  switch (severity) {
    case Severity.ABNORMAL:
      return loc.reportSeverityAbnormal;
    case Severity.HIGH:
      return loc.reportSeverityHigh;
    case Severity.LOW:
      return loc.reportSeverityLow;
    default:
      return "";
  }
}

Color getRequestSeverityColor(Severity? severity) {
  switch (severity) {
    case Severity.ABNORMAL:
      return AppColor.red;
    case Severity.HIGH:
      return AppColor.orange;
    case Severity.LOW:
      return AppColor.green;

    default:
      return AppColor.grey;
  }
}
