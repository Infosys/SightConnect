import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final organHarvestProvider =
    ChangeNotifierProvider.autoDispose((ref) => OrganHarvestProvider());

class OrganHarvestProvider extends ChangeNotifier {
  int currentStep = 1;
  bool isCompleted = false;

  void setStep(int index) {
    currentStep = index;
    notifyListeners();
  }

  void setCompleted(bool value) {
    isCompleted = value;
    notifyListeners();
  }

  void reset() {
    currentStep = 1;
    isCompleted = false;
    notifyListeners();
  }
}
