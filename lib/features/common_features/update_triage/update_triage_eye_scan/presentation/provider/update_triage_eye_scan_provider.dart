import 'dart:io';

import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/patient_assesssment_and_test_provider_new.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/file_ms_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
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
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart'
    as triage_detailed_model;
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart'
    as update_model;

var updateTriageEyeScanProvider = ChangeNotifierProvider(
  (ref) => UpdateTriageEyeScanProvider(
    TriageEyeType.RIGHT,
    ref.read(patientAssessmentAndTestProvider),
    ref.watch(triageReportRepositoryProvider),
    ref.watch(triageUrgencyRepositoryProvider),
    ref.watch(triageRepositoryProvider),
    ref.watch(fileMsServiceProvider),
  ),
);

class UpdateTriageEyeScanProvider with ChangeNotifier {
  TriageEyeType _currentEye;

  PatientAssessmentAndTestProviderNew patientAssessmentAndTestProvider;
  final TriageUrgencyRepository _triageUrgencyRepository;
  final TriageReportRepository _triageReportRepository;
  final TriageRepository _triageRepository;
  final FileMsService _fileMsService;

  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  XFile? _bothEyeImage;

  UpdateTriageEyeScanProvider(
      this._currentEye,
      this.patientAssessmentAndTestProvider,
      this._triageReportRepository,
      this._triageUrgencyRepository,
      this._triageRepository,
      this._fileMsService);

  TriageEyeType get currentEye => _currentEye;
  XFile get leftEyeImage => _leftEyeImage!;
  XFile get rightEyeImage => _rightEyeImage!;
  XFile get bothEyeImage => _bothEyeImage!;

  Future<void> setLeftEyeImage(XFile image) async {
    _leftEyeImage = image;
    await uploadImage(image, TriageEyeType.LEFT);
    notifyListeners();
  }

  Future<void> setRightEyeImage(XFile image) async {
    _rightEyeImage = image;
    await uploadImage(image, TriageEyeType.RIGHT);
    notifyListeners();
  }

  Future<void> setBothEyeImage(XFile image) async {
    _bothEyeImage = image;
    await uploadImage(image, TriageEyeType.BOTH);
    notifyListeners();
  }

  void setCurrentEye(TriageEyeType eye) {
    _currentEye = eye;
    notifyListeners();
  }

  List<PostTriageImagingSelectionModel> getTriageEyeScanResponse() {
    List<PostTriageImagingSelectionModel> mediaCaptureList = [];
    mediaCaptureList.add(const PostTriageImagingSelectionModel(
      identifier: 0,
      endpoint: "",
      baseUrl: "",
      score: 0,
    ));
    mediaCaptureList.add(const PostTriageImagingSelectionModel(
      identifier: 0,
      endpoint: "",
      baseUrl: "",
      score: 0,
    ));

    return mediaCaptureList;
  }

  Map<String, int> getTriageImageIdentifier(
      DiagnosticReportTemplateFHIRModel assessment) {
    Map<String, int> imageIdentifier = {};

    assessment.study?.imagingSelectionTemplate?.forEach((element) {
      imageIdentifier[element.name!] = element.id!;
    });

    return imageIdentifier;
  }

  String generateUniqueKey() {
    String uuid = const Uuid().v4();
    String key = "WA${uuid.substring(0, 6)}";
    return key;
  }

  // String getUniqueFileName(String fileName) {
  //   String uniqueKey = generateUniqueKey();
  //   return "${_patientID}_$fileName-$uniqueKey";
  // }

  Future<TriageDetailedReportModel?> getTriageReportByReportId(
      int reportId) async {
    final response =
        await _triageReportRepository.getTriageReportByReportId(reportId);
    return response.fold(
      (failure) => null,
      (result) => result,
    );
  }

  Future<bool> updateEyeScanReport(int reportID) async {
    try {
      final triageReport = await getTriageReportByReportId(reportID);
      if (triageReport == null) {
        throw ServerException();
      }

      DiagnosticReportTemplateFHIRModel triageAssessment =
          await patientAssessmentAndTestProvider.getAssessmentDetail();

      List<PostTriageImagingSelectionModel> updatedResponseEyeScan =
          getTriageEyeScanResponse();

      TriageUpdateModel triageUpdateModel = _getTriageUpdateModel(
        updatedResponseEyeScan,
        triageReport,
        triageAssessment,
      );

      Either<Failure, TriagePostModel> finalResponse =
          await _triageRepository.updateTriageResponse(
        triageResponse: triageUpdateModel,
      );
      return finalResponse.fold(
        (l) {
          logger.d({"message": "Error in updating triage"});
          return false;
        },
        (r) {
          logger.d({"message": "Triage updated successfully"});
          return true;
        },
      );
    } catch (e) {
      logger.d({"error in this step": e});
      return false;
    }
  }

