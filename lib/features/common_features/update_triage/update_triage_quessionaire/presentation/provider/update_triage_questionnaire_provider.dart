import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart'
    as update_model;
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_urgency_repository.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/repository/triage_report_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/source.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/repository/triage_report_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart'
    as triage_detailed_model;
import 'package:hooks_riverpod/hooks_riverpod.dart';

var updateTriageQuestionnaireProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    return UpdateTriageQuestionnaireProvider(
      ref.watch(triageRepositoryProvider),
      ref.watch(triageReportRepositoryProvider),
      ref.watch(triageUrgencyRepositoryProvider),
    );
  },
);

class UpdateTriageQuestionnaireProvider extends ChangeNotifier {
  late List<QuestionnaireItemFHIRModel> _questionnaireSections;
  final TriageRepository _triageRepository;
  final TriageUrgencyRepository _triageUrgencyRepository;

  final TriageReportRepository _triageReportRepository;

  late String _questionnaireRemarks;
  late final Map<int, dynamic> _selectedOptions;
  late final List<Map<int, bool>> _questionnaireResponse;
  final List<PostQuestionResponseModel> _questionResponseList = [];
  TextEditingController textEditingController = TextEditingController();

  UpdateTriageQuestionnaireProvider(
    this._triageRepository,
    this._triageReportRepository,
    this._triageUrgencyRepository,
  )   : _questionnaireRemarks = '',
        _selectedOptions = {},
        _questionnaireSections = [],
        _questionnaireResponse = [];

  String get questionnaireRemarks => _questionnaireRemarks;
  Map<int, dynamic> get selectedOptions => _selectedOptions;
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

  void addQuestionnaireAnswer(int questionCode, String answer, int score,int answerCode) {
    _selectedOptions[questionCode] = {
      "answer":answer,
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

  // void removeQuestionnaireAnswer(int questionCode) {
  //   _selectedOptions.remove(questionCode);
  //   notifyListeners();
  //   logger.d({
  //     "Removed Options: $_selectedOptions",
  //   });
  // }

  // void removeAllQuestionnaireAnswer() {
  //   _selectedOptions.clear();
  //   notifyListeners();
  //   logger.d({
  //     "Removed All Options: $_selectedOptions",
  //   });
  // }

  // void saveQuestionaireResponse() {
 
  //   // Map<int, bool> selectedOptionsList = {};
  //   // _selectedOptions.forEach((key, value) {
  //   //   selectedOptionsList[key] = true;
  //   // });
  //   // _questionnaireResponse.add(selectedOptionsList);
  //   // addtoFinalResponse(_selectedOptions);
  //   // logger.d("Questionnaire Response: $_selectedOptions");
  //   // _selectedOptions.clear();
   
  // }

  void saveQuestionaireResponse() {
    _selectedOptions.forEach(
      (questionCode, result) {
        _questionResponseList.add(
          PostQuestionResponseModel(
            linkId: questionCode,
            score:  double.parse(result["score"]),  //For your usecase our answer is yes not type so this score is same as answer score 
            answer: [ //TODO: add answercode here 
              PostAnswerModel(
                value: result["answer"],
                score: double.parse(result["score"]),
                answerCode: result["answerCode"]
                 
                
              )
            ],
          ),
        );
      },
    );
  }

  List<PostQuestionResponseModel> getQuestionaireResponse() {
    return _questionResponseList;
  }

  Future<Either<Failure, TriageResponseModel>> updateTriage(
      int reportId) async {
    final reportModel = await getTriageReportByReportId(reportId);
    if (reportModel == null) {
      throw ServerException();
    }

    update_model.TriageUpdateModel triage = update_model.TriageUpdateModel(
      patientId: reportModel.subject,
      diagnosticReportId: reportModel.diagnosticReportId,
      organizationCode: reportModel.organizationCode,
      performer: [
        update_model.Performer(
          role: PerformerRole.PATIENT,
          identifier: reportModel.subject,
        ),
      ],
      assessmentCode: reportModel.assessmentCode,
      assessmentVersion: reportModel.assessmentVersion,
      issued: reportModel.issued,
      source: Source.PATIENT_APP,
      sourceVersion: AppText.appVersion,
      incompleteSection: getIncompleteTestList(reportModel.incompleteTests),
      score: getScore(),
      cummulativeScore: getCummulativeScore(),
      questionResponse: getQuestionaireResponseList(
        reportModel.responses,
        getQuestionaireResponse(),
      ),
    );
    try {
      return await _triageRepository.updateTriage(triage: triage);
    } catch (e) {
      rethrow;
    }
  }

  Future<TriageDetailedReportModel?> getTriageReportByReportId(
      int reportId) async {
    final response =
        await _triageReportRepository.getTriageReportByReportId(reportId);
    return response.fold(
      (failure) => null,
      (result) => result,
    );
  }

  List<update_model.IncompleteTestModel> getIncompleteTestList(
      List<triage_detailed_model.IncompleteTestModel>? incompleteTestList) {
    List<update_model.IncompleteTestModel> incompleteTestModelList = [];

    incompleteTestList?.forEach((element) {
      if (element.testName != TestType.QUESTIONNAIRE) {
        incompleteTestModelList.add(
          update_model.IncompleteTestModel(
            testName: element.testName,
          ),
        );
      }
    });

    return incompleteTestModelList;
  }

  List<update_model.PatchQuestionResponseModel> getQuestionaireResponseList(
    List<triage_detailed_model.Response>? response,
    List<PostQuestionResponseModel> questionResponseListFromUI,
  ) {
    List<update_model.PatchQuestionResponseModel> questionResponseList = [];
    response?.forEach((element) {
      questionResponseList.add(
        update_model.PatchQuestionResponseModel(
          id: element.id,
          action: Action.REMOVE,
        ),
      );
    });

    for (PostQuestionResponseModel element in questionResponseListFromUI) {
      questionResponseList.add(
        update_model.PatchQuestionResponseModel(
          action: Action.ADD,
          linkId: element.linkId,
          score: element.score,
          answers: [
            update_model.PatchAnswerModel(
              value: element.answer!.first.value,
              score: element.answer!.first.score,
              action: Action.ADD,
              answerCode: element.answer!.first.answerCode,
            )
          ],
        ),
      );
    }

    return questionResponseList;
  }

  List<Map<String, int>> getScore() {
    final qscore = _triageUrgencyRepository
        .questionnaireUrgency(getQuestionaireResponse());

    return [
      {"QUESTIONNAIRE": qscore.toInt()},
      {
        "OBSERVATION": 0,
      },
      {"IMAGE": 0}
    ];
  }

  int getCummulativeScore() {
    final qscore = _triageUrgencyRepository
        .questionnaireUrgency(getQuestionaireResponse());
    return qscore.toInt();
  }
}
