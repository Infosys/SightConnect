import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final organHarvestProvider =
    ChangeNotifierProvider((ref) => OrganHarvestProvider());

class OrganHarvestProvider extends ChangeNotifier {
  int currentStep = 0;
  bool isCompleted = false;

  void setStep(int index) {
    currentStep = index;
    notifyListeners();
  }

  void setCompleted(bool value) {
    isCompleted = value;
    notifyListeners();
  }
}
