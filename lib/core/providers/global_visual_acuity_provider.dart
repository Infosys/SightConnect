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

  //////////////////////////////////////////////////////////

  bool get isShortDistanceTest => _isShortDistanceTest;
  int get dignosticReportID => _dignosticReportID!;
  bool get isThreeMeter => _isThreeMeter;


  /////////////////////////////////////////////////////////

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
