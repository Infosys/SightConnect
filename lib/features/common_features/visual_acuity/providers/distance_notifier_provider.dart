import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var distanceNotifierProvider =
    ChangeNotifierProvider((ref) => DistanceNotifier());

class DistanceNotifier extends ChangeNotifier {
  int _currentDistance = 0;
  int _currentLongDistance = 0;
  final int _maxDistance = 45;
  final int _minDistance = 35;
  final int _maxLongDistance = 1000;
  final int _minLongDistance = 0;
  final int _doctorRecommendedDistance = 40;
  final int _doctorRecommendedLongDistance = 200;
  bool _toastShown = true;
  int get doctorRecommendedDistance => _doctorRecommendedDistance;
  int get doctorRecommendedLongDistance => _doctorRecommendedLongDistance;
  bool get toastShown => _toastShown;

  set toastShown(bool value) {
    _toastShown = value;
    notifyListeners();
  }

  set distance(int value) {
    _currentDistance = value;
    notifyListeners();
  }

  set longDistance(int value) {
    _currentLongDistance = value;
    notifyListeners();
  }

  bool isDistanceValid() {
    if (_currentDistance == 0) {
      return false;
    } else {
      final value =
          _currentDistance <= _maxDistance && _currentDistance >= _minDistance;

      return value;
    }
  }

  bool isLongDistanceValid() {
    final value = _currentLongDistance <= _maxLongDistance &&
        _currentLongDistance >= _minLongDistance;

    return value;
  }

  String getDistanceText(BuildContext context) {
    if (_currentDistance == 0) {
      return "No face Detected, Please face the camera 40cm from the screen.";
    } else {
      if (_currentDistance < _minDistance) {
        return context.loc?.visualAcuityTestDistanceInstructionTooClose ?? "";
      } else if (_currentDistance > _maxDistance) {
        return context.loc?.visualAcuityTestDistanceInstructionTooFar ?? "";
      }
      return "";
    }
  }

  String getLongDistanceText(BuildContext context) {
    if (_currentLongDistance < _minLongDistance) {
      return context.loc?.visualAcuityTestDistanceInstructionTooClose ?? "";
    } else if (_currentLongDistance > _maxLongDistance) {
      return context.loc?.visualAcuityTestDistanceInstructionTooFar ?? "";
    }
    return "";
  }
}
