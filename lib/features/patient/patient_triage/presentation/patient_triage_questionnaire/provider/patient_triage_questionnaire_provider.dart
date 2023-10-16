import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageQuestionnaireProvider = ChangeNotifierProvider(
  (ref) => PatientTriageQuestionnaireProvider(),
);

class PatientTriageQuestionnaireProvider extends ChangeNotifier {
  final List<String> _selectedOptions = [];
  List<Map<String, dynamic>> questionResponse = [];

  void setSelectedOptions(List<bool> options) {
    var data = options.map((e) => e ? "Yes" : "No").toList();
    _selectedOptions.addAll(data);
    notifyListeners();
    print(
        '\n\n_selectedOptions: $_selectedOptions\n\n   ${_selectedOptions.length}');
  }

  void setQuestionaireResponse() {
    _selectedOptions.removeAt(1);
    for (int i = 0; i < _selectedOptions.length; i++) {
      questionResponse.add(
          {"questionCode": '3000000${i + 1}', "response": _selectedOptions[i]});
    }
    notifyListeners();
    print('\n\nquestionResponse: $questionResponse\n\n');
  }

  List<Map<String, dynamic>> get getQuestionaireResponse => questionResponse;
  List<String> get selectedOptions => _selectedOptions;
}
