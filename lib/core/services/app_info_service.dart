import 'package:eye_care_for_all/main.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfoService {
  static PackageInfo? _packageInfo;

  static String get appName => _packageInfo?.appName ?? '';
  static String get version =>
      "${_packageInfo?.version ?? ''}+${_packageInfo?.buildNumber ?? ''}";
  static String get buildNumber => _packageInfo?.buildNumber ?? '';

  static Future<void> init() async {
    try {
      _packageInfo = await PackageInfo.fromPlatform();
      logger.d("version code is : ${_packageInfo?.buildNumber}, and version name is : ${_packageInfo?.version}");
    } catch (e) {
      logger.e(e);
    }
  }
}
