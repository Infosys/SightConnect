import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageStepperProvider =
    ChangeNotifierProvider((ref) => PatientTriageStepperProvider());

class PatientTriageStepperProvider extends ChangeNotifier {
  int _currentStep = 0;
  int get currentStep => _currentStep;

  void nextStep(value) {
    if (_currentStep <= 4) {
      _currentStep = value;
    }
    logger.f("Current Step: $_currentStep");
    notifyListeners();
  }

  void reset() {
    _currentStep = 0;
    notifyListeners();
  }
}
