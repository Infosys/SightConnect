import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/login_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static Map<String, Widget Function(BuildContext)> routes = {
    InitializationPage.routeName: (context) => const InitializationPage(),
    LoginPage.routeName: (context) => const LoginPage(),
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
