import 'package:eye_care_for_all/main.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfoService {
  AppInfoService._();

  static const String tollFreeNumber = "1800 1211 00411";
  static const String activateExotelNumber = "02249360005";
  static const String lvpeiEmail = "communications@lvpei.org";
  static String version = "1.0";
  // App Text Constants

  static PackageInfo? _packageInfo;
  static String get appName => _packageInfo?.appName ?? '';
  static String get appVersion =>
      "${_packageInfo?.version ?? ''}+${_packageInfo?.buildNumber ?? ''}";
  static String get buildNumber => _packageInfo?.buildNumber ?? '';

  static Future<void> init() async {
    try {
      _packageInfo = await PackageInfo.fromPlatform();
      logger.d(
          "version code is : ${_packageInfo?.buildNumber}, and version name is : ${_packageInfo?.version}");
    } catch (e) {
      logger.e(e);
    }
  }
}
