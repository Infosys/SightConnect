import 'dart:io';
import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/data/local/User_details_model.dart';
import 'package:eye_care_for_all/features/patient/patient_cataract_eye_scan/data/remote/patient_eye_scan_repository_impl.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import './../../data/local/fake_data_source_cataract.dart';

var patientEyeScanProvider = ChangeNotifierProvider.autoDispose(
  (ref) => EyeScanProvider(ref),
);

class EyeScanProvider extends ChangeNotifier {
  Ref ref;
  EyeScanProvider(this.ref);
  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  Eye _selectedEye = Eye.RIGHT_EYE;
  var previousReports = [];
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  setIsLoading() {
    _isLoading = !_isLoading;
    notifyListeners();
  }

  num? rightEyeProbability, leftEyeProbability;
  num? rightEyeScore, leftEyeScore;
  num? _leftRednessScore, _rightRednessScore;

  num? get rightEyeProbabilityValue => rightEyeProbability;
  num? get leftEyeProbabilityValue => leftEyeProbability;
  num? get rightEyeScoreValue => rightEyeScore;
  num? get leftEyeScoreValue => leftEyeScore;
  num? get leftRednessScore => _leftRednessScore;
  num? get rightRednessScore => _rightRednessScore;
  String? _leftRednessStatus, _rightRednessStatus;
  String? get leftRednessStatus => _leftRednessStatus;
  String? get rightRednessStatus => _rightRednessStatus;
  String? _leftEyeStatus, _rightEyeStatus;
  String? get leftEyeStatus => _leftEyeStatus;
  String? get rightEyeStatus => _rightEyeStatus;

  UserDetails? _userDetails;
  UserDetails? get userDetails => _userDetails;
  setUserDetails(userDetails) {
    _userDetails = userDetails;
    logger.d(_userDetails.toString());

    notifyListeners();
  }

  File? get leftEyeImage =>
      _leftEyeImage != null ? File(_leftEyeImage!.path) : null;
  File? get rightEyeImage =>
      _rightEyeImage != null ? File(_rightEyeImage!.path) : null;
  Eye get selectedEye => _selectedEye;

  List<String> generalAdvice = [
    "1. Make sure your eyeglasses or contact lenses are the most accurate prescription possible",
    "2. Use a magnifying glass to read if you need additional help reading",
    "3. Improve the lightning in your home with more or brighter lamps",
    "4. When you go outside during the day, wear sunglasses or a broad-brimmed hat to reduce glare",
    "5. Limit your night driving",
    "6. Consider sugery when vision deteriorates and starts affecting your daily activities"
  ];
  List<String> watchWhatYouEat = [
    "Nutrients that must be a part of your daily diet to support a good eye function :",
    "Vitamin A",
    "Vitamin C",
    "Vitamin E",
    "Vitamin B6, B9, B12",
    "Riboflavin",
    "Niacin"
  ];

  DateTime? _dateTime;
  String? _formatedDate, _formatedTime;
  String? get formatedDate => _formatedDate;
  String? get formatedTime => _formatedTime;

