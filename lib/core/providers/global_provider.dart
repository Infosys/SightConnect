import 'package:eye_care_for_all/core/services/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalProvider = ChangeNotifierProvider((ref) => GlobalProvider());

enum VisionAcuityMode { STANDALONE, TRIAGE, UPDATE }

class GlobalProvider extends ChangeNotifier {
  VisionAcuityMode _vaMode = VisionAcuityMode.STANDALONE;

  VisionAcuityMode get vaMode => _vaMode;

  set setVAMode(VisionAcuityMode data) {
    _vaMode = data;
  }

  bool isTriageMode() => _vaMode == VisionAcuityMode.TRIAGE;
  bool isStandaloneMode() => _vaMode == VisionAcuityMode.STANDALONE;
  bool isUpdateMode() => _vaMode == VisionAcuityMode.UPDATE;
}

var globalTextScaleFactorProvider = ChangeNotifierProvider(
  (ref) {
    final defaultScaleFactor = SharedPreferenceService.getFontScale;
    return GlobalTextScaleFactor(defaultScaleFactor);
  },
);

class GlobalTextScaleFactor extends ChangeNotifier {
  double _textScaleFactor = 1.0;
  final String _scaleAlphabet = "A";

  double get textScaleFactor => _textScaleFactor;
  String get scaleAlphabet => _scaleAlphabet;

  GlobalTextScaleFactor(this._textScaleFactor);

  Future<void> setTextScaleFactor(double data) async {
    _textScaleFactor = data;
    await SharedPreferenceService.setFontScale(data);
    notifyListeners();
  }
}
