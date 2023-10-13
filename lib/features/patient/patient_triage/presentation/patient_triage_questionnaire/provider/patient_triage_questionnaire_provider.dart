import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageQuestionnaireProvider = ChangeNotifierProvider(
  (ref) => PatientTriageQuestionnaireProvider(),
);

class PatientTriageQuestionnaireProvider extends ChangeNotifier {
  int index = 0;

  setIndex(int newIndex) {
    index = newIndex;
    notifyListeners();
  }
}
