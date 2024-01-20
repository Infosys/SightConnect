import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/services/file_ms_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/presentation/provider/vision_technician_search_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../../../main.dart';
import '../../../../common_features/triage/domain/models/triage_post_model.dart';

var visionTechnicianTriageProvider =
    ChangeNotifierProvider((ref) => VisionTechnicianTriageProvider(
          fileMsService: ref.watch(fileMsServiceProvider),
          vtSearchProvider: ref.watch(visionTechnicianSearchProvider),
        ));

class VisionTechnicianTriageProvider extends ChangeNotifier {
  FileMsService fileMsService;
  VisionTechnicianSearchProvider vtSearchProvider;
  VisionTechnicianTriageProvider(
      {required this.fileMsService, required this.vtSearchProvider}) {
    // _selectedOptions = {};
  }
  //patient id is static data right now
  String _patientID = "";
  Map<int, String> _selectedOptions = {};
  Map<int, String> get selectedOptions => _selectedOptions;
  final Map<int, QuestionnaireItemFHIRModel> _idToQuestions = {};
  final List<PostTriageQuestionModel> _questionResponseList = [];
  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  double? _leftEyeSight;
  double? _rightEyeSight;
  double? _bothEyeSight;
  DiagnosticReportTemplateFHIRModel _assessment =
      const DiagnosticReportTemplateFHIRModel();
  DiagnosticReportTemplateFHIRModel get assessment => _assessment;
  void setPatientID(String patientID) {
    _patientID = patientID;
    logger.d("Patient ID: $_patientID");
    notifyListeners();
  }

