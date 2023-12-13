import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_assessment_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/models/triage_response_model.dart';

var triageQuestionnaireProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TriageQuestionnaireProvider(
    ref.watch(triageLocalSourceProvider),
  ),
);

class TriageQuestionnaireProvider extends ChangeNotifier {
  late List<QuestionnaireItemFHIRModel> _questionnaireSections;
  late String _questionnaireRemarks;
  late final Map<int, int> _selectedOptions;
  late final List<Map<int, bool>> _questionnaireResponse;

  List<String> allRemarks = ['', '', ''];
  TriageLocalSource triageLocalSource;
  TextEditingController textEditingController = TextEditingController();

  TriageQuestionnaireProvider(this.triageLocalSource)
      : _questionnaireRemarks = '',
        _selectedOptions = {},
        _questionnaireSections = [],
        _questionnaireResponse = [];

  List<String> get allRemarksList => allRemarks;
  String get questionnaireRemarks => _questionnaireRemarks;
  Map<int, int> get selectedOptions => _selectedOptions;
  List<QuestionnaireItemFHIRModel> get questionnaireSections =>
      _questionnaireSections;
  List<Map<int, bool>> get finalquestionnaireResponse => _questionnaireResponse;

  set questionnaireRemarks(String value) {
    _questionnaireRemarks = value;
    notifyListeners();
  }

  void getQuestionnaire(List<QuestionnaireItemFHIRModel> data) async {
    _questionnaireSections = data;
  }

  void addQuestionnaireAnswer(int questionCode, bool answer, int score) {
    _selectedOptions[questionCode] = score;
    notifyListeners();
    logger.f({
      "Added Options: $_selectedOptions",
      "Answer: $answer",
      "Score: $score",
    });

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
    Map<int, bool> selectedOptionsList = {};
    _selectedOptions.forEach((key, value) {
      selectedOptionsList[key] = true;
    });
    _questionnaireResponse.add(selectedOptionsList);
    addtoFinalResponse(_selectedOptions);
    logger.d("Questionnaire Response: $_selectedOptions");
    _selectedOptions.clear();
    notifyListeners();
  }

  List<Map<String, dynamic>> questionnaireForReportPage = [];

  final List<PostQuestionResponseModel> _questionResponseList = [];

  void addtoFinalResponse(selectedOptions) {
    selectedOptions.forEach((key, score) {
      _questionResponseList.add(PostQuestionResponseModel(
        linkId: key,
        score: 1,
        answer: [
          PostAnswerModel(
            value: "YES",
            score: double.parse(score.toString()),
          )
        ],
      ));
    });
  }

  getQuestionaireResponse() {
    return _questionResponseList;
  }

  Future<void> saveQuestionaireResponseToDB() async {
    logger.f("Saving Questionnaire Response to DB");
    await triageLocalSource.saveTriageQuestionnaireLocally(
      triageQuestionnaireResponse: getQuestionaireResponse(),
    );
    notifyListeners();
  }
}
