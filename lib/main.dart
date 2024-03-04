import 'dart:async';
import 'dart:io';

import 'package:eye_care_for_all/app/app.dart';
import 'package:eye_care_for_all/core/services/app_info_service.dart';
import 'package:eye_care_for_all/core/services/background_service.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:workmanager/workmanager.dart';
// import 'package:sentry_flutter/sentry_flutter.dart';
import 'core/services/matomo_logger.dart';
import 'core/services/shared_preference.dart';

Logger logger = Logger();

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    await PersistentAuthStateService.intializeAuth();
    switch (task) {
      case BackgroundServices.postTriage:
        await BackgroundServices.dispatchTriageResult();
        break;
    }
    return true;
  });
}

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  if (kDebugMode) {
    HttpOverrides.global = MyHttpOverrides();
  }
  await PersistentAuthStateService.intializeAuth();
  await SharedPreferenceService.init();
  await AppInfoService.init();
  // await IOSDeviceInfoService.init();
  await MatomoLogger.init();

  Workmanager().initialize(
    callbackDispatcher,
    isInDebugMode: kDebugMode,
  );

  Workmanager().registerPeriodicTask(
      BackgroundServices.postTriage, BackgroundServices.postTriage,
      frequency: const Duration(minutes: 15),
      constraints: Constraints(networkType: NetworkType.connected));
  FlutterNativeSplash.remove();

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
