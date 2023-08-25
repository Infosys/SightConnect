import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../data/contract/patient_eye_scan_repository.dart';
import '../../data/models/User_details_model.dart';
import '../../data/models/enums/eye.dart';
import '../../data/models/enums/scan_type.dart';
import '../../data/models/previous_report_model.dart';
import '../../data/remote/patient_eye_scan_repository_impl.dart';

var patientEyeScanProvider = ChangeNotifierProvider((ref) => EyeScanProvider(ref.watch(patientEyeScanRepository)));

class EyeScanProvider extends ChangeNotifier {
  List<String> _generalAdvice = [];
  List<String> get generalAdvice => _generalAdvice;
  List<String> _watchWhatYouEat = [];
  List<PreviousReportsModel> _previousReports = [];
  List<PreviousReportsModel> get previousReports => _previousReports;
  PatientEyeScanRepository _patientEyeScanRepository;

  Eye _eye;

  String _video;
  XFile? _leftEye;
  XFile? _rightEye;

  resetEyeImage(Eye eye) {
    if (eye == Eye.RIGHT_EYE) {
      _rightEye = null;
    } else {
      _leftEye = null;
    }
    notifyListeners();
  }

  resetImages() {
    _rightEye = null;
    _leftEye = null;
    notifyListeners();
  }

  EyeScanProvider(this._patientEyeScanRepository)
      : _eye = Eye.LEFT_EYE,
        _video = '',
        _generalAdvice = [
          "Make sure your eyeglasses or contact lenses are the most accurate prescription possible",
          "Use a magnifying glass to read if you need additional help reading",
          "Improve the lightning in your home with more or brighter lamps",
          "When you go outside during the day, wear sunglasses or a broad-brimmed hat to reduce glare",
          "Limit your night driving",
          "Consider sugery when vision deteriorates and starts affecting your daily activities"
        ],
        _watchWhatYouEat = [
          "Nutrients that must be a part of your daily diet to support a good eye function :",
          "Vitamin A",
          "Vitamin C",
          "Vitamin E",
          "Vitamin B6, B9, B12",
          "Riboflavin",
          "Niacin"
        ],
        _previousReports = [
          PreviousReportsModel("Today", "Sreeram Murthy", "09:00 AM"),
          PreviousReportsModel("Jun 20", "Sudha Murthy", "11:00 AM"),
          PreviousReportsModel("Jun 24", "Kishore Murthy", "05:30 PM")
        ] {
    // setModel();
   setUserDetails();
  }

  // setModel() async {
  //   await TFLiteWeb.initialize();
  //   _loadedModel =
  //       await TFLiteModel.fromUrl("assets/images/cataract_model_final.tflite");
  // }

  // void _processModel(XFile? eyeImage) async {
  //   // var image = imageLib.decodeImage(await eyeImage!.readAsBytes());
  //   log(eyeImage!.readAsBytes().toString());
  //   final input = createTensor(await eyeImage!.readAsBytes(), shape: [1]);
  //   var output = _loadedModel!.predict(input);
  //   log(output.toString());
  //   // var output = List.filled(1, 0).reshape([1, 1]);
  //   // _interpreter?.run(eyeImage as Object, output);
  //   // log(output[0][0].toString());
  // }
  UserDetails? _userDetails;
  UserDetails? get userDetails => _userDetails;
  setUserDetails() {
    UserDetails temp = UserDetails(
        patientAge: "75", patientName: "Sreeram Murthy", gender: "Male");
    _userDetails = temp;
    notifyListeners();
  }

  ScanType? _scanType;
  ScanType? get scanType => _scanType;

  setScanType() {
    var age = int.parse(userDetails!.patientAge!);
    if (age <= 25) {
      _scanType = ScanType.Keratoconus;
    } else {
      _scanType = ScanType.Cataract;
    }
    log(_scanType.toString());
  }

  Uint8List? _reportPdf;
  Uint8List? get reportPdf => _reportPdf;
  report() async {
    String reportPath = "assets/keratoconus_reports.pdf"; //path to asset
    ByteData bytes = await rootBundle.load(reportPath); //load sound from assets
    _reportPdf =
        bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
    notifyListeners();
  }

  List<String> get watchWhatYouEat => _watchWhatYouEat;

  String get video => _video;

  set video(String value) {
    _video = value;
  }

  Eye get eye => _eye;

  set eye(Eye value) {
    _eye = value;
    notifyListeners();
  }

  XFile? get rightEye => _rightEye;

  XFile? get leftEye => _leftEye;

