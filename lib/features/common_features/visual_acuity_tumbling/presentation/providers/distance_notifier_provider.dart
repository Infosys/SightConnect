import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var distanceNotifierProvider =
    ChangeNotifierProvider((ref) => DistanceNotifier());

class DistanceNotifier extends ChangeNotifier {
  int _distance = 0;
  final int _maxDistance = 45;
  final int _minDistance = 35;

  int get distance => _distance;

  set distance(int value) {
    _distance = value;
    notifyListeners();
  }

  bool isDistanceValid() {
    return _distance <= _maxDistance && _distance >= _minDistance;
  }

  String getDistanceText(BuildContext context) {
    if (_distance <= 45 && _distance >= 35) {
      return context.loc?.visualAcuityTestDistanceInstruction ?? "";
    } else if (_distance < 35) {
      return context.loc?.visualAcuityTestDistanceInstructionTooClose ?? "";
    } else {
      return context.loc?.visualAcuityTestDistanceInstructionTooFar ?? "";
    }
  }
}
