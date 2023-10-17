import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_response.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_eye_scan/provider/patient_triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_questionnaire/provider/patient_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_visual_acuity_tumbling/providers/patient_visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

var patientTriageProvider = ChangeNotifierProvider(
  (ref) => PatientTriageProvider(ref),
);

class PatientTriageProvider extends ChangeNotifier {
  Ref ref;

  List<QuestionnaireSection> _questionnaireSections = [];

  List<QuestionnaireSection> get questionnaireSections =>
      _questionnaireSections;

  PatientTriageProvider(this.ref) {
    getTriage();
  }

  getTriage() async {
    var response = await ref.read(triageRepositoryProvider).getTriage();
    response.fold(
      (failure) => debugPrint("PatientTriageProvider:- $failure"),
      (triageAssessment) {
        _questionnaireSections = triageAssessment.questionnaireSections!;
        notifyListeners();
      },
    );
    notifyListeners();
  }

  //set triage response based on the TriageResponse model

  Future<void>saveTriage() async {
    var triageresponse = TriageResponse(
      patientId: 99000001,
      assessmentStartTime: DateTime.now(),
      assessmentEndTime: DateTime.now().add(const Duration(minutes: 5)),
      questionResponse: _getQuestionaireResponse(),
      mediaCapture: _getTriageEyeScanResponse(),
      observations: _getVisionAcuityTumblingResponse(),
    );
    var response = await ref.read(triageRepositoryProvider).saveTriage(
          triage: triageresponse,
        );
    response.fold(
      (failure) => throw failure,
      (triageResponse) => debugPrint(triageResponse.toString()),
    );
  }

  // set patient vision acuity tumbling based on the TriageAssessment model

  List<Observation> _getVisionAcuityTumblingResponse() {
    double leftEyeSight =
        ref.read(tumblingTestProvider).calculateLeftEyeSigth();
    double rightEyeSight =
        ref.read(tumblingTestProvider).calculateRightEyeSigth();

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

    logger.i(observationList);
    return observationList;
  }

  // set patient questionnaire based on the TriageAssessment model

  List<QuestionResponse> _getQuestionaireResponse() {
    List<bool> selectedOptions =
        ref.read(patientTriageQuestionnaireProvider).selectedOptions;
    List<QuestionResponse> questionResponseList = [];
    for (int i = 0; i < selectedOptions.length; i++) {
      questionResponseList.add(QuestionResponse(
          questionCode: int.parse('3000000${i + 1}'),
          response: selectedOptions[i]));
    }

    logger.d(questionResponseList);
    return questionResponseList;
  }

  // set triage eye scan response based on the TriageAssessment model

  List<MediaCapture> _getTriageEyeScanResponse() {
    XFile? leftEyeImage = ref.read(patientTriageEyeScanProvider).leftEyeImage;
    XFile? rightEyeImage = ref.read(patientTriageEyeScanProvider).rightEyeImage;

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

    logger.f(mediaCaptureList);
    return mediaCaptureList;
  }
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
