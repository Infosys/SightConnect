import 'dart:math';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/provider/optometritian_add_patient_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../../../core/providers/global_optometrician_provider.dart';
import '../../../../common_features/triage/data/models/optometrician_triage_response.dart';
import '../../../../common_features/triage/data/source/remote/optometrician_triage_remote_source.dart';
import '../../../../common_features/triage/domain/models/triage_assessment_model.dart';
import 'optometritian_feedback_provider.dart';

var optometristProvider = ChangeNotifierProvider(
  (ref) => OptometristProvider(ref),
);

class OptometristProvider extends ChangeNotifier {
  Ref ref;
  List<QuestionnaireSection> _questionnaireSections = [];
  TriageAssessment? _triageAssessment;
  TriageAssessment get triageAssessment => _triageAssessment!;
  List<QuestionnaireSection> get questionnaireSections =>
      _questionnaireSections;
  OptometristProvider(this.ref) {
    getTriage();
  }

  Future<void> getTriage() async {
    var response = await ref.read(optometristRemoteSource).getTriage();
    _triageAssessment = response;
    _questionnaireSections = response.questionnaireSections!;
    notifyListeners();
  }

  //set triage response based on the TriageResponse model
  Future<OptometristTriageResponse> saveTriage() async {
    var optometristResponse = OptometristTriageResponse(
      id: null,
      uuid: _generateUniqueKey(),
      patientId: _getPatientId(),
      patientAge: null,
      patientGender: null,
      patientEducation: _getEducationalQualification(),
      patientProfession: _getProfession(),
      source: ref.read(globalOptometricianProvider).appName,
      reportId: null,
      enounterId: null,
      organizationCode: 7,
      assessmentCode: _generateUniqueNumber(),
      assessmentStartTime: null,
      assessmentEndTime: DateTime.now(),
      physicalAssessmentStartTime: DateTime.now(),
      physicalAssessmentEndTime: DateTime.now(),
      capturedBy: ref.read(globalOptometricianProvider).preferredUsername,
      overallUrgency: null,
      questionnaireRemarks: _getQuestionaireRemarks(),
      questionResponse: _getQuestionaireResponse(),
      questionnaireUrgency: null,
      questionnaireReview: _review("questionnaire"),
      observations: null,
      observationsRemarks: null,
      observationsUrgency: null,
      observationReview: _review("observation"),
      mediaCapture: await _getTriageEyeScanResponse(),
      eyeScanReview: _review("eyeScan"),
      assessmentCompleted: true,
      acuityTestcompleted: true,
      eyeScanCompleted: true,
      mobileAssessmentCompleted: true,
      physicalAssessmentCompleted: true,
      overallReview: _review("overall"),
      questionnaireScore: null,
      observationScore: null,
      eyeScanScore: "1",
      assessmentAssistance: ref.read(feedBackProvider).assessmentAssistance,
      visualAcuityAssistance: ref.read(feedBackProvider).visualAcuityAssistance,
      visualAcuityAided: ref.read(feedBackProvider).visualAcuityAided,
      eyeScanAssistance: ref.read(feedBackProvider).eyeScanAssistance,

      // patientId: 99000001,
      // assessmentStartTime: DateTime.now(),
      // assessmentEndTime: DateTime.now().add(const Duration(minutes: 5)),
      // questionResponse: _getQuestionaireResponse(),
      // mediaCapture: _getTriageEyeScanResponse(),
      // observations: _getVisionAcuityTumblingResponse(),
      // questionnaireRemarks: _getQuestionaireRemarks(),
    );

////////////////////////////////////////////////////////////////////////////////////////
    logger.d("Triage Response before api call:  $optometristResponse");
    var response = await ref.read(optometristRemoteSource).saveTriage(
          triage: optometristResponse,
        );

    //return response on response.fold

    return response.fold(
      (failure) {
        logger.d("saveTriage $failure");
        Fluttertoast.showToast(
          msg: "Unable to save the Triage! Please try again.",
          toastLength: Toast.LENGTH_LONG,
        );
        throw failure;
      },
      (triageResponse) {
        logger.d("Final Triage Response:  $triageResponse");
        return triageResponse;
      },
    );
  }

  ///////////////////////////////////////////////////////////////////////////////////////////

  int _generateUniqueNumber() {
    Random random = Random();
    int timestamp = DateTime.now().millisecondsSinceEpoch;
    int randomNumber =
        random.nextInt(999999); // Adjust the range as per your requirement

    int uniqueNumber = int.parse('$timestamp$randomNumber');
    return uniqueNumber;
  }

