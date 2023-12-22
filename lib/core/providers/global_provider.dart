import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalProvider = ChangeNotifierProvider((ref) => GlobalProvider());


class GlobalProvider extends ChangeNotifier {
  VisionAcuityMode _vaMode = VisionAcuityMode.STANDALONE;
  double _globalInitialTextScaleFactor = 1.0;

  double get globalInitialTextScaleFactor => _globalInitialTextScaleFactor;
  VisionAcuityMode get vaMode => _vaMode;

  set setGlobalInitialTextScaleFactor(double data) {
    _globalInitialTextScaleFactor = data;
  }

  set setVAMode(VisionAcuityMode data) {
    _vaMode = data;
  }

  bool isTriageMode() => _vaMode == VisionAcuityMode.TRIAGE;
  bool isStandaloneMode() => _vaMode == VisionAcuityMode.STANDALONE;
  bool isUpdateMode() => _vaMode == VisionAcuityMode.UPDATE;
}

var initialTextScaleFactor = 1.0;
var textScaleFactorProvider = StateProvider.autoDispose<double>(
  (ref) {
    return initialTextScaleFactor;
  },
);

enum VisionAcuityMode { STANDALONE, TRIAGE, UPDATE }
