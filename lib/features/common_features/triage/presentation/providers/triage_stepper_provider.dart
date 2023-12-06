import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageStepperProvider = ChangeNotifierProvider(
  (ref) => TriageStepperProvider(
    ref.watch(triageRepositoryProvider),
  ),
);

class TriageStepperProvider extends ChangeNotifier {
  int maxSteps = 4;
  int _currentStep = 0;
  final TriageRepository _repository;
  TriageStepperProvider(this._repository) {
    getTriageCurrentStep();
  }

  void getTriageCurrentStep() async {
    final response = await _repository.getTriageCurrentStep();
    response.fold((failure) {
      logger.d({
        'getTriageCurrentStep': failure,
      });
    }, (result) {
      _currentStep = result;
      notifyListeners();
    });
  }

  int get currentStep => _currentStep;

  void goToNextStep() {
    if (_currentStep < maxSteps) {
      _currentStep++;
      notifyListeners();
    }

    logger.d({
      'currentStep': _currentStep,
    });
  }

  void goToPreviousStep() {
    if (_currentStep > 0) {
      _currentStep--;
      notifyListeners();
    }

    logger.d({
      'currentStep': _currentStep,
    });
  }

  void reset() {
    _currentStep = 0;
    notifyListeners();
  }
}
