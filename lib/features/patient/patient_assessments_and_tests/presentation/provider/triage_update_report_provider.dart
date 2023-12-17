import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var traigeUpdateReportProvider = ChangeNotifierProvider.family(
    (ref, int dignosticReportID) =>
        PatientAssessmentCardProvider(dignosticReportID));

class PatientAssessmentCardProvider extends ChangeNotifier {
  final int dignosticReportID;
  PatientAssessmentCardProvider(this.dignosticReportID) {
    logger.d({
      'dignosticReportID': dignosticReportID,
    });
  }

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
          title: _getTestText(test),
          subtitle: 'Incomplete',
          subtitlecolor: Colors.red,
          chipText: _getRequestPriorityText(RequestPriority.ROUTINE),
          chipColor: _getRequestPriorityColor(RequestPriority.ROUTINE),
          onPressed: () {
            //Navigate to quessionaire
          },
        ));
      } else {
        list.add(UpdateTriageReportAlertBoxEntity(
          title: _getTestText(test),
          subtitle: 'Completed',
          subtitlecolor: Colors.green,
          chipText: _getRequestPriorityText(report.quessionnairepriority),
          chipColor: _getRequestPriorityColor(report.quessionnairepriority),
          onPressed: () {
            //Navigate to quessionaire
          },
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
  final String title;
  final String subtitle;
  final Color subtitlecolor;
  final String chipText;
  final Color chipColor;
  final VoidCallback onPressed;

  UpdateTriageReportAlertBoxEntity({
    required this.title,
    required this.subtitle,
    required this.subtitlecolor,
    required this.chipText,
    required this.chipColor,
    required this.onPressed,
  });
}

class AssessmentReportMapper {
  static UpdateTriageReportAlertBoxEntity toEntity(
      TriageDetailedReportModel model) {
    return UpdateTriageReportAlertBoxEntity(
      title: model.diagnosticReportDescription ?? "NA",
      subtitle: model.userStartDate!.toString(),
      subtitlecolor: Colors.green,
      chipText: 'Routine Checkup',
      chipColor: Colors.green,
      onPressed: () {
        //Navigate to quessionaire
      },
    );
  }
}
