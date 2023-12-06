import 'package:eye_care_for_all/features/common_features/auth/presentation/pages/auth_page.dart';
import 'package:eye_care_for_all/features/common_features/auth/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashPage.routeName: (context) => const SplashPage(),
    AuthPage.routeName: (context) => const AuthPage(),
  };

  static Route<dynamic>? onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('Page not found'),
        ),
      ),
    );
  }
}
