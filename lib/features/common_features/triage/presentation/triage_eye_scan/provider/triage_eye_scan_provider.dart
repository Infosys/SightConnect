import 'dart:convert';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/save_triage_eye_scan_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/providers/triage_member_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageEyeScanProvider with ChangeNotifier {
  final SaveTriageEyeScanLocallyUseCase _saveTriageEyeScanLocallyUseCase;
  TriageEyeType _currentEye;
  final DiagnosticReportTemplateFHIRModel? _assessment;
  final TriageLocalSource _triageLocalSource;
  final int _patientID;

  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  XFile? _bothEyeImage;

  TriageEyeScanProvider(
    this._saveTriageEyeScanLocallyUseCase,
    this._currentEye,
    this._assessment,
    this._triageLocalSource,
    this._patientID,
  );

  TriageEyeType get currentEye => _currentEye;
  XFile get leftEyeImage => _leftEyeImage!;
  XFile get rightEyeImage => _rightEyeImage!;
  XFile get bothEyeImage => _bothEyeImage!;

  Future<void> setLeftEyeImage(XFile image) async {
    _leftEyeImage = image;
    notifyListeners();
  }

  Future<void> setRightEyeImage(XFile image) async {
    _rightEyeImage = image;
    notifyListeners();
  }

  Future<void> setBothEyeImage(XFile image) async {
    _bothEyeImage = image;
    notifyListeners();
  }

  void setCurrentEye(TriageEyeType eye) {
    _currentEye = eye;
    notifyListeners();
  }

  Future<void> saveTriageEyeScanResponseToDB() async {
    final response = await _saveTriageEyeScanLocallyUseCase.call(
      SaveTriageEyeScanLocallyParam(
          postImagingSelectionModel: getTriageEyeScanResponse(),
          patientID: _patientID.toString()),
    );

    response.fold(
      (failure) async {
        logger.d({
          "Failure while saving in local db ": failure,
        });
        await _triageLocalSource.resetTriage();
      },
      (_) {
        logger.d({
          "saveTriageEyeScanResponseToDB": "Success",
        });
      },
    );
  }

  int getTriageEyeScanUrgency() {
    return 1;
  }

  List<PostTriageImagingSelectionModel> getTriageEyeScanResponse() {
    List<PostTriageImagingSelectionModel> mediaCaptureList = [];

    DiagnosticReportTemplateFHIRModel? assessment = _assessment;
    Map<String, int> imageIdentifier = getTriageImageIdentifier(assessment!);

    mediaCaptureList.add(PostTriageImagingSelectionModel(
        identifier: imageIdentifier["LEFT_EYE"],
        fileId: leftEyeImage.name,
        endpoint: base64Encode(File(leftEyeImage.path).readAsBytesSync()),
        score: 0));
    mediaCaptureList.add(PostTriageImagingSelectionModel(
      identifier: imageIdentifier["RIGHT_EYE"],
      fileId: rightEyeImage.name,
      endpoint: base64Encode(File(rightEyeImage.path).readAsBytesSync()),
      score: 0,
    ));
    logger.d({"getTriageEyeScanResponse": mediaCaptureList});
    return mediaCaptureList;
  }

  Map<String, int> getTriageImageIdentifier(
    DiagnosticReportTemplateFHIRModel assessment,
  ) {
    Map<String, int> imageIdentifier = {};

    assessment.study?.imagingSelectionTemplate?.forEach((element) {
      imageIdentifier[element.name!] = element.id!;
    });

    return imageIdentifier;
  }
}

var triageEyeScanProvider = ChangeNotifierProvider(
  (ref) => TriageEyeScanProvider(
      ref.watch(saveTriageEyeScanLocallyUseCase),
      TriageEyeType.RIGHT,
      ref.watch(getTriageProvider).asData?.value,
      ref.watch(triageLocalSourceProvider),
      ref.watch(triageMemberProvider).testPatientId!),
);
