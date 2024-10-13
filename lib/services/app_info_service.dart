/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/env.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfoService {
  AppInfoService._();

  static String tollFreeNumber = Env.tollFreeNumber;
  static String activateExotelNumber = Env.activateExotelNumber;
  static String lvpeiEmail = Env.lvpeiEmail;
  static String appEmail = Env.appEmail;

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
