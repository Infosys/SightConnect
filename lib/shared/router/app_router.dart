import 'package:eye_care_for_all/roles/patient/patient_dashboard/presentation/pages/patient_dashboard_page.dart';
import 'package:eye_care_for_all/shared/pages/auth_page.dart';
import 'package:eye_care_for_all/shared/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();

  static Map<String, Widget Function(BuildContext)> routes = {
    AuthPage.routeName: (context) => const AuthPage(),
    SplashPage.routeName: (context) => const SplashPage(),
    PatientDashboardPage.routeName: (context) => const PatientDashboardPage(),
  };

  static Route<dynamic>? onUnknownRoute(RouteSettings settings) {
    return null;
  }
}
