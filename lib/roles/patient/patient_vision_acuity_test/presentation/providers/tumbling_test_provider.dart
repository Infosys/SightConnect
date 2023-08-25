import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var tumblingTestProvider = ChangeNotifierProvider<TumblingTestProvider>(
  (ref) => TumblingTestProvider(),
);

class TumblingTestProvider extends ChangeNotifier {
  bool _overlay = true;
  TumblingTestProvider();

  bool get overlay => _overlay;
  toggleOverlay() {
    _overlay = !_overlay;
    notifyListeners();
  }
}
