import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_response.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

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
    var triageresponse = TriageResponse(
      patientId: 99000001,
      assessmentStartTime: DateTime.now(),
      assessmentEndTime: DateTime.now().add(const Duration(minutes: 5)),
      questionResponse: _getQuestionaireResponse(),
      mediaCapture: _getTriageEyeScanResponse(),
      observations: _getVisionAcuityTumblingResponse(),
      questionnaireRemarks: _getQuestionaireRemarks(),
    );
    logger.d("Triage Response before api call:  $triageresponse");
    var response = await ref.read(triageRepositoryProvider).saveTriage(
          triage: triageresponse,
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
  List<Observation> _getVisionAcuityTumblingResponse() {
    double leftEyeSight = ref.read(tumblingTestProvider).leftEyeSight();
    double rightEyeSight = ref.read(tumblingTestProvider).rightEyeSight();

    List<Observation> observationList = [
      Observation(
        observationCode: 50000001,
        response: leftEyeSight,
      ),
      Observation(
        observationCode: 50000002,
        response: rightEyeSight,
      ),
    ];
    logger.d(observationList);
    return observationList;
  }

  /// set patient questionnaire based on the TriageAssessment model
  List<QuestionResponse> _getQuestionaireResponse() {
    var questionnairResponse =
        ref.read(triageQuestionnaireProvider).finalquestionnaireResponse;

    List<QuestionResponse> questionResponseList = [];
    for (Map<int, bool> page in questionnairResponse) {
      page.forEach((key, value) {
        questionResponseList.add(QuestionResponse(
          questionCode: key,
          response: value,
        ));
      });
    }

    logger.d(questionResponseList);
    return questionResponseList;
  }

  // set triage eye scan response based on the TriageAssessment model
  List<MediaCapture> _getTriageEyeScanResponse() {
    XFile? leftEyeImage = ref.read(triageEyeScanProvider).leftEyeImage;
    XFile? rightEyeImage = ref.read(triageEyeScanProvider).rightEyeImage;

    List<MediaCapture> mediaCaptureList = [];
    mediaCaptureList.add(MediaCapture(
      mediaCode: 70000001,
      fileName: getUniqueFileName(leftEyeImage!.name),
      fileType: leftEyeImage.mimeType,
      encodingType: 'base64',
    ));
    mediaCaptureList.add(MediaCapture(
      mediaCode: 70000002,
      fileName: getUniqueFileName(rightEyeImage!.name),
      fileType: rightEyeImage.mimeType,
      encodingType: 'base64',
    ));

    logger.d(mediaCaptureList);
    return mediaCaptureList;
  }

  resetTriage() {
    ref.invalidate(triageQuestionnaireProvider);
    ref.invalidate(triageEyeScanProvider);
    ref.invalidate(tumblingTestProvider);
    ref.invalidate(triageStepperProvider);
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