  void setData(DiagnosticReportTemplateFHIRModel assessment,
      List<QuestionnaireItemFHIRModel> questions) {
    _assessment = assessment;
    _selectedOptions = {};
    for (int i = 0; i < questions.length; i++) {
      _selectedOptions[questions[i].id!] = "No";
      _idToQuestions[questions[i].id!] = questions[i];
    }
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

  void addQuestionnaireAnswer(int? questionCode, String? response) {
    if (questionCode == null) return;
    if (response == null) return;

    _selectedOptions[questionCode] = response;

    notifyListeners();
  }

  void removeQuestionnaireAnswer(int? questionCode) {
    if (questionCode == null) return;
    _selectedOptions[questionCode] = "No";
    notifyListeners();
  }

  List<PostTriageQuestionModel> getQuestionaireResponse() {
    return _questionResponseList;
  }

  void saveQuestionaireResponse() {
    // Map<int, bool> selectedOptionsList = {};
    // _selectedOptions.forEach((key, value) {
    //   selectedOptionsList[key] = true;
    // });
    addtoFinalResponse(_selectedOptions);
    logger.d("Questionnaire Response: $_selectedOptions");
    _selectedOptions.clear();
    notifyListeners();
  }

  void addtoFinalResponse(Map<int, String> selectedOptions) {
    if (selectedOptions.isEmpty) return;

    selectedOptions.forEach(
      (questionId, response) {
        List<AnswerOptionModel> answerOptions =
            _idToQuestions[questionId]?.answerOption ?? [];

        double score = 0;
        int answerCode = 0;
        for (int i = 0; i < answerOptions.length; i++) {
          if (answerOptions[i].answer?.answerString?.toLowerCase() ==
              response.toLowerCase()) {
            score =
                answerOptions[i].answer?.answerItemWeight?.value?.toDouble() ??
                    0;
            answerCode = answerOptions[i].answer?.id ?? 0;
          }
        }

        _questionResponseList.add(
          PostTriageQuestionModel(
            linkId: questionId, //question id
            score: score, //answerwt.value
            answers: [
              PostTriageAnswerModel(
                answerCode: answerCode,
                value: response,
                score: score, //answerwt.value
              )
            ],
          ),
        );
      },
    );
  }

  //////////////////////////////////////////////////////////////////

  Future<List<PostTriageImagingSelectionModel>>
      getTriageEyeScanResponse() async {
    if (_leftEyeImage == null) {
      return [];
    }

    if (_rightEyeImage == null) {
      return [];
    }

    XFile XleftEyeImage = _leftEyeImage!;
    XFile XrightEyeImage = _rightEyeImage!;

    String? leftEyeImage;
    String? rightEyeImage;

    try {
      leftEyeImage = await fileMsService.uploadImage(File(XleftEyeImage.path));
      rightEyeImage =
          await fileMsService.uploadImage(File(XrightEyeImage.path));
    } catch (e) {
      logger.d("Error in uploading image: $e");
    }

    if (leftEyeImage == null || rightEyeImage == null) {
      return [];
    }

    Map<String, String> leftEyeData = parseUrl(leftEyeImage);
    Map<String, String> rightEyeData = parseUrl(rightEyeImage);
    int? leftEyeIdentifier;
    int? rightEyeIdentifier;

    Map<String, int> identifierMap = {};
    _assessment.study?.imagingSelectionTemplate?.forEach((element) {
      identifierMap[element.name!] = element.id!;
    });
    leftEyeIdentifier = identifierMap["LEFT_EYE"];
    rightEyeIdentifier = identifierMap["RIGHT_EYE"];

    List<PostTriageImagingSelectionModel> mediaCaptureList = [];
    mediaCaptureList.add(PostTriageImagingSelectionModel(
      identifier: leftEyeIdentifier,
      endpoint: leftEyeData["endPoint"]!,
      baseUrl: leftEyeData["baseUrl"]!,
      score: 0,
      fileId: leftEyeData["fileId"]!,
    ));
    mediaCaptureList.add(PostTriageImagingSelectionModel(
      identifier: rightEyeIdentifier,
      endpoint: rightEyeData["endPoint"]!,
      baseUrl: rightEyeData["baseUrl"]!,
      score: 0,
      fileId: rightEyeData["fileId"]!,
    ));

    return mediaCaptureList;
  }

  String generateUniqueKey() {
    String uuid = const Uuid().v4();
    String key = "WA${uuid.substring(0, 6)}";
    return key;
  }

  String getUniqueFileName(String fileName) {
    String uniqueKey = generateUniqueKey();

    if (vtSearchProvider.patientDetails == null) {
      logger.d("Patient Details is null");
    }

    return "${vtSearchProvider.patientDetails!.id.toString()}_$fileName-$uniqueKey";
  }

  Map<String, String> parseUrl(String url) {
    Map<String, String> mp = {};
    String baseUrl = "";
    String endpoint = "";
    String fileId = "";
    int slashcount = 0;
    for (int i = 0; i < url.length; i++) {
      if (url[i] == '/') {
        slashcount++;
      }
      if (slashcount < 3) {
        baseUrl += url[i];
      } else {
        endpoint += url[i];
      }
    }

    for (int i = endpoint.length - 1; i >= 0; i--) {
      if (endpoint[i] == '/') {
        break;
      }

      fileId += endpoint[i];
    }
    fileId = reverseFileId(fileId);

    mp["baseUrl"] = baseUrl;
    mp["endPoint"] = endpoint;
    mp["fileId"] = fileId;

    return mp;
  }

  String reverseFileId(String input) {
    String reversed = '';
    for (int i = input.length - 1; i >= 0; i--) {
      reversed += input[i];
    }
    return reversed;
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////////

  double _calculateScore(double value) {
    logger.d("Tumbling Test Value: $value");
    if (value >= 1) {
      return 3.0;
    } else if (value >= 0.5) {
      return 2.0;
    } else {
      return 1.0;
    }
  }

  List<PostTriageObservationsModel> getVisionAcuityTumblingResponse() {
    if (_leftEyeImage == null ||
        _rightEyeImage == null ||
        _bothEyeSight == null) {
      return [];
    }

    double leftEyeUrgency = _calculateScore(_leftEyeSight!);
    double rightEyeUrgency = _calculateScore(_rightEyeSight!);
    double bothEyeUrgency = _calculateScore(_bothEyeSight!);

    int? leftIdentifier;
    int? rightIdentifier;

    // logger.d("assessment from observations functions $assessment");

    Map<BodySite, int> identifierMap = {};
    _assessment.observations?.observationDefinition?.forEach((element) {
      identifierMap[element.bodySite!] = element.id!;
    });
    leftIdentifier = identifierMap[BodySite.LEFT_EYE];
    rightIdentifier = identifierMap[BodySite.RIGHT_EYE];

    int bothEyeIdentifier = _assessment.observations?.id ?? 0;

    List<PostTriageObservationsModel> observationList = [
      PostTriageObservationsModel(
        identifier: leftIdentifier,
        value: _leftEyeSight.toString(),
        score: leftEyeUrgency,
      ),
      PostTriageObservationsModel(
        identifier: rightIdentifier,
        value: _rightEyeSight.toString(),
        score: rightEyeUrgency,
      ),
      PostTriageObservationsModel(
        identifier: bothEyeIdentifier,
        value: _bothEyeSight.toString(),
        score: bothEyeUrgency,
      ),
    ];

    // logger.d({
    //   "getVisionAcuityTumblingResponse": observationList,
    // });
    return observationList;
  }
}
