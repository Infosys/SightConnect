import 'package:device_info_plus/device_info_plus.dart';
import 'package:eye_care_for_all/main.dart';

class IOSDeviceInfoService {
  static late final DeviceInfoPlugin _deviceInfoPlugin;
  static late final String? _iosDeviceName;
  static final Map<String, double> iosDevicesWithPPI = {
    "iPhone 11": 326,
    "iPhone 11 Pro": 458,
    "iPhone 11 Pro Max": 458,
    "iPhone 12": 460,
    "iPhone 12 mini": 476,
    "iPhone 12 Pro": 460,
    "iPhone 12 Pro Max": 458,
    "iPhone 13": 460,
    "iPhone 13 mini": 476,
    "iPhone 13 Pro": 460,
    "iPhone 13 Pro Max": 458,
    "iPhone 14": 460,
    "iPhone 14 Plus": 458,
    "iPhone 14 Pro": 460,
    "iPhone 14 Pro Max": 460,
    "iPhone 15": 460,
    "iPhone 15 Plus": 460,
    "iPhone 15 Pro": 460,
    "iPhone 15 Pro Max": 460,
    "iPhone (1st generation)": 163,
    "iPhone 3G": 163,
    "iPhone 3GS": 163,
    "iPhone 4": 326,
    "iPhone 4S": 326,
    "iPhone 5": 326,
    "iPhone 5C": 326,
    "iPhone 5S": 326,
    "iPhone 6": 326,
    "iPhone 6 Plus": 401,
    "iPhone 6S": 326,
    "iPhone 6S Plus": 401,
    "iPhone 7": 326,
    "iPhone 7 Plus": 401,
    "iPhone 8": 326,
    "iPhone 8 Plus": 401,
    "iPhone SE (1st generation)": 326,
    "iPhone SE (2nd generation)": 326,
    "iPhone SE (3rd generation)": 326,
    "iPhone X": 458,
    "iPhone XR": 326,
    "iPhone XS": 458,
    "iPhone XS Max": 458,
  };
  IOSDeviceInfoService._();

  String? get iosDeviceName => _iosDeviceName;

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

  static double getOptoTypeSize(double size) {
    if (_iosDeviceName == null) {
      return size;
    }
    if (isDevicePPIAvailable(_iosDeviceName!)) {
      return cmToPixel(size, iosDevicesWithPPI[_iosDeviceName!]!);
    }
    return size;
  }

  static bool isDevicePPIAvailable(String currentDevice) {
    for (var deviceName in iosDevicesWithPPI.keys) {
      if (currentDevice
          .trim()
          .toLowerCase()
          .contains(deviceName.trim().toLowerCase())) {
        return true;
      }
    }
    return false;
  }

  static cmToPixel(double sizeInCm, double ppi) {
    var inches = sizeInCm / 2.54;
    var logicalPixel = inches * ppi;
    logger.d({
      "sizeInCm": sizeInCm,
      "ppi": ppi,
      "inches": inches,
      "logicalPixel": logicalPixel,
      "rad": (sizeInCm * ppi) / 2.54 * 0.5,
    });
    return logicalPixel;
  }
}
