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

var globalTextScaleFactorProvider =
    ChangeNotifierProvider((ref) => GlobalTextScaleFactor());

class GlobalTextScaleFactor extends ChangeNotifier {
  double _textScaleFactor = 1.0;
  String _scaleAlphabet = "A";

  double get textScaleFactor => _textScaleFactor;
  String get scaleAlphabet => _scaleAlphabet;

  void setTextScaleFactor(String data) {
    switch (data) {
      case "A":
        _textScaleFactor = 1.0;
        _scaleAlphabet = "A";

        break;
      case "-A":
        _textScaleFactor = 0.8;
        _scaleAlphabet = "-A";

        break;
      case "+A":
        _textScaleFactor = 1.2;
        _scaleAlphabet = "+A";

        break;
      default:
        _textScaleFactor = 1.0;
        _scaleAlphabet = "A";
        break;
    }
    notifyListeners();
  }
}
