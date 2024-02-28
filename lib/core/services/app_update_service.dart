import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_update/in_app_update.dart';

import '../../main.dart';

var appUpdateServiceProvider =
    ChangeNotifierProvider((ref) => AppUpdateService());

class AppUpdateService extends ChangeNotifier {
  Future<void> checkForUpdate() async {
    InAppUpdate.checkForUpdate().then((info) {
      if (info.updateAvailability == UpdateAvailability.updateAvailable) {
        logger.d('update available');
        logger.f("app version is : ${info.availableVersionCode}");
        update(info);
      } else {
        logger.d("update not available");
      }
    }).catchError((e) {
      logger.d("Error while checking for update: $e");
    });
  }

  void update(AppUpdateInfo info) async {
    logger.d('Updating');

    await InAppUpdate.performImmediateUpdate().then((value) {
      if (info.installStatus != InstallStatus.installed) {
        SystemNavigator.pop();
      }
    }).catchError((e) {
      logger.e(e.toString());
    });
  }
}
