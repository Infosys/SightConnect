import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/eye_report/eye_report.dart';
import 'package:eye_care_for_all/roles/patient/patient_cataract_eye_scan/presentation/pages/eye_scan_home_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/roles/patient/patient_vision_acuity_test/presentation/pages/tumbling_test/tumbling_e_test_page.dart';
import 'package:eye_care_for_all/shared/pages/auth_page.dart';
import 'package:eye_care_for_all/shared/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();

  static Map<String, Widget Function(BuildContext)> routes = {
    AuthPage.routeName: (context) => const AuthPage(),
    SplashPage.routeName: (context) => const SplashPage(),
    PatientDashboardPage.routeName: (context) => const PatientDashboardPage(),
    TumblingETestPage.routeName: (context) => const TumblingETestPage(),
    EyeScanHomePage.routeName: (context) => const EyeScanHomePage(),
    EyeScanReport.routeName: (context) => EyeScanReport(),
  };

  static Route<dynamic>? onUnknownRoute(RouteSettings settings) {
    return null;
  }
}
