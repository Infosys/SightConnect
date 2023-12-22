import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/test_name.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_step.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_questionnaire_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_triage_eye_scan_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_triage_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_vision_acuity_tumbling_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/save_triage_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import '../../domain/repositories/triage_urgency_repository.dart';

var getTriageProvider = FutureProvider<DiagnosticReportTemplateFHIRModel>(
  (ref) async {
    var response = await ref.read(getTriageUseCase).call(GetTriageParam());
    return response.fold((failure) {
      throw failure;
    }, (triageAssessment) {
      return triageAssessment;
    });
  },
);

var triageProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    return TriageProvider(
      ref.watch(saveTriageUseCase),
      ref.watch(getTriageEyeScanResponseLocallyUseCase),
      ref.watch(getQuestionnaireResponseLocallyUseCase),
      ref.watch(getVisionAcuityTumblingResponseLocallyUseCase),
      9627849180,
      ref.watch(triageUrgencyRepositoryProvider),
      ref.watch(triageLocalSourceProvider),
      
    );
  },
);

class TriageProvider extends ChangeNotifier {
  final SaveTriageUseCase _saveTriageUseCase;

  final GetTriageEyeScanResponseLocallyUseCase
      _getTriageEyeScanResponseLocallyUseCase;
  final GetQuestionnaireResponseLocallyUseCase
      _getQuestionnaireResponseLocallyUseCase;
  final GetVisionAcuityTumblingResponseLocallyUseCase
      _getVisionAcuityTumblingResponseLocallyUseCase;
  final TriageUrgencyRepository _triageUrgencyRepository;
  final int _patientId;
  final TriageLocalSource _triageLocalSource;

  TriageProvider(
    this._saveTriageUseCase,
    this._getTriageEyeScanResponseLocallyUseCase,
    this._getQuestionnaireResponseLocallyUseCase,
    this._getVisionAcuityTumblingResponseLocallyUseCase,
    this._patientId,
    this._triageUrgencyRepository,
    this._triageLocalSource
  );

