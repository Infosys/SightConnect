import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GlobalVTAvailabilityProvider extends ChangeNotifier {
  bool _isAvailable = false;
  bool _isTemporarilyAvailable = false;

  bool get isAvailable => _isAvailable;
  bool get isTemporarilyAvailable => _isTemporarilyAvailable;

  void setAvailability(bool isAvailable) {
    _isAvailable = isAvailable;
    notifyListeners();
  }

  void setTemporarilyAvailable(bool isTemporarilyUnavailable) {
    _isTemporarilyAvailable = isTemporarilyUnavailable;
    notifyListeners();
  }
}

var globalVTAvailabilityProvider =
    ChangeNotifierProvider.autoDispose((ref) => GlobalVTAvailabilityProvider());
