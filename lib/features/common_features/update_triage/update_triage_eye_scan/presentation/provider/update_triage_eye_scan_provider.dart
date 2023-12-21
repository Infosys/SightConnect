import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/patient_assesssment_and_test_provider_new.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
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
    "99000001",
    ref.read(patientAssessmentAndTestProvider),
    ref.watch(triageReportRepositoryProvider),
    ref.watch(triageUrgencyRepositoryProvider),
    ref.watch(triageRepositoryProvider),
  ),
);

class UpdateTriageEyeScanProvider with ChangeNotifier {
  TriageEyeType _currentEye;
  final String _patientID;
  PatientAssessmentAndTestProviderNew patientAssessmentAndTestProvider;
  final TriageUrgencyRepository _triageUrgencyRepository;
  final TriageReportRepository _triageReportRepository;
  final TriageRepository _triageRepository;

  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  XFile? _bothEyeImage;

  UpdateTriageEyeScanProvider(
    this._currentEye,
    this._patientID,
    this.patientAssessmentAndTestProvider,
    this._triageReportRepository,
    this._triageUrgencyRepository,
    this._triageRepository,
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
      identifier: 2151,
      baseUrl: "https://eyecare4all-dev.infosysapps.com",
      endpoint: "/abcd/filems/api/file/download",
      score: 1,
      fileId: "1703051833013-dd457171-c898-4327-9d8d-5728e1664b88"
    ));
    mediaCaptureList.add(PostImagingSelectionModel(
      identifier: 2152,
      baseUrl: "https://eyecare4all-dev.infosysapps.com",
      endpoint: "/abcd/filems/api/file/download",
      score: 1,
      fileId: "1703051833013-dd457171-c898-4327-9d8d-5728e1664b88"
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

      List<PostImagingSelectionModel> updatedResponseEyeScan =
          getTriageEyeScanResponse();

      TriageUpdateModel triageUpdateModel = _getTriageUpdateModel(
          updatedResponseEyeScan, triageReport, triageAssessment);

      var finalResponse =
          await _triageRepository.updateTriage(triage: triageUpdateModel);
      finalResponse.fold((l) {
        logger.d({"message": "Error in updating triage"});
        return false;
      }, (r) {
        logger.f({"message": "Triage updated successfully"});
        return true;
      });
      return false;
    } catch (e) {
      rethrow;
    }
  }

  List<update_model.IncompleteTestModel> _getIncompleteTestList(
      List<triage_detailed_model.IncompleteTestModel>? incompleteTestList) {
    List<update_model.IncompleteTestModel> incompleteTestModelList = [];

    incompleteTestList?.forEach((element) {
      if (element.testName != TestType.QUESTIONNAIRE) {
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
      List<PostImagingSelectionModel>? triageEyeScanResponse,
      TriageDetailedReportModel triageReport,
      DiagnosticReportTemplateFHIRModel triageAssessment) {
    if (triageEyeScanResponse == null) {
      throw ServerException();
    }

    update_model.TriageUpdateModel triage = update_model.TriageUpdateModel(
      patientId: triageReport.subject,
      diagnosticReportId: triageReport.diagnosticReportId,
      organizationCode: triageReport.organizationCode,
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
      ),
    );

    return triage;
  }

  List<update_model.PatchImagingSelectionModel>? _getUpdatedImageList(
    List<triage_detailed_model.Media>? existingImages,
    List<PostImagingSelectionModel> imagesFromUi,
  ) {
    List<update_model.PatchImagingSelectionModel> updatedImageLists = [];
    existingImages?.forEach((element) {
      updatedImageLists.add(
        update_model.PatchImagingSelectionModel(
          id: element.id,
          action: Action.REMOVE,
        ),
      );
    });

    for (PostImagingSelectionModel element in imagesFromUi) {
      updatedImageLists.add(
        update_model.PatchImagingSelectionModel(
          action: Action.ADD,
          identifier: element.identifier,
          score: element.score,
          baseUrl: element.baseUrl,
          endpoint: element.endpoint,
          fileId: element.fileId,
        ),
      );
    }

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
}
