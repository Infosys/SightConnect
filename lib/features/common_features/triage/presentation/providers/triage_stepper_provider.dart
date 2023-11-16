import 'package:eye_care_for_all/main.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageStepperProvider =
    ChangeNotifierProvider((ref) => TriageStepperProvider());

class TriageStepperProvider extends ChangeNotifier {
  int maxSteps = 4;
  int _currentStep = 0;

  int get currentStep => _currentStep;

  void goToNextStep() {
    if (_currentStep < maxSteps) {
      _currentStep++;
      notifyListeners();
    }
    if (kDebugMode) {
      logger.d({
        'currentStep': _currentStep,
      });
    }
  }

  void goToPreviousStep() {
    if (_currentStep > 0) {
      _currentStep--;
      notifyListeners();
    }
    if (kDebugMode) {
      logger.d({
        'currentStep': _currentStep,
      });
    }
  }

  void reset() {
    _currentStep = 0;
    notifyListeners();
  }
}
