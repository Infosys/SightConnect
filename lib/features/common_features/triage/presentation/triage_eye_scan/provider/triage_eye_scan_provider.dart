import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/providers/global_user_provider.dart';
import 'package:eye_care_for_all/core/services/file_ms_service.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/save_triage_eye_scan_locally_usecase.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class TriageEyeScanProvider with ChangeNotifier {
  final SaveTriageEyeScanLocallyUseCase _saveTriageEyeScanLocallyUseCase;
  TriageEyeType _currentEye;
  final int _patientID;
  final FileMsService _fileMsService ;

  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  XFile? _bothEyeImage;

  TriageEyeScanProvider(
    this._saveTriageEyeScanLocallyUseCase,
    this._fileMsService,
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

  Future<void> saveTriageEyeScanResponseToDB() async {
    final response = await _saveTriageEyeScanLocallyUseCase.call(
      SaveTriageEyeScanLocallyParam(
        postImagingSelectionModel: getTriageEyeScanResponse(),
      ),
    );
    response.fold(
      (failure) {
        logger.d({
          "Failure": failure,
        });
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

  /// set triage eye scan response based on the TriageAssessment model
  List<PostImagingSelectionModel> getTriageEyeScanResponse() {
    XFile XleftEyeImage = _leftEyeImage!;
    XFile XrightEyeImage = _rightEyeImage!;

    List<PostImagingSelectionModel> mediaCaptureList = [];
    mediaCaptureList.add(PostImagingSelectionModel(//TODO: change Identifier and file id 
      identifier: 70000001,
      endpoint: getUniqueFileName(XleftEyeImage.name),
      baseUrl: XleftEyeImage.mimeType,
      score: 0,
      fileId: "1703051833013-dd457171-c898-4327-9d8d-5728e1664b88" //TODO: change file id
    ));
    mediaCaptureList.add(PostImagingSelectionModel( //TODO: change Identifier and file id 
      identifier: 70000002,
      endpoint: getUniqueFileName(XrightEyeImage.name),
      baseUrl: XrightEyeImage.mimeType,
      score: 0,
      fileId:"1703051833013-dd457171-c898-4327-9d8d-5728e1664b88" 
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

var triageEyeScanProvider = ChangeNotifierProvider(
  (ref) => TriageEyeScanProvider(
    ref.watch(saveTriageEyeScanLocallyUseCase),
    ref.watch(fileMsServiceProvider),
    TriageEyeType.RIGHT,
    ref.watch(globalUserProvider).userId,
  ),
);
