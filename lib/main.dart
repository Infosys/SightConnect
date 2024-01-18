import 'dart:io';

import 'package:eye_care_for_all/app/app.dart';
import 'package:eye_care_for_all/core/services/ios_device_info_service.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'core/services/matomo_logger.dart';
import 'core/services/shared_preference.dart';

Logger logger = Logger();
Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  if (kDebugMode) {
    HttpOverrides.global = MyHttpOverrides();
  }

  await PersistentAuthStateService.intializeAuth();
  await SharedPreferenceService.init();
  await IOSDeviceInfoService.init();
  await MatomoLogger.init();

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
      ..badCertificateCallback = (cert, String host, int port) => true;
  }
}
