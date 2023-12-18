import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class UpdateTriageEyeScanProvider with ChangeNotifier {
  TriageEyeType _currentEye;
  final String _patientID;

  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  XFile? _bothEyeImage;

  UpdateTriageEyeScanProvider(
    this._currentEye,
    this._patientID,
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
}

var updateTriageEyeScanProvider = ChangeNotifierProvider(
  (ref) => UpdateTriageEyeScanProvider(
    TriageEyeType.RIGHT,
    "99000001",
  ),
);
