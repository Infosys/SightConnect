import 'package:device_info_plus/device_info_plus.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

class IOSDeviceInfoService {
  static late final DeviceInfoPlugin _deviceInfoPlugin;
  static late final String? _iosDeviceName;
  static final Map<String, double> iosDevicesWithScaleFactor = {
    "iPhone 11": 3,
    "iPhone 11 Pro": 3,
    "iPhone 11 Pro Max": 3,
    "iPhone 12": 3,
    "iPhone 12 mini": 3,
    "iPhone 12 Pro": 3,
    "iPhone 12 Pro Max": 3,
    "iPhone 13": 3,
    "iPhone 13 mini": 3,
    "iPhone 13 Pro": 3,
    "iPhone 13 Pro Max": 3,
    "iPhone 14": 3,
    "iPhone 14 Plus": 3,
    "iPhone 14 Pro": 3,
    "iPhone 14 Pro Max": 3,
    "iPhone 15": 3,
    "iPhone 15 Plus": 3,
    "iPhone 15 Pro": 3,
    "iPhone 15 Pro Max": 3,
    "iPhone (1st generation)": 3,
    "iPhone 3G": 3,
    "iPhone 3GS": 3,
    "iPhone 4": 3,
    "iPhone 4S": 3,
    "iPhone 5": 3,
    "iPhone 5C": 3,
    "iPhone 5S": 3,
    "iPhone 6": 3,
    "iPhone 6 Plus": 3,
    "iPhone 6S": 3,
    "iPhone 6S Plus": 3,
    "iPhone 7": 3,
    "iPhone 7 Plus": 3,
    "iPhone 8": 3,
    "iPhone 8 Plus": 3,
    "iPhone SE (1st generation)": 3,
    "iPhone SE (2nd generation)": 3,
    "iPhone SE (3rd generation)": 3,
    "iPhone X": 3,
    "iPhone XR": 3,
    "iPhone XS": 3,
    "iPhone XS Max": 3,
  };
  IOSDeviceInfoService._();

  static void init() {
    _deviceInfoPlugin = DeviceInfoPlugin();
    _getIOSDeviceInfo();
  }

  static void _getIOSDeviceInfo() async {
    try {
      IosDeviceInfo iosDeviceInfo = await _deviceInfoPlugin.iosInfo;
      _iosDeviceName = iosDeviceInfo.name;
      logger.d(_iosDeviceName);
    } catch (e) {
      _iosDeviceName = null;
      logger.d(e);
    }
  }

  static double getOptoTypeScaleFactor(BuildContext context) {
    if (context.platform == TargetPlatform.android) {
      return 1;
    }
    if (_iosDeviceName != null) {
      return iosDevicesWithScaleFactor[_iosDeviceName!] ?? 1;
    } else {
      return 1;
    }
  }
}