  setEye(XFile eyeImage, Eye eye) {
    log("provider called");
    switch (eye) {
      case Eye.LEFT_EYE:
        _leftEye = eyeImage;
        log(eyeImage.toString());
        log(eyeImage.readAsBytes().toString());
        // _processModel(_leftEye);
        break;
      case Eye.RIGHT_EYE:
        _rightEye = eyeImage;
        // _processModel(rightEye);
        break;
      case Eye.BOTH_EYES:
        // TODO: Handle this case.
        break;
    }
    notifyListeners();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  setIsLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  DateTime? _dateTime;
  String? _formatedDate, _formatedTime;
  String? get formatedDate => _formatedDate;
  String? get formatedTime => _formatedTime;

  processKeratoconus() {
    setIsLoading();
    _dateTime = DateTime.now();
    _formatedDate = DateFormat('d MMMM, yyyy').format(_dateTime!);
    _formatedTime = DateFormat('h:mm a').format(_dateTime!);
    setIsLoading();
  }

  processModel() async {

    setIsLoading();

    leftEyeProbability = await predictCataract(_leftEye);

    rightEyeProbability = await predictCataract(_rightEye);

    log(leftEyeProbability.toString());

    log(rightEyeProbability.toString());

    if (leftEyeProbability == -1) {

      _leftEyeStatus = "Cataract";
      leftEyeScore = 4;
    }
    if (rightEyeProbability == -1) {
      _rightEyeStatus = "Normal";
      rightEyeScore = 20;

    }
    if (leftEyeProbability != -1 && rightEyeProbability != -1) {
      _leftEyeStatus = await getStatus(leftEyeProbability);
      _rightEyeStatus = await getStatus(rightEyeProbability);
      leftEyeScore = await getScore(leftEyeProbability);
      rightEyeScore = await getScore(rightEyeProbability);
    }

    _dateTime = DateTime.now();

    _formatedDate = DateFormat('d MMMM, yyyy').format(_dateTime!);

    _formatedTime = DateFormat('h:mm a').format(_dateTime!);

 

    setIsLoading();

  }

  fakeProcessModel() async {
    setIsLoading();
    _dateTime = DateTime.now();
    _formatedDate = DateFormat('d MMMM, yyyy').format(_dateTime!);
    _formatedTime = DateFormat('h:mm a').format(_dateTime!);
    _rightEyeStatus = "Normal";
    _leftEyeStatus = "Cataract";
    rightEyeScore = 20;
    leftEyeScore = 6;
    setIsLoading();
  }

  num? rightEyeProbability, leftEyeProbability;
  num? rightEyeScore, leftEyeScore;

  num? get rightEyeProbabilityValue => rightEyeProbability;
  num? get leftEyeProbabilityValue => leftEyeProbability;
  num? get rightEyeScoreValue => rightEyeScore;
  num? get leftEyeScoreValue => leftEyeScore;
  String? _leftEyeStatus, _rightEyeStatus;
  String? get leftEyeStatus => _leftEyeStatus;
  String? get rightEyeStatus => _rightEyeStatus;

  //create a function where if probability is less than 0.5 then case is cataract and else normal eye
  //if cataract then score is 1 and if normal then score is 0
  getStatus(probability) {
    if (probability >= .5) {
      return "Normal";
    } else {
      return "Cataract";
    }
  }

  // function to convert probability to score out of 20 in int

  getScore(probability) {
    return getScoreFromPercentage(probability * 100).round();
  }

  getScoreFromPercentage(percentage) {
    if (percentage >= 90) {
      return 20;
    } else if (percentage >= 80) {
      return 18;
    }
    if (percentage >= 70) {
      return 16;
    } else if (percentage >= 60) {
      return 14;
    }
    if (percentage >= 50) {
      return 12;
    } else if (percentage >= 40) {
      return 10;
    }
    if (percentage >= 30) {
      return 8;
    } else if (percentage >= 20) {
      return 6;
    }
    if (percentage >= 10) {
      return 4;
    } else if (percentage >= 5) {
      return 2;
    } else {
      return 0;
    }
  }

  Future<num> predictCataract(XFile? eyeImage) async {
    var res; 
    // = await _patientEyeScanRepository.getCataractPrediction(eyeImage: eyeImage);

    if (res == null) {
      log("Timeout Called" + res.toString());
      return -1;
    }

    Map<String, dynamic>.from(res).isEmpty
        ? log("Error Occured")
        : res = Map<String, num>.from(res);
    return res["probability"];
  }
}
