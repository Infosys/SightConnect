import 'dart:async';
import 'dart:io';

import 'package:eye_care_for_all/app.dart';
import 'package:eye_care_for_all/services/app_info_service.dart';
import 'package:eye_care_for_all/services/matomo_logger.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/constants/api_constant.dart';
import 'package:eye_care_for_all/shared/widgets/desktop_clipper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import 'services/shared_preference.dart';

Logger logger = Logger();
bool visionAcuityIsSwipeMode = false;
Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  if (kDebugMode) {
    HttpOverrides.global = MyHttpOverrides();
  }
  ApiConstant.setupEnv(AppEnvironment.development);
  logger.i('App Environment: ${ApiConstant.appEnvironment}');
  await PersistentAuthStateService.intializeAuth();
  await SharedPreferenceService.init();
  await AppInfoService.init();
  // await IOSDeviceInfoService.init();
  FlutterNativeSplash.remove();
  MatomoLogger.init();

  runApp(
    const ProviderScope(
      child: DesktopClipper(child: MyApp()),
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
