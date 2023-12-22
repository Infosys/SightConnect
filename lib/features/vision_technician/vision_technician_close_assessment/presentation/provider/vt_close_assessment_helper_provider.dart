import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/visual_acuity_tumbling/domain/models/enums/tumbling_enums.dart';

var vtCloseAssessmentHelperProvider = ChangeNotifierProvider(
  (ref) => VTCloseAssessmentHelperNotifier(),
);

class VTCloseAssessmentHelperNotifier extends ChangeNotifier {
  int _currentStep = 0;
  Eye _currentEye = Eye.left;
  bool _isImageCaptured = false;
  bool _allImagesCaptured = false;
  String _imagePath = "";
  XFile _leftEyeImage = XFile("");
  XFile _rightEyeImage = XFile("");
  XFile _bothEyeImage = XFile("");
  bool _spectacles = false;
  bool _cataractSurgery = false;
  bool _eyeDrops = false;
  bool _oralMedication = false;
  TextEditingController _recommendationsController = TextEditingController();
  TextEditingController _mrCodeController = TextEditingController();
  List _listOfEyeDrops = [];
  List _listOfOralMedication = [];

  int get currentStep => _currentStep;
  bool get isImageCaptured => _isImageCaptured;
  bool get allImagesCaptured => _allImagesCaptured;
  String get imagePath => _imagePath;
  Eye get currentEye => _currentEye;
  XFile get leftEyeImage => _leftEyeImage;
  XFile get rightEyeImage => _rightEyeImage;
  XFile get bothEyeImage => _bothEyeImage;
  bool get spectacles => _spectacles;
  bool get cataractSurgery => _cataractSurgery;
  bool get eyeDrops => _eyeDrops;
  bool get oralMedication => _oralMedication;
  TextEditingController get recommendationsController =>
      _recommendationsController;
  TextEditingController get mrCodeController => _mrCodeController;

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

  void retakePicture() {
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

  void setSolution(String solution) {
    if (solution.contains('spectacles')) {
      _spectacles = !_spectacles;
    } else if (solution.contains("cataract")) {
      _cataractSurgery = !_cataractSurgery;
    } else if (solution.contains("eye")) {
      _eyeDrops = !_eyeDrops;
    } else {
      _oralMedication = !_oralMedication;
    }
  }

  void submit(VTPatientDto patientDetails) {
    
  }
}
