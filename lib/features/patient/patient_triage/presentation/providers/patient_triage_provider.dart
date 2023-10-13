import 'package:eye_care_for_all/features/patient/patient_triage/data/contracts/triage_repository.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/repositories/triage_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageProvider = ChangeNotifierProvider(
  (ref) => PatientTriageProvider(ref.read(triageRepositoryProvider)),
);

class PatientTriageProvider extends ChangeNotifier {
  final TriageRepository _triageRepository;
  List<QuestionnaireSection> _questionnaireSections = [];

  List<QuestionnaireSection> get questionnaireSections =>
      _questionnaireSections;

  PatientTriageProvider(this._triageRepository) {
    getTriage();
  }

  getTriage() async {
    var response = await _triageRepository.getTriage();
    response.fold(
      (failure) => debugPrint(failure.message),
      (triageAssessment) {
        _questionnaireSections = triageAssessment.questionnaireSections!;
        notifyListeners();
      },
    );
    notifyListeners();
  }
}
