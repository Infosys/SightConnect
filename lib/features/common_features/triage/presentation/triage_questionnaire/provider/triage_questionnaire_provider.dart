import 'dart:math';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageQuestionnaireProvider = ChangeNotifierProvider(
  (ref) => TriageQuestionnaireProvider(),
);

class TriageQuestionnaireProvider extends ChangeNotifier {
  late List<QuestionnaireSection> _questionnaireSections;
  late String _questionnaireRemarks;
  late final Map<int, bool> _selectedOptions;
  late final List<Map<int, bool>> _questionnaireResponse;
  int _currentQuestionnairePageIndex = 0;
  List<String> allRemarks = ['', '', ''];

  TriageQuestionnaireProvider()
      : _questionnaireRemarks = '',
        _selectedOptions = {},
        _questionnaireSections = [],
        _questionnaireResponse = [];

  List<String> get allRemarksList => allRemarks;
  String get questionnaireRemarks => _questionnaireRemarks;
  Map<int, bool> get selectedOptions => _selectedOptions;
  List<QuestionnaireSection> get questionnaireSections =>
      _questionnaireSections;
  List<Map<int, bool>> get finalquestionnaireResponse => _questionnaireResponse;

  void setQuestionnaireRemarks(String remarks, currentPageIndex) {
    _questionnaireRemarks = _questionnaireRemarks + remarks;
    allRemarks.insert(currentPageIndex, remarks);
    notifyListeners();
  }

  void getQuestionnaire(List<QuestionnaireSection> data) async {
    _questionnaireSections = data;
  }

  // void setQuestionnaireRemarks(String remarks) {
  //   _questionnaireRemarks = remarks;
  //   allRemarks.add(remarks);
  //   notifyListeners();
  // }

  void addQuestionnaireAnswer(int questionCode, bool answer) {
    _selectedOptions[questionCode] = answer;
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
    addQuestionnaireToReportPageList(_selectedOptions);
    _currentQuestionnairePageIndex++;
    logger.d("Questionnaire Response: $_selectedOptions");
    _selectedOptions.clear();
    notifyListeners();
  }

  int _triageQuestionnaireUrgency = 1;

  List<Map<String, dynamic>> questionnaireForReportPage = [];

  void addQuestionnaireToReportPageList(selectedOptions) {
    List<int> selectedOptionsID = selectedOptions.keys.toList();
    List<Questionnaire> currentQuestionnaireSections =
        questionnaireSections[_currentQuestionnairePageIndex].questionnaire!;

    for (var question in currentQuestionnaireSections) {
      List<String> currentQuestionStatement = [];
      for (var question in question.questions!) {
        if (selectedOptionsID.contains(question.code)) {
          currentQuestionStatement.add(
            question.statement!,
          );
        }
      }
      questionnaireForReportPage.add({
        "question": question.description,
        "answer": currentQuestionStatement,
      });
    }
  }

  void calculateQuestionnaireUrgency(Map<int, bool> selectedOptions) {
    List<int> selectedOptionsID = selectedOptions.keys.toList();
    List<Questionnaire> currentQuestionnaireSections =
        questionnaireSections[_currentQuestionnairePageIndex].questionnaire!;

    for (var question in currentQuestionnaireSections) {
      for (var question in question.questions!) {
        if (selectedOptionsID.contains(question.code)) {
          _triageQuestionnaireUrgency =
              max(_triageQuestionnaireUrgency, question.weight!);
        }
      }
    }
    logger.d(
        "Questionnaire Urgency After ${_currentQuestionnairePageIndex + 1} Question: $_triageQuestionnaireUrgency");
  }

  int getTriageQuestionnaireUrgency() {
    return _triageQuestionnaireUrgency;
  }
}
