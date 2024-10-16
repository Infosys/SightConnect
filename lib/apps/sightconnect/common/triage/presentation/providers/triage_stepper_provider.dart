/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/usecases/get_triage_current_step_usecase.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/keycloak.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageStepperProvider = ChangeNotifierProvider(
  (ref) => TriageStepperProvider(
    ref.watch(getTriageCurrentStepUseCase),
  ),
);

class TriageStepperProvider extends ChangeNotifier {
  int _maxSteps = 4;
  int _currentStep = 0;
  final GetTriageCurrentStepUseCase _useCase;
  TriageStepperProvider(this._useCase) {
    setMaxSteps();
    getTriageCurrentStep();
  }

  int get currentStep => _currentStep;
  int get maxSteps => _maxSteps;

  void setMaxSteps() {
    final role = roleMapper(PersistentAuthStateService.authState.activeRole);
    if (role! == Role.ROLE_OPTOMETRIST) {
      _maxSteps = 4;
    } else {
      _maxSteps = 4;
    }
    notifyListeners();
  }

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
    if (_currentStep < _maxSteps) {
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
