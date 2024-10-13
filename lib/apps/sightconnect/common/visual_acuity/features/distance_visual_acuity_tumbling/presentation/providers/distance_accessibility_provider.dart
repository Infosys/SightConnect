/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screen_brightness/screen_brightness.dart';

var distanceAccessibilityProvider = ChangeNotifierProvider(
  (ref) => DistanceAccessibilityProvider(),
);

class DistanceAccessibilityProvider extends ChangeNotifier {
  final double _brightness = 0.0;
  double _threshold = 60.0;
  int _serverThreshold = 60;
  DistanceAccessibilityProvider();

  double get brightness => _brightness;
  double get threshold => _threshold;
  int get serverThreshold => _serverThreshold;

  void setThreshold(double threshold) {
    _threshold = threshold;
    notifyListeners();
  }

  void setServerThreshold(int threshold) {
    _serverThreshold = threshold;
    notifyListeners();
  }

  Future<void> setBrightness() async {
    try {
      await ScreenBrightness().setScreenBrightness(0.8);
    } catch (e) {
      logger.d(e.toString());
      throw 'Failed to set brightness';
    }
    notifyListeners();
  }

  Future<void> resetBrightness() async {
    try {
      await ScreenBrightness().resetScreenBrightness();
    } catch (e) {
      logger.d(e.toString());
    }
  }
}
