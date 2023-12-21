import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/providers/patient_assesssment_and_test_provider_new.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart'
    as update_model;

class UpdateTriageEyeScanProvider with ChangeNotifier {
  TriageEyeType _currentEye;
  final String _patientID;
  PatientAssessmentAndTestProviderNew updateTriageProvider;
  TriageRepository triageRepository;

  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  XFile? _bothEyeImage;

  UpdateTriageEyeScanProvider(
    this._currentEye,
    this._patientID,
    this.updateTriageProvider,
    this.triageRepository,
  );

  TriageEyeType get currentEye => _currentEye;
  XFile get leftEyeImage => _leftEyeImage!;
  XFile get rightEyeImage => _rightEyeImage!;
  XFile get bothEyeImage => _bothEyeImage!;

  void setLeftEyeImage(XFile image) {
    _leftEyeImage = image;
    notifyListeners();
  }

  void setRightEyeImage(XFile image) {
    _rightEyeImage = image;
    notifyListeners();
  }

  void setBothEyeImage(XFile image) {
    _bothEyeImage = image;
    notifyListeners();
  }

  void setCurrentEye(TriageEyeType eye) {
    _currentEye = eye;
    notifyListeners();
  }

  List<PostImagingSelectionModel> getTriageEyeScanResponse() {
    XFile XleftEyeImage = _leftEyeImage!;
    XFile XrightEyeImage = _rightEyeImage!;

    List<PostImagingSelectionModel> mediaCaptureList = [];
    mediaCaptureList.add(PostImagingSelectionModel(
      identifier: 70000001,
      endpoint: getUniqueFileName(XleftEyeImage.name),
      baseUrl: XleftEyeImage.mimeType,
      score: 1,
    ));
    mediaCaptureList.add(PostImagingSelectionModel(
      identifier: 70000002,
      endpoint: getUniqueFileName(XrightEyeImage.name),
      baseUrl: XrightEyeImage.mimeType,
      score: 1,
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
    return "${_patientID}_$fileName-$uniqueKey";
  }

  updateEyeScanReport(int reportID) async {
    try {
      DiagnosticReportTemplateFHIRModel triageAssessment =
          await updateTriageProvider.getAssessmentDetail();

      TriageReportDetailedEntity triageReport =
          await updateTriageProvider.getTriageDetailedReport(reportID);

      List<PostImagingSelectionModel> updatedResponseEyeScan =
          getTriageEyeScanResponse();

      TriageUpdateModel triageUpdateModel = _getTriageUpdateModel(
        updatedResponseEyeScan,
        triageReport,
        triageRepository,
      );

      Either<Failure, TriageResponseModel> finalResponse =
          await triageRepository.updateTriage(triage: triageUpdateModel);

      finalResponse.fold((l) {
        logger.d({"message": "Error in updating triage"});
      }, (r) {
        logger.d({"message": "Triage updated successfully"});
      });
    } catch (e) {
      rethrow;
    }
  }

  TriageUpdateModel _getTriageUpdateModel(
    List<PostImagingSelectionModel>? triageEyeScanResponse,
    TriageReportDetailedEntity triageReport,
    TriageRepository triageRepository,
  ) {
    if (triageEyeScanResponse == null) {
      throw ServerException();
    }

    update_model.TriageUpdateModel triage = update_model.TriageUpdateModel();

    return triage;
  }
}

var updateTriageEyeScanProvider = ChangeNotifierProvider(
  (ref) => UpdateTriageEyeScanProvider(
    TriageEyeType.RIGHT,
    "99000001",
    ref.read(patientAssessmentAndTestProvider),
    ref.read(triageRepositoryProvider),
  ),
);
