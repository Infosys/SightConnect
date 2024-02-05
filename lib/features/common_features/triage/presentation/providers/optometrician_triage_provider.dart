import 'package:eye_care_for_all/features/common_features/triage/data/mapper/optometrist_triage_mapper.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_assessment_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_questionnaire_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_triage_eye_scan_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_vision_acuity_tumbling_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/provider/optometritian_add_patient_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../data/models/optometrician_triage_response.dart';
import '../../data/source/remote/optometrician_triage_remote_source.dart';

var optometricianTriageProvider = ChangeNotifierProvider(
  (ref) => OptometristTriageProvider(
    ref,
  ),
);
var optometristQuestionnaireProvider = ChangeNotifierProvider.family<
    OptometristQuestionnaireProvider, List<QuestionResponse>>(
  (ref, questionnaire) {
    return OptometristQuestionnaireProvider(
      questionnaire,
      ref.watch(getAssessmentUseCase),
    );
  },
);

class OptometristTriageProvider extends ChangeNotifier {
  Ref ref;
  OptometristTriageProvider(this.ref);

  Future<OptometristTriageResponse> saveTriage() async {
    logger.d("Optometrist saveTriage called");
    List<PostTriageImagingSelectionModel> imageSelection = await ref
        .read(getTriageEyeScanResponseLocallyUseCase)
        .call(GetTriageEyeScanResponseLocallyParam())
        .then((value) => value.fold((l) => [], (r) => r));

    List<PostTriageObservationsModel> observations = await ref
        .read(getVisionAcuityTumblingResponseLocallyUseCase)
        .call(GetVisionAcuityTumblingResponseLocallyParam())
        .then((value) => value.fold((l) => [], (r) => r));

    List<PostTriageQuestionModel> questionResponse = await ref
        .read(getQuestionnaireResponseLocallyUseCase)
        .call(GetQuestionnaireResponseLocallyParam())
        .then((value) => value.fold((l) => [], (r) => r));
    final quessionnaireUrgency = ref
        .read(triageUrgencyRepositoryProvider)
        .questionnaireUrgency(questionResponse);
    final visualAcuityUrgency = ref
        .read(triageUrgencyRepositoryProvider)
        .visualAcuityUrgency(observations);
    final eyeScanUrgency = ref
        .read(triageUrgencyRepositoryProvider)
        .eyeScanUrgency(imageSelection);
    final totalUrgency = ref
        .read(triageUrgencyRepositoryProvider)
        .maxTotalUrgency(
            eyeScanUrgency, quessionnaireUrgency, visualAcuityUrgency);

    final triage = OptometristTriageMapper.convertToTriage(
      ref: ref,
      imagingSelection: imageSelection,
      observations: observations,
      questionResponse: questionResponse,
      patientId:
          ref.read(optometritianAddPatientProvider).patientIdController.text,
      educationalQualification: ref
          .read(optometritianAddPatientProvider)
          .educationalQualificationController
          .text,
      profession:
          ref.read(optometritianAddPatientProvider).professionController.text,
      questionnaireUrgency: quessionnaireUrgency,
      observationUrgency: visualAcuityUrgency,
      totalUrgency: totalUrgency,
      assessmentStartTime:
          ref.read(optometritianAddPatientProvider).assessmentStartTime,
      questionnaireRemark: ref.read(triageQuestionnaireProvider).questionnaireRemarks,
    );

    var response =
        await ref.read(optometristRemoteSource).saveTriage(triage: triage);

    return response.fold(
      (failure) {
        logger.d(" Optometrist saveTriage $failure");
        Fluttertoast.showToast(
          msg: "Unable to save the Triage! Please try again.",
          toastLength: Toast.LENGTH_LONG,
        );
        throw failure;
      },
      (triageResponse) {
        logger.d("Optometrist Final Triage Response:  $triageResponse");
        return triageResponse;
      },
    );
  }
}

class OptometristQuestionnaireProvider extends ChangeNotifier {
  List<QuestionResponse> questionnaire;
  List<Map<String, dynamic>> output = [];
  bool isLoading = false;
  GetTriageUseCase getAssessmentUseCase;

  OptometristQuestionnaireProvider(
    this.questionnaire,
    this.getAssessmentUseCase,
  ) {
    getQuestionnaire();
  }

  Future<void> getQuestionnaire() async {
    try {
      isLoading = true;
      notifyListeners();
      final response = await getAssessmentUseCase.call(GetTriageParam());
      response.fold(
        (failure) {
          logger.d("getQuestionnaire $failure");
          output = [];
          isLoading = false;
          notifyListeners();
        },
        (triageResponse) {
          logger.d("getQuestionnaire $triageResponse");
          output = OptometristTriageMapper.convertTriageQuestionnaire(
            triageResponse,
            questionnaire,
          );
          isLoading = false;
          notifyListeners();
        },
      );
    } catch (e) {
      logger.e("OptometristQuestionnaireProvider: $e");
      output = [];
      isLoading = false;
      notifyListeners();
    }
  }
}
