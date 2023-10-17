import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_response.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class PatientTriageEyeScanProvider with ChangeNotifier {
  XFile? _leftEyeImage;
  XFile? _rightEyeImage;

  XFile? get leftEyeImage => _leftEyeImage;
  XFile? get rightEyeImage => _rightEyeImage;

  void setLeftEyeImage(XFile image) {
    _leftEyeImage = image;
    notifyListeners();
  }

  void setRightEyeImage(XFile image) {
    _rightEyeImage = image;
    notifyListeners();
  }

  void printImage() {
    logger.d([
      _leftEyeImage!.path,
      _rightEyeImage!.path,
    ]);
  }
}

var patientTriageEyeScanProvider =
    ChangeNotifierProvider((ref) => PatientTriageEyeScanProvider());
