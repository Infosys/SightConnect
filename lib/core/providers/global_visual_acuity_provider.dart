import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';

var globalVisualAcuityProvider = ChangeNotifierProvider((ref) {
  return GlobalVisualAcuityProvider();
});

class GlobalVisualAcuityProvider extends ChangeNotifier {
  bool _isShortDistanceTest = true;
  bool get isShortDistanceTest => _isShortDistanceTest;

  String _distanceLeftEyeValue = "";
  String _distanceRightEyeValue = "";
  String _distanceBothEyeValue = "";

  String get distanceLeftEyeValue => _distanceLeftEyeValue;
  String get distanceRightEyeValue => _distanceRightEyeValue;
  String get distanceBothEyeValue => _distanceBothEyeValue;

  void setDistanceLeftEyeValue(String value) {
    _distanceLeftEyeValue = value;
    notifyListeners();
  }

  void setDistanceRightEyeValue(String value) {
    _distanceRightEyeValue = value;
    notifyListeners();
  }

  void setDistanceBothEyeValue(String value) {
    _distanceBothEyeValue = value;
    notifyListeners();
  }

  void setShortDistanceTest(bool value) {
    _isShortDistanceTest = value;
    logger.d("Distance type of test is : ${value ? "Short" : "Long"}");
    notifyListeners();
  }
}
