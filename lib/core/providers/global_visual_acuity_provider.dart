import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';

var globalVisualAcuityProvider = ChangeNotifierProvider((ref) {
  return GlobalVisualAcuityProvider();
});

class GlobalVisualAcuityProvider extends ChangeNotifier {
  bool _isShortDistanceTest = true;
  bool _isThreeMeter = true;
  int? _dignosticReportID;
  bool _optoIsThreeMeters = true;

  //////////////////////////////////////////////////////////

  bool get isShortDistanceTest => _isShortDistanceTest;
  int get dignosticReportID => _dignosticReportID!;
  bool get isThreeMeter => _isThreeMeter;
  bool get optoIsThreeMeters => _optoIsThreeMeters;

  /////////////////////////////////////////////////////////

  void setOptoIsThreeMeters(bool value) {
    _optoIsThreeMeters = value;
    notifyListeners();
  }

  void setDiagnosticReportID(int value) {
    _dignosticReportID = value;
    notifyListeners();
  }

  void setThreeMeter(bool value) {
    _isThreeMeter = value;
    notifyListeners();
  }

  void setShortDistanceTest(bool value) {
    _isShortDistanceTest = value;
    logger.d("Distance type of test is : ${value ? "Short" : "Long"}");
    notifyListeners();
  }
}
