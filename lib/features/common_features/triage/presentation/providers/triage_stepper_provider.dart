import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_triage_current_step_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/providers/triage_member_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageStepperProvider = ChangeNotifierProvider(
  (ref) => TriageStepperProvider(
    ref.watch(getTriageCurrentStepUseCase),
    ref.watch(triageMemberProvider).testPatientId!,
  ),
);

class TriageStepperProvider extends ChangeNotifier {
  int maxSteps = 4;
  int _currentStep = 0;
  final GetTriageCurrentStepUseCase _useCase;
  final int patientID;
  TriageStepperProvider(this._useCase, this.patientID) {
    getTriageCurrentStep();
  }

  int get currentStep => _currentStep;

  Future<void> getTriageCurrentStep() async {
    final response =
        await _useCase.call(GetTriageCurrentStepParam(patientID.toString()));
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
