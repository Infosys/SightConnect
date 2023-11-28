import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/srouce.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/performer_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/post_answer_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/post_imaging_selection_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/post_observations_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/post_question_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../visual_acuity_tumbling/data/models/tumbling_models.dart';

var triageProvider = ChangeNotifierProvider(
  (ref) => TriageProvider(ref),
);

class TriageProvider extends ChangeNotifier {
  Ref ref;
  List<QuestionnaireSection> _questionnaireSections = [];
  List<QuestionnaireSection> get questionnaireSections =>
      _questionnaireSections;
  TriageProvider(this.ref) {
    getTriage();
  }

  Future<void> getTriage() async {
    var response = await ref.read(triageRepositoryProvider).getTriage();
    response.fold(
      (failure) {
        logger.d("getTriage $failure");
        logger.d("TriageProvider:- $failure");
      },
      (triageAssessment) {
        _questionnaireSections = triageAssessment.questionnaireSections!;
      },
    );
    notifyListeners();
  }

  //set triage response based on the TriageResponse model
  Future<void> saveTriage() async {
    var triage =  TriageModel(
      patientId: 99000001,
      encounterId: 100001,
      serviceType: 'OPTOMETRY',
      organizationCode: 231000,
      performer: [
        const PerformerModel(
          role: PerformerRole.MEDICAL_DOCTOR,
          identifier: 200102
        )
      ],
      assessmentCode: 30001,
      assessmentVersion: "v1",
      issued: DateTime.now(),
      userStartDate: DateTime.now(),
      source: Source.PATIENT_APP,
      sourceVersion: "v1",
      incompleteSection: [],
      imagingSelection: _getTriageImaes(),
      observations: _getVisionAcuityTumblingResponse(),
      questionResponse: _getQuestionaireResponse(),
    
    );
    // var triageresponse = TriageResponse(
    //   patientId: 99000001,
    //   assessmentStartTime: DateTime.now(),
    //   assessmentEndTime: DateTime.now().add(const Duration(minutes: 5)),
    //   questionResponse: _getQuestionaireResponse(),
    //   // mediaCapture: _getTriageImaes(),
    //   observations: _getVisionAcuityTumblingResponse(),
    //   questionnaireRemarks: _getQuestionaireRemarks(),
    // );
    logger.d("Triage Response before api call:  $triage");
    var response = await ref.read(triageRepositoryProvider).saveTriage(
          triage: triage,
        );
    response.fold(
      (failure) {
        logger.d("saveTriage $failure");
        throw failure;
      },
      (triageResponse) => logger.d("Final Triage Response:  $triageResponse"),
    );
  }

  String _getQuestionaireRemarks() {
    String remarks = ref.read(triageQuestionnaireProvider).questionnaireRemarks;
    logger.d(remarks);
    return remarks;
  }

  /// set patient vision acuity tumbling based on the TriageAssessment model
  List<PostObservationsModel> _getVisionAcuityTumblingResponse() {
    double leftEyeSight =
        ref.read(tumblingTestProvider).calculateEyeSight(Eye.left);
    double rightEyeSight =
        ref.read(tumblingTestProvider).calculateEyeSight(Eye.right);

    List<PostObservationsModel> observationList = [
      PostObservationsModel(
        identifier: 50000001,
        value: "leftEyeSight",
        score: leftEyeSight,
      ),
      PostObservationsModel(
        identifier: 50000002,
        value: "rightEyeSight",
        score: rightEyeSight,
      ),
    ];
    logger.d(observationList);
    return observationList;
  }

  /// set patient questionnaire based on the TriageAssessment model
  List<PostQuestionResponseModel> _getQuestionaireResponse() {
    var questionnairResponse =
        ref.read(triageQuestionnaireProvider).finalquestionnaireResponse;

    List<PostQuestionResponseModel> questionResponseList = [];
    for (Map<int, bool> page in questionnairResponse) {
      page.forEach((key, value) {
        questionResponseList.add(PostQuestionResponseModel(
          linkId: key,
          answer: [
            PostAnswerModel(
              value: "Answer",
              score: value? 1 : 0,
            )
          
          ],
        ));
      });
    }

    logger.d(questionResponseList);
    return questionResponseList;
  }

  // set triage eye scan response based on the TriageAssessment model
  List<PostImagingSelectionModel> _getTriageImaes() {
    XFile? leftEyeImage = ref.read(triageEyeScanProvider).leftEyeImage;
    XFile? rightEyeImage = ref.read(triageEyeScanProvider).rightEyeImage;

    List<PostImagingSelectionModel> mediaCaptureList = [];
    mediaCaptureList.add(PostImagingSelectionModel(
      identifier: 70000001,
      endpoint: getUniqueFileName(leftEyeImage!.name),
      baseUrl: leftEyeImage.mimeType,
      score: 14,
    ));
    mediaCaptureList.add(PostImagingSelectionModel(
      identifier: 70000002,
      endpoint: getUniqueFileName(rightEyeImage!.name),
      baseUrl: rightEyeImage.mimeType,
      score: 20,
    ));

    logger.d(mediaCaptureList);
    return mediaCaptureList;
  }

  resetTriage() {
    ref.invalidate(triageQuestionnaireProvider);
    ref.invalidate(triageEyeScanProvider);

    ref.read(tumblingTestProvider).reset();
    ref.read(triageStepperProvider).reset();
  }

  String generateUniqueKey() {
    String uuid = const Uuid().v4();
    String key = "WA${uuid.substring(0, 6)}";
    return key;
  }

  getUniqueFileName(String fileName) {
    String patientID = "99000001";
    String uniqueKey = generateUniqueKey();
    return "${patientID}_$fileName-$uniqueKey";
  }
}
