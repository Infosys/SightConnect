import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var distanceAcuityNotifierProvider =
    ChangeNotifierProvider((ref) => DistanceAcuityNotifier());

class DistanceAcuityNotifier extends ChangeNotifier {
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
    final value =
        _currentDistance <= _maxDistance && _currentDistance >= _minDistance;

    return value;
  }

  String getDistanceText(BuildContext context) {
    if (_currentDistance < _minDistance) {
      return context.loc?.visualAcuityTestDistanceInstructionTooClose ?? "";
    } else if (_currentDistance > _maxDistance) {
      return context.loc?.visualAcuityTestDistanceInstructionTooFar ?? "";
    }
    return "";
  }
}
