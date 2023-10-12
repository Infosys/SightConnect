import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageStepperProvider =
    ChangeNotifierProvider((ref) => PatientTriageStepperProvider());

class PatientTriageStepperProvider extends ChangeNotifier {
  int _currentStep = 0;
  int get currentStep => _currentStep;

  void nextStep() {
    if (_currentStep <= 3) {
      _currentStep++;
    }

    notifyListeners();
  }
}
