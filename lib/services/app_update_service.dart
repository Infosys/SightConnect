/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:in_app_update/in_app_update.dart';
// import '../../main.dart';

// var appUpdateServiceProvider =
//     ChangeNotifierProvider((ref) => AppUpdateService());

// class AppUpdateService extends ChangeNotifier {
//   Future<void> checkForUpdate() async {
//     InAppUpdate.checkForUpdate().then((info) {
//       if (info.updateAvailability == UpdateAvailability.updateAvailable) {
//         logger.d('update available');
//         logger.d("app version is : ${info.availableVersionCode}");
//         update(info);
//       } else {
//         logger.d("update not available");
//       }
//     }).catchError((e) {
//       logger.d("Error while checking for update: $e");
//     });
//   }

//   void update(AppUpdateInfo info) async {
//     logger.d('Updating');

//     await InAppUpdate.performImmediateUpdate().then((value) {
//       if (value == AppUpdateResult.inAppUpdateFailed ||
//           value == AppUpdateResult.userDeniedUpdate) {
//         SystemNavigator.pop();
//       }

//       if (value == AppUpdateResult.success) {
//         SystemNavigator.pop();
//       }

//       if (info.installStatus == InstallStatus.installed) {
//         SystemNavigator.pop();
//       }

//       // if()

//       // switch (info.installStatus) {
//       //   case InstallStatus.pending:
//       //     {}

//       //   case InstallStatus.downloading:
//       //     {}

//       //   case InstallStatus.installing:
//       //     {}

//       //   case InstallStatus.installed:
//       //     {
//       //       SystemNavigator.pop();
//       //       break;
//       //     }
//       //   case InstallStatus.failed:
//       //     {
//       //       SystemNavigator.pop();
//       //       break;
//       //     }

//       //   case InstallStatus.unknown:
//       //     {
//       //       SystemNavigator.pop();
//       //       break;
//       //     }
//       //   case InstallStatus.canceled:
//       //     {
//       //       SystemNavigator.pop();
//       //       break;
//       //     }
//       //   case InstallStatus.downloaded:
//       //     {
//       //       InAppUpdate.completeFlexibleUpdate().then((_) {
//       //         // Restart the app
//       //         AppRouter.navigatorKey.currentState!
//       //             .popUntil((route) => route.isFirst);
//       //       });
//       //       break;
//       //     }
//       // }
//     }).catchError((e) {
//       logger.e(e.toString());
//     });
//   }
// }