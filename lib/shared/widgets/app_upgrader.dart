/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/api_constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class AppUpgrader extends StatelessWidget {
  const AppUpgrader({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (kIsWeb || kDebugMode) {
      return child;
    }
    return UpgradeAlert(
      dialogStyle: UpgradeDialogStyle.cupertino,
      showIgnore: (kDebugMode || ApiConstant.isDev) ? true : false,
      showLater: (kDebugMode || ApiConstant.isDev) ? true : false,
      shouldPopScope: () => (kDebugMode || ApiConstant.isDev) ? true : false,
      canDismissDialog: (kDebugMode || ApiConstant.isDev) ? true : false,
      onUpdate: () {
        return true;
      },
      upgrader: Upgrader(
        durationUntilAlertAgain: const Duration(milliseconds: 800),
        willDisplayUpgrade: ({
          appStoreVersion,
          required display,
          installedVersion,
          minAppVersion,
        }) {
          logger.d({
            "appStoreVersion": appStoreVersion,
            "display": display,
            "installedVersion": installedVersion,
            "minAppVersion": minAppVersion,
          });
        },
      ),
      child: child,
    );
  }
}
