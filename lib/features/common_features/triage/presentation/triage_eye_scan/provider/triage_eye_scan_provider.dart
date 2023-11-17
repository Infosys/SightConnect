import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/pages/eyes_capture_triage_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum TriageEye { RIGHT_EYE, LEFT_EYE }

class TriageEyeScanProvider with ChangeNotifier {
  TriageEye _currentEye = TriageEye.RIGHT_EYE;

  XFile? _leftEyeImage;
  XFile? _rightEyeImage;

  XFile? get leftEyeImage => _leftEyeImage;
  XFile? get rightEyeImage => _rightEyeImage;
  TriageEye get currentEye => _currentEye;

  void setLeftEyeImage(XFile image) {
    _leftEyeImage = image;
    notifyListeners();
  }

  void setRightEyeImage(XFile image) {
    _rightEyeImage = image;
    notifyListeners();
  }

  void setCurrentEye(TriageEye eye) {
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
}

var triageEyeScanProvider =
    ChangeNotifierProvider((ref) => TriageEyeScanProvider());
