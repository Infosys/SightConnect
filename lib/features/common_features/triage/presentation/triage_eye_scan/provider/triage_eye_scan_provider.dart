import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class TriageEyeScanProvider with ChangeNotifier {
  TriageEyeType _currentEye = TriageEyeType.RIGHT;
  TriageLocalSource triageLocalSourceProvider;

  XFile? _leftEyeImage;
  XFile? _rightEyeImage;

  TriageEyeScanProvider(this.triageLocalSourceProvider);

  XFile? get leftEyeImage => _leftEyeImage;
  XFile? get rightEyeImage => _rightEyeImage;
  TriageEyeType get currentEye => _currentEye;

  void setLeftEyeImage(XFile image) {
    _leftEyeImage = image;
    notifyListeners();
  }

  void setRightEyeImage(XFile image) {
    _rightEyeImage = image;
    notifyListeners();
  }

  void setCurrentEye(TriageEyeType eye) {
    _currentEye = eye;
    notifyListeners();
  }

  void printImage() {
    logger.d([
      _leftEyeImage!.path,
      _rightEyeImage!.path,
    ]);
  }

  int getTriageEyeScanUrgency() {
    return 1;
  }

  // set triage eye scan response based on the TriageAssessment model
  List<PostImagingSelectionModel> getTriageEyeScanResponse() {
    XFile? XleftEyeImage = leftEyeImage;
    XFile? XrightEyeImage = rightEyeImage;

    List<PostImagingSelectionModel> mediaCaptureList = [];
    mediaCaptureList.add(PostImagingSelectionModel(
      identifier: 70000001,
      endpoint: getUniqueFileName(XleftEyeImage!.name),
      baseUrl: XleftEyeImage.mimeType,
      score: 14,
    ));
    mediaCaptureList.add(PostImagingSelectionModel(
      identifier: 70000002,
      endpoint: getUniqueFileName(XrightEyeImage!.name),
      baseUrl: XrightEyeImage.mimeType,
      score: 20,
    ));

    logger.d(mediaCaptureList);
    return mediaCaptureList;
  }

  String generateUniqueKey() {
    String uuid = const Uuid().v4();
    String key = "WA${uuid.substring(0, 6)}";
    return key;
  }

  String getUniqueFileName(String fileName) {
    String patientID = "99000001";
    String uniqueKey = generateUniqueKey();
    return "${patientID}_$fileName-$uniqueKey";
  }

  void saveTriageEyeScanResponseToDB() {
    logger.f("Saving Triage Eye Scan Response to DB");
    triageLocalSourceProvider.saveTriageEyeScanLocally(
        triageEyeScan: getTriageEyeScanResponse());
  }
}

var triageEyeScanProvider = ChangeNotifierProvider(
  (ref) => TriageEyeScanProvider(
    ref.watch(triageLocalSourceProvider),
  ),
);
