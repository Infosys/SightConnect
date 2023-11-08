import 'package:eye_care_for_all/features/common_features/login_signup/presentation/login.dart';
import 'package:eye_care_for_all/features/common_features/auth/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();

  static Map<String, Widget Function(BuildContext)> routes = {
    SplashPage.routeName: (context) => const SplashPage(),
    LoginPage.routeName: (context) => const LoginPage(),
  };

  static Route<dynamic>? onUnknownRoute(RouteSettings settings) {
    return null;
  }
}
