import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/fake_data_source.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/repository/triage_report_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/repository/triage_report_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var assessmentsAndTestProvider = ChangeNotifierProvider(
  (ref) => AssessmentsAndTestProvider(
    ref.watch(triageReportRepositoryProvider),
  ),
);

var getEyeAssessmentReport = FutureProvider((ref) async {
  const int patientId = 1;
  var response = await ref
      .watch(triageReportRepositoryProvider)
      .getAllTriageReportsByPatientId(patientId);
  return response.fold((failure) {
    logger.d({
      "getTriageReports ": failure,
    });
    throw failure;
  }, (triageAssessment) {
    return triageAssessment;
  });
});

var getAssementDetailsReport =
    FutureProvider.family((ref, assessmentCode) async {
  const int patientId = 1;
  var response = await ref
      .watch(triageReportRepositoryProvider)
      .getAllTriageReportsByPatientId(patientId);
  return response.fold((failure) {
    logger.d({
      "getTriageReports ": failure,
    });
    throw failure;
  }, (triageAssessment) {
    return triageAssessment;
  });
});

class AssessmentsAndTestProvider extends ChangeNotifier {
  final TriageReportRepository triageReportRepositoryProvider;
  final int _patientId = 9627849171;
  List<TriageDetailedReportModel> _triageReports = [];

  AssessmentsAndTestProvider(
    this.triageReportRepositoryProvider,
  ) {
    getTriageReports();
  }

  getTriageReports() async {
    var response = await triageReportRepositoryProvider
        .getAllTriageReportsByPatientId(_patientId);
    response.fold((failure) {
      logger.d({
        "getTriageReports ": failure,
      });
      throw failure;
    }, (triageAssessment) {
      _triageReports = triageAssessment;
      logger.d({
        "getTriageReports details": triageAssessment,
      });
      notifyListeners();
    });
  }

  get getTriageReportsData => _triageReports;

  List<Map<String, dynamic>> stateData = [];
  int selectedOption = 1;
  String selectedName = people[0]['name'];
  set setSelectedName(String value) {
    selectedName = value;
    logger.d('\n\n$selectedName\n\n');
    notifyListeners();
  }

  set setSelectedOption(int value) {
    selectedOption = value;
    notifyListeners();
    logger.d('\n\n$selectedOption\n\n');
  }

  get getStateData => stateData;

  setstate() {
    if (selectedOption == 1) {
      stateData = data;
    } else if (selectedOption == 2) {
      stateData =
          data.where((element) => element['name'] == selectedName).toList();
    }
    logger.d('Function k andar ka\n\n$stateData\n\n');
  }
}