  List<update_model.IncompleteTestModel> _getIncompleteTestList(
      List<triage_detailed_model.IncompleteTestModel>? incompleteTestList) {
    List<update_model.IncompleteTestModel> incompleteTestModelList = [];

    incompleteTestList?.forEach((element) {
      if (element.testName != TestType.IMAGE) {
        incompleteTestModelList.add(
          update_model.IncompleteTestModel(
            testName: element.testName,
          ),
        );
      }
    });

    return incompleteTestModelList;
  }

  TriageUpdateModel _getTriageUpdateModel(
      List<PostTriageImagingSelectionModel>? triageEyeScanResponse,
      TriageDetailedReportModel triageReport,
      DiagnosticReportTemplateFHIRModel triageAssessment) {
    if (triageEyeScanResponse == null) {
      throw ServerException();
    }

    update_model.TriageUpdateModel triage = update_model.TriageUpdateModel(
      patientId: triageReport.subject,
      diagnosticReportId: triageReport.diagnosticReportId,
      tenantCode: triageReport.tenantCode,
      performer: [
        update_model.Performer(
          role: PerformerRole.PATIENT,
          identifier: triageReport.subject,
        ),
      ],
      assessmentCode: triageReport.assessmentCode,
      assessmentVersion: triageReport.assessmentVersion,
      issued: triageReport.issued,
      source: Source.PATIENT_APP,
      sourceVersion: AppText.appVersion,
      incompleteSection: _getIncompleteTestList(triageReport.incompleteTests),
      score: _getScore(),
      cummulativeScore: _getCummulativeScore(),
      imagingSelection: _getUpdatedImageList(
        triageReport.media,
        getTriageEyeScanResponse(),
        triageAssessment,
      ),
    );
    logger.d({"triageModel": triage});
    return triage;
  }

  List<update_model.PatchImagingSelectionModel>? _getUpdatedImageList(
    List<triage_detailed_model.Media>? existingImages,
    List<PostTriageImagingSelectionModel> imagesFromUi,
    DiagnosticReportTemplateFHIRModel triageAssessment,
  ) {
    Map<String, int> imageIdentifier =
        getTriageImageIdentifier(triageAssessment);

    List<update_model.PatchImagingSelectionModel> updatedImageLists = [];
    existingImages?.forEach((element) {
      updatedImageLists.add(
        update_model.PatchImagingSelectionModel(
          id: element.id,
          action: Action.REMOVE,
        ),
      );
    });

    Map<String, String> leftEyeMap = parseUrl(leftImageUrl);
    Map<String, String> rightEyeMap = parseUrl(rightImageUrl);

    logger.d({"imageIdentifier": imageIdentifier});
    logger.d({"imageIdentifier": imageIdentifier["LEFT_EYE"]});
    //add left eye data
    updatedImageLists.add(update_model.PatchImagingSelectionModel(
      action: Action.ADD,
      identifier: imageIdentifier["LEFT_EYE"],
      score: 0,
      baseUrl: leftEyeMap["baseUrl"],
      endpoint: leftEyeMap["endPoint"],
      fileId: leftEyeMap["fileId"],
    ));

    //add Right eye data
    updatedImageLists.add(update_model.PatchImagingSelectionModel(
      action: Action.ADD,
      identifier: imageIdentifier["RIGHT_EYE"],
      score: 0,
      baseUrl: rightEyeMap["baseUrl"],
      endpoint: rightEyeMap["endPoint"],
      fileId: rightEyeMap["fileId"],
    ));

    return updatedImageLists;
  }

  int _getCummulativeScore() {
    final eyescanScore =
        _triageUrgencyRepository.eyeScanUrgency((getTriageEyeScanResponse()));
    return eyescanScore.toInt();
  }

  List<Map<String, int>> _getScore() {
    final eyeScanReport =
        _triageUrgencyRepository.eyeScanUrgency(getTriageEyeScanResponse());

    return [
      {"QUESTIONNAIRE": 0},
      {
        "OBSERVATION": 0,
      },
      {"IMAGE": eyeScanReport.toInt()}
    ];
  }

  String leftImageUrl = "";
  String rightImageUrl = "";
  String bothImageUrl = "";

  Future<void> uploadImage(XFile image, TriageEyeType currentEye) async {
    try {
      final response = await _fileMsService.uploadImage(File(image.path));
      logger.d({"response": response});
      if (currentEye == TriageEyeType.LEFT) {
        leftImageUrl = response;
        logger.d({"eyeTypeLeft": leftImageUrl});
      } else if (currentEye == TriageEyeType.RIGHT) {
        rightImageUrl = response;
        logger.d({"eyeTypeRight": rightImageUrl});
      } else {
        bothImageUrl = response;
      }

      notifyListeners();
    } catch (e) {
      logger.d({"uploadImage Error": e});
    }
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
}
