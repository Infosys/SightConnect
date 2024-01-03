import 'dart:io';

import 'package:eye_care_for_all/app/app.dart';
import 'package:eye_care_for_all/app_environment.dart';
import 'package:eye_care_for_all/core/services/ios_device_info_service.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_miniapp_web_runner/flutter_miniapp_web_runner.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';
import 'core/services/app_logger.dart';
import 'core/services/shared_preference.dart';

Logger logger = Logger();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppEnv.setupEnv(Env.PROD);

  await PersistentAuthStateService.intializeAuth();
  await SharedPreferenceService.init();
  IOSDeviceInfoService.init();
  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
    await InAppWebViewController.setWebContentsDebuggingEnabled(kDebugMode);
  }
  if (AppEnv.isProd) {
    await AppLogger.init();
  }

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpClient createHttpClient(SecurityContext? context) {
//     return super.createHttpClient(context)
//       ..badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//   }
// }