  Future<Either<Failure, TriageResponseModel>> saveTriage(int currentStep) async {
    List<PostImagingSelectionModel> imageSelection =
        await _getTriageEyeScanResponseLocallyUseCase
            .call(GetTriageEyeScanResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

    List<PostObservationsModel> observations =
        await _getVisionAcuityTumblingResponseLocallyUseCase
            .call(GetVisionAcuityTumblingResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

    List<PostQuestionResponseModel> questionResponse =
        await _getQuestionnaireResponseLocallyUseCase
            .call(GetQuestionnaireResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));
      

    final quessionnaireUrgency =
        _triageUrgencyRepository.questionnaireUrgency(questionResponse);
    final visualAcuityUrgency =
        _triageUrgencyRepository.visualAcuityUrgency(observations);
    final eyeScanUrgency =
        _triageUrgencyRepository.eyeScanUrgency(imageSelection);
    final triageUrgency = _triageUrgencyRepository.totalTriageUrgency(
      quessionnaireUrgency,
      visualAcuityUrgency,
      eyeScanUrgency,
    );
      //inject assesment 
    DiagnosticReportTemplateFHIRModel assessment= await _triageLocalSource.getTriage();
    TriagePostModel triagePostModel = TriagePostModel(
      patientId: _patientId,
      serviceType: ServiceType.OPTOMETRY,
      organizationCode: assessment.organizationCode,
      performer: [
        Performer(
          role: PerformerRole.PATIENT,
          identifier: _patientId,
        )
      ],
      assessmentCode: 1334, //from questionnaire MS   //TODO: change to assessment.code
      assessmentVersion:"1.0", //questionnaire MS//TODO:change asse version
      cummulativeScore: triageUrgency.toInt(),
      score: [
        {"QUESTIONNAIRE": 0},
        {"OBSERVATION": 0},
        {"IMAGE": 0}
      ],
      userStartDate: DateTime.now(),
      issued: DateTime.now(),
      
      source: Source.PATIENT_APP,
      sourceVersion: AppText.appVersion,
      incompleteSection:_getInclompleteSection(currentStep),
      imagingSelection: _getImageSelection(imageSelection),
      observations: _getPostTriageObservationModel(observations),
      questionResponse: _getPostTriageQuestionModel(questionResponse),
    );
   
    logger.f({"triage model to be saved":triagePostModel});

    Either<Failure, TriageResponseModel> response =
        await _saveTriageUseCase.call(
      SaveTriageParam(triagePostModel: triagePostModel ),
    );
    logger.f({"triage model saved":response});
    return response;
  }
List<PostTriageQuestionModel> _getPostTriageQuestionModel(List<PostQuestionResponseModel> questionResponse){
  List<PostTriageQuestionModel> postQuestionResponse = [];
  for (var item in questionResponse) {
    postQuestionResponse.add(PostTriageQuestionModel(
      linkId: item.linkId,
      score: item.score,
      answers: getPostAnswerModel(item.answer),
    ));
  }
  return postQuestionResponse;
}
String dartDateTimeToJavaZonedDateTime(DateTime dateTime) {
  final formatter = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
  final formattedDateTime = formatter.format(dateTime);

  return formattedDateTime;
}
List<PostTriageAnswerModel> getPostAnswerModel(List<PostAnswerModel>? answers){
  List<PostTriageAnswerModel> postAnswerModel = [];
  if(answers==null){
    return postAnswerModel;
  }

  for (var item in answers) {
    postAnswerModel.add(PostTriageAnswerModel(
      value: item.value,
      answerCode: item.answerCode,
      score: item.score,
      
    ));
  }
  return postAnswerModel;
}
List<PostTriageObservationsModel> _getPostTriageObservationModel(List<PostObservationsModel> observations){
  List<PostTriageObservationsModel> postObservations = [];
  for (var item in observations) {
    postObservations.add(PostTriageObservationsModel(
      identifier: item.identifier,
      score: item.score,
      value:item.value,
      
    ));
  }
  return postObservations;
}

  List<PostTriageImagingSelectionModel> _getImageSelection(List<PostImagingSelectionModel> imageSelection) {
    List<PostTriageImagingSelectionModel> imageSelectionPost = [];
   for (var item in imageSelection) {
     imageSelectionPost.add(PostTriageImagingSelectionModel(
      identifier: item.identifier,
      baseUrl: item.baseUrl,
      endpoint: item.endpoint,
      fileId: item.fileId,
      score: item.score
     ));
   }
   return imageSelectionPost;
  }

  List<PostIncompleteTestModel> _getInclompleteSection(int currentStep){
    List<PostIncompleteTestModel> incompleteSection = [];

    if(currentStep==0){
      incompleteSection.add(const PostIncompleteTestModel(
          testName: TestType.QUESTIONNAIRE,
        ));
        incompleteSection.add(const PostIncompleteTestModel(
          testName: TestType.OBSERVATION,
        ));
        incompleteSection.add(const PostIncompleteTestModel(
          testName: TestType.IMAGE,
        ));
    }
    if(currentStep==1){
      incompleteSection.add(const PostIncompleteTestModel(
          testName: TestType.OBSERVATION,
        ));
         incompleteSection.add(const PostIncompleteTestModel(
          testName: TestType.IMAGE,
        ));
    
    } if(currentStep==2){
      incompleteSection.add(const PostIncompleteTestModel(
          testName: TestType.IMAGE,
        ));
    }
    
    return incompleteSection;

  }

}

var resetProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TriageReset(ref),
);

class TriageReset extends ChangeNotifier {
  final Ref ref;
  TriageReset(this.ref);

  void reset() {
    ref.invalidate(triageQuestionnaireProvider);
    ref.invalidate(triageEyeScanProvider);
    ref.read(tumblingTestProvider).reset();
    ref.read(triageStepperProvider).reset();
    notifyListeners();
  }
}
