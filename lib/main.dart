import 'dart:io';
import 'package:eye_care_for_all/app/app.dart';
import 'package:eye_care_for_all/app_environment.dart';
import 'package:eye_care_for_all/core/services/ios_device_info_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'core/services/shared_preference.dart';

Logger logger = Logger();

var kTriageCacheCleared = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceService.init();
  IOSDeviceInfoService.init();
  AppEnv.setupEnv(Env.PROD);
  // if (!AppEnv.isDev) {
  //   await AppLogger.init();
  // }

  HttpOverrides.global = MyHttpOverrides();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
