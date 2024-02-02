import 'package:camera/camera.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/enums/vt_close_assessment_enums.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/visual_acuity_tumbling/domain/models/enums/tumbling_enums.dart';

var vtCloseAssessmentHelperProvider = ChangeNotifierProvider.autoDispose(
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
  bool _loading = false;
  final TextEditingController _recommendationsController =
      TextEditingController();
  final TextEditingController _mrCodeController = TextEditingController();
  final List<GoalOutCome> _goalOutComeList = GoalOutCome.values;
  Set<GoalOutCome> _selectedGoalOutComeList = {};
  List<CameraDescription>? availableCameras;

  int get currentStep => _currentStep;
  bool get isImageCaptured => _isImageCaptured;
  bool get allImagesCaptured => _allImagesCaptured;
  String get imagePath => _imagePath;
  Eye get currentEye => _currentEye;
  XFile get leftEyeImage => _leftEyeImage;
  XFile get rightEyeImage => _rightEyeImage;
  XFile get bothEyeImage => _bothEyeImage;
  bool get loading => _loading;
  TextEditingController get recommendationsController =>
      _recommendationsController;
  TextEditingController get mrCodeController => _mrCodeController;
  List<GoalOutCome> get goalOutComeList => _goalOutComeList;
  Set<GoalOutCome> get selectedGoalOutComeList => _selectedGoalOutComeList;
  VTCloseAssessmentHelperNotifier() {
    _selectedGoalOutComeList = {};
  }

  void setAvailableCameras(List<CameraDescription> cameras) {
    availableCameras = cameras;
    notifyListeners();
  }

  void setMrCode(String value) {
    _mrCodeController.text = value;
    notifyListeners();
  }



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

  void setSolution(GoalOutCome solution) {
    if (_selectedGoalOutComeList.contains(solution)) {
      _selectedGoalOutComeList.remove(solution);
    } else {
      _selectedGoalOutComeList.add(solution);
    }

    logger.d(_selectedGoalOutComeList);
  }

  void setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }
}
