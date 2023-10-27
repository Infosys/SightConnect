import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageQuestionnaireProvider = ChangeNotifierProvider(
  (ref) => PatientTriageQuestionnaireProvider(),
);

String remarks = '';
var remarksProvider = StateProvider<String>((ref) => remarks);

class PatientTriageQuestionnaireProvider extends ChangeNotifier {
  final List<bool> _selectedOptions = [];
  List<Map<String, dynamic>> questionResponse = [];

  String _questionnaireRemarks = '';

  String get questionnaireRemarks => _questionnaireRemarks;

  void setquestionnaireRemarks(String remarks) {
    _questionnaireRemarks = '$_questionnaireRemarks/$remarks';
    logger.d('\n\nremarks: $_questionnaireRemarks\n\n');
    notifyListeners();
  }

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
    logger.d('\n\nremarks: $questionnaireRemarks\n\n');
  }

  List<bool> get selectedOptions => _selectedOptions;
}
