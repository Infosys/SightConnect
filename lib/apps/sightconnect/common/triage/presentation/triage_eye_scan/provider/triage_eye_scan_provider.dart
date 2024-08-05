import 'dart:developer';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/usecases/save_triage_eye_scan_locally_usecase.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/providers/triage_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/file_ms_service.dart';
import 'package:eye_care_for_all/services/network_info.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TriageEyeScanProvider with ChangeNotifier {
  final SaveTriageEyeScanLocallyUseCase _saveTriageEyeScanLocallyUseCase;
  TriageEyeType _currentEye;
  final FileMsService _fileMsService;
  final NetworkInfo _networkInfo;
  final DiagnosticReportTemplateFHIRModel? _assessment;
  final TriageLocalSource _triageLocalSource;

  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  XFile? _bothEyeImage;

  TriageEyeScanProvider(
    this._saveTriageEyeScanLocallyUseCase,
    this._fileMsService,
    this._currentEye,
    this._networkInfo,
    this._assessment,
    this._triageLocalSource,
  );

  TriageEyeType get currentEye => _currentEye;
  XFile get leftEyeImage => _leftEyeImage!;
  XFile get rightEyeImage => _rightEyeImage!;
  XFile get bothEyeImage => _bothEyeImage!;

  Future<void> setLeftEyeImage(XFile image) async {
    _leftEyeImage = image;
    try {
      await uploadImage(image, TriageEyeType.LEFT);
    } on Exception {
      rethrow;
    }
    notifyListeners();
  }

  Future<void> setRightEyeImage(XFile image) async {
    _rightEyeImage = image;
    try {
      await uploadImage(image, TriageEyeType.RIGHT);
    } on Exception {
      rethrow;
    }
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

  Future<void> saveTriageEyeScanResponseToDB() async {
    logger.d({"Left eye image": leftImageUrl});
    logger.d({"right eye image": rightImageUrl});
    final response = await _saveTriageEyeScanLocallyUseCase.call(
      SaveTriageEyeScanLocallyParam(
        postImagingSelectionModel:
            getTriageEyeScanResponse(leftImageUrl, rightImageUrl),
      ),
    );
// https://healthconnecttech.org/services/filems/api/file/download/1711440771063-135bce6c-ad33-4ed6-a780-5b07d9481de5
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

  List<PostTriageImagingSelectionModel> getTriageEyeScanResponse(
    String leftEyeImageUrl,
    String rightEyeImageUrl,
  ) {
    List<PostTriageImagingSelectionModel> mediaCaptureList = [];

    DiagnosticReportTemplateFHIRModel? assessment = _assessment;
    Map<String, int> imageIdentifier = getTriageImageIdentifier(assessment!);

    Map<String, String> leftEyeData = parseUrl(leftEyeImageUrl);
    Map<String, String> rightEyeData = parseUrl(rightEyeImageUrl);
    log("parsed left eye url is : $leftEyeData");
    log("parsed right eye url is : $rightEyeData");

    mediaCaptureList.add(PostTriageImagingSelectionModel(
        identifier: imageIdentifier["LEFT_EYE"],
        fileId: leftEyeData["fileId"],
        endpoint: leftEyeData["endPoint"],
        baseUrl: leftEyeData["baseUrl"],
        score: 0));
    mediaCaptureList.add(PostTriageImagingSelectionModel(
      identifier: imageIdentifier["RIGHT_EYE"],
      fileId: rightEyeData["fileId"],
      endpoint: rightEyeData["endPoint"],
      baseUrl: rightEyeData["baseUrl"],
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

  String leftImageUrl = "";
  String rightImageUrl = "";
  String bothImageUrl = "";

  Future<void> uploadImage(XFile image, TriageEyeType currentEye) async {
    logger.d({
      "uploadImage": "called",
      "image": image.name,
      "currentEye": currentEye,
    });
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
          logger.d({"here in else case"});
          bothImageUrl = response;
        }

        notifyListeners();
      } catch (e) {
        logger.d({"uploadImage Error": e});
        rethrow;
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
      } else if (slashcount >= 3 && slashcount <= 8) {
        if (slashcount <= 7) {
          endpoint += url[i];
        } else if (slashcount == 8) {
          slashcount++;
        }
      } else {
        fileId += url[i];
      }
    }

    // for (int i = endpoint.length - 1; i >= 0; i--) {
    //   if (endpoint[i] == '/') {
    //     break;
    //   }

    //   fileId += endpoint[i];
    // }
    // fileId = reverseFileId(fileId);

    mp["baseUrl"] = baseUrl;
    mp["endPoint"] = endpoint;
    mp["fileId"] = fileId;

    return mp;
  }

  // String reverseFileId(String input) {
  //   String reversed = '';
  //   for (int i = input.length - 1; i >= 0; i--) {
  //     reversed += input[i];
  //   }
  //   return reversed;
  // }
}

var triageEyeScanProvider = ChangeNotifierProvider(
  (ref) => TriageEyeScanProvider(
    ref.watch(saveTriageEyeScanLocallyUseCase),
    ref.watch(fileMsServiceProvider),
    TriageEyeType.RIGHT,
    ref.watch(connectivityProvider),
    ref.watch(getTriageProvider).asData?.value,
    ref.watch(triageLocalSourceProvider),
  ),
);
