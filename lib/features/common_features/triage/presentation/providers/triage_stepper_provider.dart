import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_triage_current_step_usecase.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageStepperProvider = ChangeNotifierProvider(
  (ref) => TriageStepperProvider(
    ref.watch(getTriageCurrentStepUseCase),
  ),
);

class TriageStepperProvider extends ChangeNotifier {
  int maxSteps = 3;
  int _currentStep = 0;
  final GetTriageCurrentStepUseCase _useCase;
  TriageStepperProvider(this._useCase) {
    if(PersistentAuthStateService.authState.activeRole == "ROLE_OPTOMETRIST"){
      maxSteps = 4;
    }
    getTriageCurrentStep();
  }

  int get currentStep => _currentStep;

  Future<void> getTriageCurrentStep() async {
    final response = await _useCase.call(GetTriageCurrentStepParam());
    response.fold((failure) {
      logger.d({
        'getTriageCurrentStep': failure,
      });
    }, (result) {
      _currentStep = result;
      notifyListeners();
    });
  }

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
