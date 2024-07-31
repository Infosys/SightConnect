import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vgdetailsstepperprovider = ChangeNotifierProvider<VgDetailsStepperProvider>(
  (ref) => VgDetailsStepperProvider(),
);

class VgDetailsStepperProvider extends ChangeNotifier {
  VgDetailsStepperProvider() : super();

  int currentStep = 0;

  void next() {
    if (currentStep < 1) {
      currentStep++;
      notifyListeners();
    }
  }

  void prev() {
    if (currentStep > 0) {
      currentStep--;
      notifyListeners();
    }
  }
}
