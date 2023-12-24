import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screen_brightness/screen_brightness.dart';

var accessibilityProvider = ChangeNotifierProvider(
  (ref) => AccessibilityProvider(),
);

class AccessibilityProvider extends ChangeNotifier {
  double _brightness = 80.0;
  double _defaultBrightness = 0.0;
  double _threshold = 60.0;
  int _serverThreshold = 60;
  AccessibilityProvider() {
    _currentBrightness();
  }

  double get brightness => _brightness;
  double get defaultBrightness => _defaultBrightness;
  double get threshold => _threshold;
  int get serverThreshold => _serverThreshold;

  void _currentBrightness() async {
    _defaultBrightness = await ScreenBrightness().current;
    notifyListeners();
  }

  void setThreshold(double threshold) {
    _threshold = threshold;
    notifyListeners();
  }

  void setServerThreshold(int threshold) {
    _serverThreshold = threshold;
    notifyListeners();
  }

  Future<void> setBrightness(double brightness) async {
    _brightness = brightness;
    notifyListeners();
    await screenBrightness(brightness / 100);
  }

  Future<void> screenBrightness(double brightness) async {
    try {
      await ScreenBrightness().setScreenBrightness(brightness);
    } catch (e) {
      logger.d(e.toString());
      throw 'Failed to set brightness';
    }
  }

  Future<void> resetBrightness(double brightness) async {
    try {
      await ScreenBrightness().setScreenBrightness(brightness);
    } catch (e) {
      logger.d(e.toString());
      throw 'Failed to set brightness';
    }
  }

  void reset() {
    _brightness = 80.0;
    _threshold = 60.0;
    _serverThreshold = 60;
    resetBrightness(0.8);
    notifyListeners();
  }
}