  processModel(BuildContext context) async {
    setIsLoading();

    final leftEyeProbability = await predictCataract(_leftEyeImage, context);
    final rightEyeProbability = await predictCataract(_rightEyeImage, context);

    if (leftEyeProbability.isEmpty || rightEyeProbability.isEmpty) {
      Fluttertoast.showToast(msg: "Couldn't detect eyes, try again");
      if (context.mounted) {
        Navigator.popUntil(context, (route) => route.isFirst);
      }
    }

    debugPrint("Left Eye Probability: ${leftEyeProbability.toString()}");
    debugPrint("Right Eye Probability: ${rightEyeProbability.toString()}");
    // _leftEyeDetected = false;
    // _rightEyeDetected = false;
    if (leftEyeProbability == -1) {
      _leftEyeStatus = "Cataract";
      leftEyeScore = 4;
    }
    if (rightEyeProbability == -1) {
      _rightEyeStatus = "Normal";
      rightEyeScore = 20;
    }

    double leftEyeMatureValue =
        leftEyeProbability['results']?[0]['mature'] ?? 0.0;
    double leftEyeNormalValue =
        leftEyeProbability['results']?[1]['normal'] ?? 0.0;
    double leftEyeRednessValue =
        leftEyeProbability['results']?[2]['redness'] ?? 0.0;

    double rightEyeMatureValue =
        rightEyeProbability['results']?[0]['mature'] ?? 0.0;
    double rightEyeNormalValue =
        rightEyeProbability['results']?[1]['normal'] ?? 0.0;
    double rightEyeRednessValue =
        rightEyeProbability['results']?[2]['redness'] ?? 0.0;

    if (leftEyeRednessValue < 0.5) {
      _leftRednessStatus = "Normal";
    } else if (leftEyeRednessValue > 0.5) {
      _leftRednessStatus = "Redness";
    }

    if (rightEyeRednessValue < 0.5) {
      _rightRednessStatus = "Normal";
    } else if (rightEyeRednessValue > 0.5) {
      _rightRednessStatus = "Redness";
    }

    _leftRednessScore = leftEyeRednessValue * 100;
    _rightRednessScore = rightEyeRednessValue * 100;

    if (leftEyeMatureValue < 0.5 && leftEyeNormalValue > 0.5) {
      _leftEyeStatus = "Normal";
    } else if (leftEyeMatureValue > 0.5 && leftEyeNormalValue < 0.5) {
      _leftEyeStatus = "Catract";
    }

    if (rightEyeMatureValue < 0.5 && rightEyeNormalValue > 0.5) {
      _rightEyeStatus = "Normal";
    } else if (rightEyeMatureValue > 0.5 && rightEyeMatureValue < 0.5) {
      _rightEyeStatus = "Catract";
    }

    if (_leftEyeStatus == "Normal") {
      leftEyeScore =
          double.parse((leftEyeNormalValue * 100).toStringAsFixed(2));
    } else if (_leftEyeStatus == "Catract") {
      leftEyeScore =
          double.parse((leftEyeMatureValue * 100).toStringAsFixed(2));
    }

    if (_rightEyeStatus == "Normal") {
      rightEyeScore =
          double.parse((rightEyeNormalValue * 100).toStringAsFixed(2));
    } else if (_rightEyeStatus == "Catract") {
      rightEyeScore =
          double.parse((rightEyeMatureValue * 100).toStringAsFixed(2));
    }

    // _leftEyeDetected = leftEyeProbability != -1;
    // _rightEyeDetected = rightEyeProbability != -1;
    // if (leftEyeProbability != -1 && rightEyeProbability != -1) {
    //   _leftEyeStatus = await getStatus(leftEyeProbability);
    //   _rightEyeStatus = await getStatus(rightEyeProbability);
    //   leftEyeScore = await getScore(leftEyeProbability);
    //   rightEyeScore = await getScore(rightEyeProbability);
    // }
    _dateTime = DateTime.now();
    _formatedDate = DateFormat('d MMMM, yyyy').format(_dateTime!);
    _formatedTime = DateFormat('h:mm a').format(_dateTime!);

    setIsLoading();
  }

  Future<Map<String, dynamic>> predictCataract(XFile? eyeImage, context) async {
    var res = await ref
        .read(patientEyeScanRepository)
        .getCataractPrediction(eyeImage: eyeImage);

    logger.d("res.runtimeType is ${res.toString()}");

    if (res["results"] == null ||
        res["results"].isEmpty ||
        res["message"] == "No eyes detected") {
      Fluttertoast.showToast(msg: "Error occurred: No eyes detected");
      Navigator.popUntil(context, (route) => route.isFirst);
    }
    // Map<String, List<Map<String, double>>>.from(res).isEmpty
    //     ? logger.d("Error Occured")
    //     : res = Map<String, num>.from(res);
    return res;
  }

  processKeratoconus() {
    setIsLoading();
    _dateTime = DateTime.now();
    _formatedDate = DateFormat('d MMMM, yyyy').format(_dateTime!);
    _formatedTime = DateFormat('h:mm a').format(_dateTime!);
    setIsLoading();
  }

  void setCurrentEye(eye) {
    _selectedEye = eye;
  }

  void setLeftEyeImage(XFile image) {
    _leftEyeImage = image;

    notifyListeners();
  }

  ScanType? _scanType;
  ScanType? get scanType => _scanType;

  getStatus(probability) {
    if (probability >= .5) {
      return "Normal";
    } else {
      return "Cataract";
    }
  }

  setScanType() {
    _scanType = ScanType.Cataract;
    // var age = int.parse(userDetails!.patientAge!);
    // if (age <= 25) {
    //   _scanType = ScanType.Keratoconus;
    // } else {
    //   _scanType = ScanType.Cataract;
    // }
    logger.d(_scanType.toString());
  }

  void setRightEyeImage(XFile image) {
    _rightEyeImage = image;
    _selectedEye = Eye.LEFT_EYE;
    notifyListeners();
  }

  void resetRightImage(eye) {
    _rightEyeImage = null;
    _selectedEye = eye;
    notifyListeners();
  }

  void resetLeftImage(eye) {
    _leftEyeImage = null;
    _selectedEye = eye;
    notifyListeners();
  }

  void resetImages() {
    _leftEyeImage = null;
    _rightEyeImage = null;
    notifyListeners();
  }

  String getEyeText() {
    return switch (_selectedEye) {
      Eye.RIGHT_EYE => "Right Eye",
      Eye.LEFT_EYE => "Left Eye",
      Eye.BOTH_EYES => "Both Eyes",
    };
  }

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
}
