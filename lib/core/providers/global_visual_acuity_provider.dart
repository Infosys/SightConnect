import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';

var globalVisualAcuityProvider = ChangeNotifierProvider((ref) {
  return GlobalVisualAcuityProvider();
});

class GlobalVisualAcuityProvider extends ChangeNotifier {
  bool _isShortDistanceTest = true;
  bool get isShortDistanceTest => _isShortDistanceTest;

  void setDistanceTest(bool value) {
    _isShortDistanceTest = value;
    logger.d("Distance type of test is : ${value ? "Short" : "Long"}");
    notifyListeners();
  }
}
