import 'dart:io';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/core/services/file_ms_service.dart';
import 'package:eye_care_for_all/core/services/network_info.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/save_triage_eye_scan_locally_usecase.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageEyeScanProvider with ChangeNotifier {
  final SaveTriageEyeScanLocallyUseCase _saveTriageEyeScanLocallyUseCase;
  TriageEyeType _currentEye;
  final FileMsService _fileMsService;
  final NetworkInfo _networkInfo;

  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  XFile? _bothEyeImage;

  TriageEyeScanProvider(
    this._saveTriageEyeScanLocallyUseCase,
    this._fileMsService,
    this._currentEye,
    this._networkInfo,
  );

  TriageEyeType get currentEye => _currentEye;
  XFile get leftEyeImage => _leftEyeImage!;
  XFile get rightEyeImage => _rightEyeImage!;
  XFile get bothEyeImage => _bothEyeImage!;

  void setLeftEyeImage(XFile image) {
    _leftEyeImage = image;
    uploadImage(image, TriageEyeType.LEFT);
    notifyListeners();
  }

  void setRightEyeImage(XFile image) {
    _rightEyeImage = image;
    uploadImage(image, TriageEyeType.RIGHT);
    notifyListeners();
  }

  void setBothEyeImage(XFile image) {
    _bothEyeImage = image;
    uploadImage(image, TriageEyeType.BOTH);
    notifyListeners();
  }

  void setCurrentEye(TriageEyeType eye) {
    _currentEye = eye;
    notifyListeners();
  }

  Future<void> saveTriageEyeScanResponseToDB() async {
    final response = await _saveTriageEyeScanLocallyUseCase.call(
      SaveTriageEyeScanLocallyParam(
        postImagingSelectionModel: await getTriageEyeScanResponse(),
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

  Future<List<PostImagingSelectionModel>> getTriageEyeScanResponse() async {
    List<PostImagingSelectionModel> mediaCaptureList = [];

    if (await _networkInfo.isConnected()) {
      Map<String, String> leftEyeData = parseUrl(leftImageUrl);
      Map<String, String> rightEyeData = parseUrl(rightImageUrl);
      mediaCaptureList.add(
        PostImagingSelectionModel(
            identifier: 70000001,
            endpoint: leftEyeData["endPoint"],
            baseUrl: leftEyeData["baseUrl"],
            score: 0,
            fileId: rightEyeData["fileId"]),
      );
      mediaCaptureList.add(
        PostImagingSelectionModel(
          identifier: 70000002,
          endpoint: rightEyeData["endPoint"],
          baseUrl: rightEyeData["baseUrl"],
          score: 0,
          fileId: rightEyeData["fileId"],
        ),
      );
      logger.d({"getTriageEyeScanResponse": mediaCaptureList});
      return mediaCaptureList;
    } else {
      //TODO:: handle no internet image
      logger.d({"getTriageEyeScanResponse": "No Internet"});
      return mediaCaptureList;
    }
  }

  String leftImageUrl = "";
  String rightImageUrl = "";
  String bothImageUrl = "";

  void uploadImage(XFile image, TriageEyeType currentEye) async {
    if (await _networkInfo.isConnected()) {
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
    } else {
      logger.d({"upload Image": "No Internet"});
      return;
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

var triageEyeScanProvider = ChangeNotifierProvider(
  (ref) => TriageEyeScanProvider(
      ref.watch(saveTriageEyeScanLocallyUseCase),
      ref.watch(fileMsServiceProvider),
      TriageEyeType.RIGHT,
      ref.watch(connectivityProvider)),
);
