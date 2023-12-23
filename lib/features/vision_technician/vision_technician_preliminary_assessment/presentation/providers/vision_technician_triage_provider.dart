import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../../../main.dart';
import '../../../../common_features/triage/domain/models/triage_post_model.dart';

var visionTechnicianTriageProvider =
    ChangeNotifierProvider((ref) => VisionTechnicianTriageProvider());

class VisionTechnicianTriageProvider extends ChangeNotifier {
  VisionTechnicianTriageProvider() {
    _selectedOptions = {};
  }
  //patient id is static data right now
  String _patientID = "100101";
  late final Map<int, int> _selectedOptions;
  Map<int, int> get selectedOptions => _selectedOptions;
  final List<PostTriageQuestionModel> _questionResponseList = [];
  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  double? _leftEyeSight;
  double? _rightEyeSight;
  double? _bothEyeSight;

  void setPatientID(String patientID) {
    _patientID = patientID;
    logger.d("Patient ID: $_patientID");
    notifyListeners();
  }

  void setLeftEyeSight(double leftEye) {
    _leftEyeSight = leftEye;
    logger.d("Left Eye Sight: $_leftEyeSight");
    notifyListeners();
  }

  void setRightEyeSight(double rightEye) {
    _rightEyeSight = rightEye;
    logger.d("Right Eye Sight: $_rightEyeSight");
    notifyListeners();
  }

  void setBothEyeSight(double bothEye) {
    _bothEyeSight = bothEye;
    logger.d("Both Eye Sight: $_bothEyeSight");
    notifyListeners();
  }

  void setEyeImage(XFile left, XFile right) {
    _leftEyeImage = left;
    _rightEyeImage = right;
    notifyListeners();
  }

  void addQuestionnaireAnswer(int questionCode, bool answer, int score) {
    _selectedOptions[questionCode] = score;
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

  List<PostTriageQuestionModel> getQuestionaireResponse() {
    return _questionResponseList;
  }

  void saveQuestionaireResponse() {
    Map<int, bool> selectedOptionsList = {};
    _selectedOptions.forEach((key, value) {
      selectedOptionsList[key] = true;
    });
    // _questionnaireResponse.add(selectedOptionsList);
    addtoFinalResponse(_selectedOptions);
    logger.d("Questionnaire Response: $_selectedOptions");
    _selectedOptions.clear();
    notifyListeners();
  }

  void addtoFinalResponse(selectedOptions) {
    selectedOptions.forEach(
      (key, score) {
        _questionResponseList.add(
          PostTriageQuestionModel(
            linkId: key,
            score: 1,
            answers: [
              PostTriageAnswerModel(
                value: "YES",
                score: double.parse(score.toString()),
              )
            ],
          ),
        );
      },
    );
  }

  //////////////////////////////////////////////////////////////////

  List<PostTriageImagingSelectionModel> getTriageEyeScanResponse() {
    XFile XleftEyeImage = XFile(AppImages.cataractEyecare); // _leftEyeImage!;
    XFile XrightEyeImage = XFile(AppImages.cataractEyecare); // _rightEyeImage!;

    List<PostTriageImagingSelectionModel> mediaCaptureList = [];
    mediaCaptureList.add(PostTriageImagingSelectionModel(
      identifier: 70000001,
      endpoint: getUniqueFileName(XleftEyeImage.name),
      baseUrl: XleftEyeImage.mimeType,
      score: 1,
    ));
    mediaCaptureList.add(PostTriageImagingSelectionModel(
      identifier: 70000002,
      endpoint: getUniqueFileName(XrightEyeImage.name),
      baseUrl: XrightEyeImage.mimeType,
      score: 1,
    ));
    logger.d({
      "getTriageEyeScanResponse": mediaCaptureList,
    });
    return mediaCaptureList;
  }

  String generateUniqueKey() {
    String uuid = const Uuid().v4();
    String key = "WA${uuid.substring(0, 6)}";
    return key;
  }

  String getUniqueFileName(String fileName) {
    String uniqueKey = generateUniqueKey();
    return "${_patientID}_$fileName-$uniqueKey";
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////////

  double _calculateScore(double value) {
    logger.i("Tumbling Test Value: $value");
    if (value >= 1) {
      return 3.0;
    } else if (value >= 0.5) {
      return 2.0;
    } else {
      return 1.0;
    }
  }

  List<PostTriageObservationsModel> getVisionAcuityTumblingResponse() {
    double leftEyeUrgency = _calculateScore(_leftEyeSight!);
    double rightEyeUrgency = _calculateScore(_rightEyeSight!);
    double bothEyeUrgency = _calculateScore(_bothEyeSight!);

    List<PostTriageObservationsModel> observationList = [
      PostTriageObservationsModel(
        identifier: 50000001,
        value: _leftEyeSight.toString(),
        score: leftEyeUrgency,
      ),
      PostTriageObservationsModel(
        identifier: 50000002,
        value: _rightEyeSight.toString(),
        score: rightEyeUrgency,
      ),
      PostTriageObservationsModel(
        identifier: 50000003,
        value: _bothEyeSight.toString(),
        score: bothEyeUrgency,
      ),
    ];

    logger.d({
      "getVisionAcuityTumblingResponse": observationList,
    });
    return observationList;
  }
}
