import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/data/models/tumbling_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionTechnicianEyeScanProvider = ChangeNotifierProvider(
  (ref) => VisionTechnicianEyeScanNotifier(),
);

class VisionTechnicianEyeScanNotifier extends ChangeNotifier {
  int _currentStep = 0;

  Eye _currentEye = Eye.left;
  bool _isImageCaptured = false;
  bool _allImagesCaptured = false;
  String _imagePath = "";
  XFile _leftEyeImage = XFile("");
  XFile _rightEyeImage = XFile("");
  XFile _bothEyeImage = XFile("");

  get currentStep => _currentStep;
  get isImageCaptured => _isImageCaptured;
  get allImagesCaptured => _allImagesCaptured;
  get imagePath => _imagePath;
  get currentEye => _currentEye;
  get leftEyeImage => _leftEyeImage;
  get rightEyeImage => _rightEyeImage;
  get bothEyeImage => _bothEyeImage;

  void goToNextStep() {
    _currentStep = _currentStep + 1;
    if (_currentEye == Eye.left) {
      _currentEye = Eye.right;
    } else if (_currentEye == Eye.right) {
      _currentEye = Eye.both;
    }
    _isImageCaptured = false;
    _imagePath = "";

    notifyListeners();
  }

  void markAllImagesCaptured() {
    _allImagesCaptured = true;
    notifyListeners();
  }

  void retakePicture(){
    _isImageCaptured = false;
    _imagePath = "";
    notifyListeners();
  }

  void goToPreviousStep() {
    _currentStep = _currentStep - 1;
    if (_currentEye == Eye.both) {
      _currentEye = Eye.right;
    } else if (_currentEye == Eye.right) {
      _currentEye = Eye.left;
    }
    _isImageCaptured = false;
    _imagePath = "";
    notifyListeners();
  }

  void saveImage(XFile image) {
    _isImageCaptured = true;
    _imagePath = image.path;
    if (_currentEye == Eye.left) {
      _leftEyeImage = image;
    } else if (_currentEye == Eye.right) {
      _rightEyeImage = image;
    } else if (_currentEye == Eye.both) {
      _bothEyeImage = image;
    }
    notifyListeners();
  }
}
