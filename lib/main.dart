import 'dart:io';
import 'package:eye_care_for_all/app/app.dart';
import 'package:eye_care_for_all/app_environment.dart';
import 'package:eye_care_for_all/core/services/ios_device_info_service.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:snowplow_tracker/snowplow_tracker.dart';
import 'core/services/shared_preference.dart';

Logger logger = Logger();

var kTriageCacheCleared = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceService.init();
  IOSDeviceInfoService.init();
  AppEnv.setupEnv(Env.PROD);
  logger.d(AppEnv.env);
  HttpOverrides.global = MyHttpOverrides();

  final SnowplowTracker tracker = await Snowplow.createTracker(
      namespace: "ns1",
      
      endpoint: const String.fromEnvironment('ENDPOINT',
          defaultValue: 'http://10.0.2.2:9090'),
      trackerConfig: const TrackerConfiguration(
        appId: "com.infosys.eyecareforall",
        devicePlatform: DevicePlatform.mob,
          webPageContext: false,
          webActivityTracking:
              WebActivityTracking(minimumVisitLength: 15, heartbeatDelay: 10)),
      gdprConfig: const GdprConfiguration(
          basisForProcessing: 'consent',
          documentId: 'consentDoc-abc123',
          documentVersion: '0.1.0',
          documentDescription:
              'This is the behavioural tracking of eyecare4all application'),
      subjectConfig: const SubjectConfiguration(userId: 'XYZ'));

  runApp(
    ProviderScope(
      child: MyApp(tracker: tracker),
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
