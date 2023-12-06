import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_db_helper.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageStepperProvider = ChangeNotifierProvider(
  (ref) => TriageStepperProvider(
    ref.watch(triageDBHelperProvider),
  ),
);

class TriageStepperProvider extends ChangeNotifier {
  int maxSteps = 4;
  int _currentStep = 0;
  TriageDBHelper localDB;
  TriageStepperProvider(this.localDB) {
    getTriageCurrentStep();
  }

  void getTriageCurrentStep() async {
    // _currentStep = await localDB.getTriageCurrentStep();
    notifyListeners();
  }

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
