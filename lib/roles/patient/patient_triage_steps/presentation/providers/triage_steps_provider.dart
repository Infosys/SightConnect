import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageStepsProvider =
    ChangeNotifierProvider((ref) => TriageStepsProvider());

class TriageStepsProvider extends ChangeNotifier {
  int totalSteps = 3;
  int currentStep = 1;

  set updateStep(int step) {
    currentStep = step;
    notifyListeners();
  }
}
