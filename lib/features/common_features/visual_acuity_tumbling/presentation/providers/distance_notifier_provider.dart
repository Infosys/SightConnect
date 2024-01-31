import 'dart:math';

import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var distanceNotifierProvider =
    ChangeNotifierProvider((ref) => DistanceNotifier());

class DistanceNotifier extends ChangeNotifier {
  int _currentDistance = 0;
  final int _maxDistance = 45;
  final int _minDistance = 35;
  final int _doctorRecommendedDistance = 40;
  bool _toastShown = true;
  int get doctorRecommendedDistance => _doctorRecommendedDistance;
  bool get toastShown => _toastShown;

  set toastShown(bool value) {
    _toastShown = value;
    notifyListeners();
  }

  set distance(int value) {
    _currentDistance = value;
    notifyListeners();
  }

  bool isDistanceValid() {
    return _currentDistance <= _maxDistance && _currentDistance >= _minDistance;
  }

  String getDistanceText(BuildContext context) {
    if (_currentDistance < 35) {
      return context.loc?.visualAcuityTestDistanceInstructionTooClose ?? "";
    } else if (_currentDistance > 45) {
      return context.loc?.visualAcuityTestDistanceInstructionTooFar ?? "";
    }
    return "";
  }
}
