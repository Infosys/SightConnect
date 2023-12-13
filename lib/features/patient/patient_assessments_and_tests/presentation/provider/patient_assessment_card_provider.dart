import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientAssessmentCardProvider = ChangeNotifierProvider.autoDispose(
    (ref) => PatientAssessmentCardProvider());

class PatientAssessmentCardProvider extends ChangeNotifier {
  /// Update Triage PopUp Provider

  bool _isQuestionnaireSelected = false;
  bool _isVisualAcuitySelected = false;
  bool _isEyeScanned = false;

  bool get isQuestionnaireSelected => _isQuestionnaireSelected;
  bool get isVisualAcuitySelected => _isVisualAcuitySelected;
  bool get isEyeScanned => _isEyeScanned;

  set setQuestionnaireSelected(bool value) {
    _isQuestionnaireSelected = value;
    notifyListeners();
  }

  set setVisualAcuitySelected(bool value) {
    _isVisualAcuitySelected = value;
    notifyListeners();
  }

  set setEyeScanned(bool value) {
    _isEyeScanned = value;
    notifyListeners();
  }
}
