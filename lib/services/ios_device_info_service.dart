// import 'package:device_info_plus/device_info_plus.dart';
// import 'package:eye_care_for_all/main.dart';
// import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';
// import 'package:flutter/material.dart';

// class IOSDeviceInfoService {
//   static late final DeviceInfoPlugin _deviceInfoPlugin;
//   static late final String? _iosDeviceName;
//   static final Map<String, double> iosDevicesWithScaleFactor = {
//     "iPhone XS Max": 3,
//     "iPhone XS": 3,
//     "iPhone X": 3,
//     "iPhone 8 Plus": 3,
//     "iPhone 7 Plus": 3,
//     "iPhone 6s Plus": 3,
//     "iPhone 6 Plus": 3,
//     "iPhone 15 Pro Max": 3,
//     "iPhone 15 Pro": 3,
//     "iPhone 15 Plus": 3,
//     "iPhone 15": 3,
//     "iPhone 14 Pro Max": 3,
//     "iPhone 14 Pro": 3,
//     "iPhone 14 Plus": 3,
//     "iPhone 14": 3,
//     "iPhone 13 Pro Max": 3,
//     "iPhone 13 Pro": 3,
//     "iPhone 13 mini": 3,
//     "iPhone 13": 3,
//     "iPhone 12 Pro Max": 3,
//     "iPhone 12 Pro": 3,
//     "iPhone 12 mini": 3,
//     "iPhone 12": 3,
//     "iPhone 11 Pro Max": 3,
//     "iPhone 11 Pro": 3,
//     "iPhone XR": 2,
//     "iPhone SE 3rd gen": 2,
//     "iPhone SE 2nd gen": 2,
//     "iPhone SE 1st gen": 2,
//     "iPhone 8": 2,
//     "iPhone 7": 2,
//     "iPhone 6s": 2,
//     "iPhone 6": 2,
//     "iPhone 5S": 2,
//     "iPhone 5C": 2,
//     "iPhone 5": 2,
//     "iPhone 4S": 2,
//     "iPhone 4": 2,
//     "iPhone 11": 2,
//     "iPhone 3GS": 2,
//     "iPhone 3G": 1,
//     "iPhone 1st gen": 1,
//   };
//   IOSDeviceInfoService._();

//   static Future<void> init() async {
//     _deviceInfoPlugin = DeviceInfoPlugin();
//     await _getIOSDeviceInfo();
//   }

//   static Future<void> _getIOSDeviceInfo() async {
//     try {
//       IosDeviceInfo iosDeviceInfo = await _deviceInfoPlugin.iosInfo;
//       _iosDeviceName = iosDeviceInfo.name;
//       logger.d({
//         "message": "iOS device info",
//         "deviceName": _iosDeviceName,
//       });
//     } catch (e) {
//       _iosDeviceName = null;
//       logger.d({
//         "message": "Error getting iOS device info",
//         "error": e.toString(),
//       });
//     }
//   }

//   static double getOptoTypeScaleFactor(BuildContext context) {
//     if (context.platform == TargetPlatform.android) {
//       return 1;
//     }
//     if (_iosDeviceName != null) {
//       return iosDevicesWithScaleFactor[_iosDeviceName!] ?? 1;
//     } else {
//       return 1;
//     }
//   }
// }
