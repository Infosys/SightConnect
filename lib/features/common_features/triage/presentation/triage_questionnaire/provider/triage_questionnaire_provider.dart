import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/save_triage_questionnaire_locally_usecase.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageQuestionnaireProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TriageQuestionnaireProvider(
    ref.watch(saveTriageQuestionnaireLocallyUseCaseProvider),
  ),
);

class TriageQuestionnaireProvider extends ChangeNotifier {
  late List<QuestionnaireItemFHIRModel> _questionnaireSections;
  final SaveTriageQuestionnaireLocallyUseCase
      _saveTriageQuestionnaireLocallyUseCase;
  late String _questionnaireRemarks;
  late final Map<int, Map> _selectedOptions;
  late final List<Map<int, bool>> _questionnaireResponse;
  final List<PostTriageQuestionModel> _questionResponseList = [];
  TextEditingController textEditingController = TextEditingController();

  TriageQuestionnaireProvider(this._saveTriageQuestionnaireLocallyUseCase)
      : _questionnaireRemarks = '',
        _selectedOptions = {},
        _questionnaireSections = [],
        _questionnaireResponse = [];

  String get questionnaireRemarks => _questionnaireRemarks;
  Map<int, Map> get selectedOptions => _selectedOptions;
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

  void addQuestionnaireAnswer(
      int questionCode, String answer, int score, int answerCode) {
    _selectedOptions[questionCode] = {
      "answer": answer,
      "score": score,
      "answerCode": answerCode,
    };

    notifyListeners();
    logger.d({
      "Added Options: $_selectedOptions",
      "Answer: $answer",
      "Score: $score",
    });
  }

  void removeQuestionnaireAnswer(int questionCode) {
    _selectedOptions.remove(questionCode);
    notifyListeners();
    logger.d({
      "Removed Options: $_selectedOptions",
    });
  }

  void removeAllQuestionnaireAnswer() {
    _selectedOptions.clear();
    notifyListeners();
    logger.d({
      "Removed All Options: $_selectedOptions",
    });
  }

  void saveQuestionaireResponse() {
    try {
      _selectedOptions.forEach(
        (questionCode, result) {
          _questionResponseList.add(
            PostTriageQuestionModel(
              linkId: questionCode,
              score: result["score"]
                  .toDouble(), //For our use case answer can be yes or no so overall score will be same as answer score
              answers: [
                PostTriageAnswerModel(
                  value: result["answer"],
                  score: result["score"].toDouble(),
                  answerCode: result["answerCode"],
                )
              ],
            ),
          );
        },
      );
    } catch (e) {
      logger.e(e);
    }
  }

  // void saveQuestionaireResponse() {
  //   Map<int, bool> selectedOptionsList = {};
  //   _selectedOptions.forEach((key, value) {
  //     selectedOptionsList[key] = true;
  //   });
  //   _questionnaireResponse.add(selectedOptionsList);
  //   addtoFinalResponse(_selectedOptions);
  //   logger.d("Questionnaire Response: $_selectedOptions");
  //   _selectedOptions.clear();
  //   notifyListeners();
  // }

  // void addtoFinalResponse(selectedOptions) {
  //   selectedOptions.forEach(
  //     (key, score) {
  //       _questionResponseList.add(
  //         PostTriageQuestionModel(
  //           linkId: key,
  //           score: 1,
  //           answer: [
  //             PostAnswerModel(
  //               value: "Yes",
  //               score: double.parse(score.toString()),
  //             )
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  List<PostTriageQuestionModel> getQuestionaireResponse() {
    return _questionResponseList;
  }

  Future<void> saveQuestionaireResponseToDB() async {
    final response = getQuestionaireResponse();
    logger.f({"Questionnaire Response to local db": response});
    await _saveTriageQuestionnaireLocallyUseCase.call(
      SaveTriageQuestionnaireLocallyParam(
        triageQuestionnaireResponse: response,
      ),
    );
    notifyListeners();
  }
}
