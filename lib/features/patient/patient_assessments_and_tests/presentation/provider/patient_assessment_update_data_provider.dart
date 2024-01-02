import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
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
          chipText: _getSeverityText(null),
          chipColor: Colors.white,
        ));
      } else {
        //check testname and get priority
        Severity? severity = _getPrirityFromText(test, report);
        list.add(UpdateTriageReportAlertBoxEntity(
          testType: test,
          title: _getTestText(test),
          subtitle: 'Completed',
          subtitlecolor: Colors.green,
          chipText: _getSeverityText(severity),
          chipColor: _getRequestSeverityColor(severity),
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

String _getSeverityText(Severity? severity) {
  switch (severity) {
    case Severity.ABNORMAL:
      return "Urgent Consult";
    case Severity.LOW:
      return "Routine Checkup";
    case Severity.HIGH:
      return "Early Checkup";
    default:
      return "";
  }
}

Color  _getRequestSeverityColor(Severity? severity) {
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
  


  Severity? _getPrirityFromText(
      TestType test, TriageDetailedReportModel report) {
    if (test == TestType.QUESTIONNAIRE) {
      return report.questionResponseSeverity;
    } else if (test == TestType.OBSERVATION) {
      return report.observationSeverity;
    } else if (test == TestType.IMAGE) {
      return report.observationSeverity;
    } else {
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
