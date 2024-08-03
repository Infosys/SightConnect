import 'package:eye_care_for_all/services/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalProvider = ChangeNotifierProvider((ref) => GlobalProvider());

enum VisionAcuityMode { STANDALONE, TRIAGE, UPDATE, CATARACT, RED_EYE }

class GlobalProvider extends ChangeNotifier {
  VisionAcuityMode _vaMode = VisionAcuityMode.STANDALONE;

  VisionAcuityMode get vaMode => _vaMode;

  set setVAMode(VisionAcuityMode data) {
    _vaMode = data;
  }

  bool isRedEyeMode() => _vaMode == VisionAcuityMode.RED_EYE;

  bool isCatartactMode() => _vaMode == VisionAcuityMode.CATARACT;

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

  late double _textScaleFactorMemo;

  double get textScaleFactor => _textScaleFactor;

  String get scaleAlphabet => _scaleAlphabet;

  GlobalTextScaleFactor(this._textScaleFactor) {
    _textScaleFactorMemo = _textScaleFactor;
  }

  Future<void> setTextScaleFactor(double data,
      {bool shouldUpdateMemo = false}) async {
    _textScaleFactor = data;
    await SharedPreferenceService.setFontScale(data);
    if (shouldUpdateMemo) {
      _textScaleFactorMemo = data;
    }
    notifyListeners();
  }

  Future<void> rollback() async {
    setTextScaleFactor(_textScaleFactorMemo, shouldUpdateMemo: true);
  }

  Future<void> persistChanges() async {
    setTextScaleFactor(_textScaleFactor, shouldUpdateMemo: true);
  }
}
