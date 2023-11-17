import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import './../../data/local/fake_data_source_cataract.dart';

var patientEyeScanProvider = ChangeNotifierProvider.autoDispose(
  (ref) => EyeScanProvider(),
);

class EyeScanProvider extends ChangeNotifier {
  EyeScanProvider();
  XFile? _leftEyeImage;
  XFile? _rightEyeImage;
  Eye _selectedEye = Eye.RIGHT_EYE;
  var previousReports = [];

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

  void setCurrentEye(eye) {
    _selectedEye = eye;
  }

  void setLeftEyeImage(XFile image) {
    _leftEyeImage = image;

    notifyListeners();
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
}
