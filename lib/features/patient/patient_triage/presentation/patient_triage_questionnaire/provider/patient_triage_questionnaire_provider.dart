import 'dart:math';

import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/providers/patient_triage_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientTriageQuestionnaireProvider = ChangeNotifierProvider(
  (ref) => PatientTriageQuestionnaireProvider(
    ref.watch(patientTriageProvider).questionnaireSections,
  ),
);

class PatientTriageQuestionnaireProvider extends ChangeNotifier {
  final List<QuestionnaireSection> _questionnaireSections;

  late String _questionnaireRemarks;
  late final Map<int, bool> _selectedOptions;
  late final List<Map<int, bool>> _questionnaireResponse;
  late final int _totalPages;

  PatientTriageQuestionnaireProvider(this._questionnaireSections)
      : _questionnaireRemarks = '',
        _selectedOptions = {},
        _questionnaireResponse = [],
        _totalPages = _questionnaireSections.length;

  List<String> allRemarks = [
    '',
  ];
  List<String> get allRemarksList => allRemarks;
  String get questionnaireRemarks => _questionnaireRemarks;
  Map<int, bool> get selectedOptions => _selectedOptions;
  int get totalPage => _totalPages;
  List<QuestionnaireSection> get questionnaireSections =>
      _questionnaireSections;
  List<Map<int, bool>> get finalquestionnaireResponse => _questionnaireResponse;

  void setQuestionnaireRemarks(String remarks) {
    _questionnaireRemarks = remarks;
    allRemarks.add(remarks);
    notifyListeners();
  }

  void addQuestionnaireAnswer(int questionCode, bool answer) {
    _selectedOptions[questionCode] = answer;
    _selectedOptions.forEach((key, value) {
    });
    notifyListeners();
    logger.d("Added Options: $_selectedOptions");
  }

  void removeQuestionnaireAnswer(int questionCode) {
    _selectedOptions.remove(questionCode);
    notifyListeners();
    logger.d("Removed Options: $_selectedOptions");
  }

  void removeAllQuestionnaireAnswer() {
    _selectedOptions.clear();
    notifyListeners();
    logger.d("Removed Options: $_selectedOptions");
  }

  void saveQuestionaireResponse() {
    _questionnaireResponse.add(_selectedOptions);
    calculateQuestionnaireUrgency(_selectedOptions);
    getquestionnaireForReportPage(_selectedOptions);
    logger.d("Questionnaire Response: $_selectedOptions");
    _selectedOptions.clear();
    notifyListeners();
  }

  int urgency = 1;
  int index = 0;
  List<Map<String, dynamic>> questionnaireForReportPage = [];

  List<Map<String, dynamic>> getquestionnaireForReportPage(selectedOptions) {
    List<int> selectedOptionsID = selectedOptions.keys.toList();

    for (var question in questionnaireSections[index].questionnaire!) {
      List<String> temp = [];
      for (var question in question.questions!) {
        if (selectedOptionsID.contains(question.code)) {
          temp.add(question.statement!);
        }
      }
      questionnaireForReportPage
          .add({"question": question.description, "answer": temp});
      index++;
    }

    logger.f("Questionnaire for Report Page: $questionnaireForReportPage");
    return questionnaireForReportPage;
  }

  void calculateQuestionnaireUrgency(Map<int, bool> selectedOptions) {
    List<int> selectedOptionsID = selectedOptions.keys.toList();
    for (var questionnaire in _questionnaireSections) {
      for (var question in questionnaire.questionnaire!) {
        for (var question in question.questions!) {
          if (selectedOptionsID.contains(question.code)) {
            urgency = max(urgency, question.weight!);
          }
        }
      }
    }
    logger.f("Questionnaire Urgency: $urgency");
  }

  int getTriageQuestionnaireUrgency() {
    return urgency;
  }
}
