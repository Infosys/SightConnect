import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var traigeUpdateReportProvider = ChangeNotifierProvider.family(
    (ref, int dignosticReportID) =>
        PatientAssessmentCardProvider(dignosticReportID, ref));

class PatientAssessmentCardProvider extends ChangeNotifier {
  final DiagnosticReportTemplateFHIRModel _triageAssessment;
  final int dignosticReportID;
  final Ref ref;

  PatientAssessmentCardProvider(this.dignosticReportID, this.ref)
      : _triageAssessment = ref.watch(getTriageProvider).asData!.value;

  DiagnosticReportTemplateFHIRModel get triageAssessment => _triageAssessment;

  List<UpdateTriageReportAlertBoxEntity>
      getUpdateTriageReportAlertBoxEntityList(
          TriageReportDetailedEntity report) {
    List<UpdateTriageReportAlertBoxEntity> list = [];
    List<TestType> tests = [
      TestType.QUESTIONNAIRE,
      TestType.OBSERVATION,
      TestType.IMAGE
    ];

    for (TestType test in tests) {
      if (_isTestIncomplete(test, report.icompleteTests)) {
        list.add(UpdateTriageReportAlertBoxEntity(
          testType: test,
          title: _getTestText(test),
          subtitle: 'Incomplete',
          subtitlecolor: Colors.red,
          chipText: _getRequestPriorityText(RequestPriority.ROUTINE),
          chipColor: _getRequestPriorityColor(RequestPriority.ROUTINE),
        ));
      } else {
        list.add(UpdateTriageReportAlertBoxEntity(
          testType: test,
          title: _getTestText(test),
          subtitle: 'Completed',
          subtitlecolor: Colors.green,
          chipText: _getRequestPriorityText(report.quessionnairepriority),
          chipColor: _getRequestPriorityColor(report.quessionnairepriority),
        ));
      }
    }

    return list;
  }

  bool _isTestIncomplete(
    TestType test,
    List<IncompleteTest>? incompleteTests,
  ) {
    if (incompleteTests != null) {
      for (IncompleteTest incompleteTest in incompleteTests) {
        if (incompleteTest.testName == test) {
          return true;
        }
      }
    }
    return false;
  }

  String _getRequestPriorityText(RequestPriority priority) {
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

  Color _getRequestPriorityColor(RequestPriority priority) {
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

  String _getTestText(TestType test) {
    switch (test) {
      case TestType.QUESTIONNAIRE:
        return "Questionnaire";
      case TestType.OBSERVATION:
        return "Observation";
      case TestType.IMAGE:
        return "Image";
      default:
        return "";
    }
  }
}

class UpdateTriageReportAlertBoxEntity {
  final TestType testType;
  final String title;
  final String subtitle;
  final Color subtitlecolor;
  final String chipText;
  final Color chipColor;

  UpdateTriageReportAlertBoxEntity({
    required this.testType,
    required this.title,
    required this.subtitle,
    required this.subtitlecolor,
    required this.chipText,
    required this.chipColor,
  });
}
