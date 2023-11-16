import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalProvider = ChangeNotifierProvider((ref) => GlobalProvider());

class GlobalProvider extends ChangeNotifier {
  bool _hideTumblingElement = false;
  double _globalInitialTextScaleFactor = 1.0;

  double get globalInitialTextScaleFactor => _globalInitialTextScaleFactor;
  bool get hideTumblingElement => _hideTumblingElement;

  set setGlobalInitialTextScaleFactor(double data) {
    _globalInitialTextScaleFactor = data;
  }

  set setHideTumblingElement(bool data) {
    _hideTumblingElement = data;
  }
}

var initialTextScaleFactor = 1.0;
var textScaleFactorProvider = StateProvider.autoDispose<double>(
  (ref) {
    return initialTextScaleFactor;
  },
);
