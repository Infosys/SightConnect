import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientAssessmentUpdateDataProvider = Provider(
  (ref) => PatientAssessmentUpdateDataProvider(),
);

class PatientAssessmentUpdateDataProvider {
  PatientAssessmentUpdateDataProvider();

  List<UpdateTriageReportAlertBoxEntity>
      getUpdateTriageReportAlertBoxEntityList(
          TriageDetailedReportModel report) {
    List<UpdateTriageReportAlertBoxEntity> list = [];
    List<TestType> tests = [
      TestType.QUESTIONNAIRE,
      TestType.OBSERVATION,
      TestType.IMAGE
    ];

    for (TestType test in tests) {
      if (_isTestIncomplete(test, report.incompleteTests)) {
        list.add(UpdateTriageReportAlertBoxEntity(
          testType: test,
          title: _getTestText(test),
          subtitle: 'Incomplete',
          subtitlecolor: Colors.red,
          chipText: _getRequestPriorityText(null),
          chipColor: _getRequestPriorityColor(null),
        ));
      } else {
        //check testname and get priority
        RequestPriority? priority = _getPrirityFromText(test, report);
        list.add(UpdateTriageReportAlertBoxEntity(
          testType: test,
          title: _getTestText(test),
          subtitle: 'Completed',
          subtitlecolor: Colors.green,
          chipText: _getRequestPriorityText(priority),
          chipColor: _getRequestPriorityColor(priority),
        ));
      }
    }
    return list;
  }

  bool _isTestIncomplete(
    TestType test,
    List<IncompleteTestModel>? incompleteTests,
  ) {
    if (incompleteTests != null) {
      for (IncompleteTestModel incompleteTest in incompleteTests) {
        if (incompleteTest.testName == test) {
          return true;
        }
      }
    }
    return false;
  }

  String _getRequestPriorityText(RequestPriority? priority) {
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
        return "NA";
    }
  }

  Color _getRequestPriorityColor(RequestPriority? priority) {
    switch (priority) {
      case RequestPriority.ASAP:
        return AppColor.red;
      case RequestPriority.ROUTINE:
        return AppColor.green;
      case RequestPriority.URGENT:
        return AppColor.orange;
      case RequestPriority.STAT:
        return AppColor.red;
      default:
        return AppColor.grey;
    }
  }

  RequestPriority? _getPrirityFromText(
      TestType test, TriageDetailedReportModel report) {
    if (test == TestType.QUESTIONNAIRE) {
      return getPriorityFromSeverity(report.questionResponseSeverity);
    } else if (test == TestType.OBSERVATION) {
      return getPriorityFromSeverity(report.observationSeverity);
    } else if (test == TestType.IMAGE) {
      return getPriorityFromSeverity(report.mediaSeverity);
    } else {
      return null;
    }
  }

  RequestPriority? getPriorityFromSeverity(Severity? severity) {
    switch (severity) {
      case Severity.ABNORMAL:
        return RequestPriority.ASAP;
      case Severity.HIGH:
        return RequestPriority.URGENT;
      case Severity.LOW:
        return RequestPriority.ROUTINE;
      default:
        return null;
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

  @override
  String toString() {
    return 'UpdateTriageReportAlertBoxEntity(testType: $testType, title: $title, subtitle: $subtitle, subtitlecolor: $subtitlecolor, chipText: $chipText, chipColor: $chipColor)';
  }
}
