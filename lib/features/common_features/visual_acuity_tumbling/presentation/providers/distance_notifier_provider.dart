import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var distanceNotifierProvider =
    ChangeNotifierProvider((ref) => DistanceNotifier());

class DistanceNotifier extends ChangeNotifier {
  int _distance = 0;

  int get distance => _distance;

  set distance(int value) {
    _distance = value;
    notifyListeners();
  }
}
