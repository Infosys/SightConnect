import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var globalProvider = ChangeNotifierProvider((ref) => GlobalProvider());

class GlobalProvider extends ChangeNotifier {
  bool _isShowTumbling = false;
  double _globalInitialTextScaleFactor = 1.0;

  double get globalInitialTextScaleFactor => _globalInitialTextScaleFactor;
  bool get isShowTumbling => _isShowTumbling;

  set setGlobalInitialTextScaleFactor(double data) {
    _globalInitialTextScaleFactor = data;
    notifyListeners();
  }
 set isShowTumbling(bool data) {
    _isShowTumbling = data;
    notifyListeners();
  }

}

var toggleTumblingResultPage = StateProvider((ref) => false);

var initialTextScaleFactor = 1.0;
var textScaleFactorProvider = StateProvider.autoDispose<double>(
  (ref) {
    return initialTextScaleFactor;
  },
);
