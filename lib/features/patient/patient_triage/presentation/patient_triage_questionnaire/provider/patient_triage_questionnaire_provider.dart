import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageQuestionnaireProvider = ChangeNotifierProvider(
  (ref) => PatientTriageQuestionnaireProvider(),
);

class PatientTriageQuestionnaireProvider extends ChangeNotifier {
  final List<bool> _selectedOptions = [];
  List<Map<String, dynamic>> questionResponse = [];

  void setSelectedOptions(List<bool> options) {
    _selectedOptions.addAll(options);
    notifyListeners();
  }

  void setQuestionaireResponse() {
    _selectedOptions.removeAt(1);
    for (int i = 0; i < _selectedOptions.length; i++) {
      questionResponse.add(
        {
          "questionCode": '3000000${i + 1}',
          "response": _selectedOptions[i],
        },
      );
    }
    notifyListeners();
    logger.d('\n\nquestionResponse: $questionResponse\n\n');
  }

  List<bool> get selectedOptions => _selectedOptions;
}