  String _review(String type) {
    var data = ref.read(feedBackProvider);
    if (type == "questionnaire") {
      return data.questionarie ?? "";
    } else if (type == "observation") {
      return data.observation ?? "";
    } else if (type == "eyeScan") {
      return data.eyeScan ?? "";
    } else if (type == "overall") {
      return data.overallReview ?? "";
    } else {
      return "";
    }
  }

  String _getPatientId() {
    String patientId =
        ref.read(optometritianAddPatientProvider).patientIdController.text;
    logger.d(patientId);
    return patientId;
  }

  String _getEducationalQualification() {
    String educationalQualification = ref
        .read(optometritianAddPatientProvider)
        .educationalQualificationController
        .text;
    logger.d(educationalQualification);
    return educationalQualification;
  }

  String _getProfession() {
    String profession =
        ref.read(optometritianAddPatientProvider).professionController.text;
    logger.d(profession);
    return profession;
  }

  String _getQuestionaireRemarks() {
    String remarks = ref.read(triageQuestionnaireProvider).questionnaireRemarks;
    logger.d(remarks);
    return remarks;
  }

  // List<Observation> _getVisionAcuityTumblingResponse() {
  //   double leftEyeSight =
  //       ref.read(tumblingTestProvider).calculateEyeSight(Eye.left);
  //   double rightEyeSight =
  //       ref.read(tumblingTestProvider).calculateEyeSight(Eye.right);
  //   double bothEyeSight =
  //       ref.read(tumblingTestProvider).calculateEyeSight(Eye.both);

  //   List<Observation> observationList = [
  //     Observation(
  //       observationCode: 50000001,
  //       response: leftEyeSight,
  //     ),
  //     Observation(
  //       observationCode: 50000002,
  //       response: rightEyeSight,
  //     ),
  //     Observation(
  //       observationCode: 50000003,
  //       response: bothEyeSight,
  //     ),
  //   ];
  //   logger.d("observationList frpm triageProvider : $observationList");
  //   return observationList;
  // }

  /// set patient questionnaire based on the TriageAssessment model
  List<QuestionResponse> _getQuestionaireResponse() {
    var questionnairResponse =
        ref.read(triageQuestionnaireProvider).finalquestionnaireResponse;

    logger.f("Questionnaire ResponseData: $questionnairResponse");

    List<QuestionResponse> questionResponseList = [];
    for (Map<int, bool> page in questionnairResponse) {
      page.forEach((key, value) {
        questionResponseList.add(QuestionResponse(
          questionCode: key,
          response: value,
        ));
      });
    }
    logger.d("questionResponseListData: $questionResponseList");
    return questionResponseList;
  }

  // set triage eye scan response based on the TriageAssessment model
  Future<List<MediaCapture>> _getTriageEyeScanResponse() async {
    String? leftEyeImage = ref.read(triageEyeScanProvider).leftImageUrl;
    String? rightEyeImage = ref.read(triageEyeScanProvider).rightImageUrl;

    List<MediaCapture> mediaCaptureList = [];
    mediaCaptureList.add(MediaCapture(
      mediaCode: 70000002,
      fileName: rightEyeImage,
      fileType: "JPG",
      encodingType: 'base64-RIGHT',
    ));

    mediaCaptureList.add(MediaCapture(
      mediaCode: 70000001,
      fileName: leftEyeImage,
      fileType: "JPG",
      encodingType: 'base64-LEFT',
    ));

    logger.d(mediaCaptureList);
    return mediaCaptureList;
  }

  resetTriage() {
    ref.invalidate(triageQuestionnaireProvider);
    ref.invalidate(triageEyeScanProvider);
    // ref.invalidate(optometritianAddPatientProvider);

    ref.read(tumblingTestProvider).reset();
    ref.read(triageStepperProvider).reset();
  }

  String _generateUniqueKey() {
    String uuid = const Uuid().v4();
    String key = "WA${uuid.substring(0, 6)}";
    return key;
  }

  getUniqueFileName(String fileName) {
    String patientID = "99000001";
    String uniqueKey = _generateUniqueKey();
    return "${patientID}_$fileName-$uniqueKey";
  }

  getUniqueId(int id) {
    String uniqueKey = _generateUniqueKey();
    return "${id}_-$uniqueKey";
  }
}
