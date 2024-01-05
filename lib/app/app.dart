import 'dart:developer';
import 'dart:io';

import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_dashboard/presentation/pages/vg_dashboard_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/router/app_router.dart';
import 'package:eye_care_for_all/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';
import 'package:millimeters/millimeters.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../app_environment.dart';

final isJailBrokenProvider = FutureProvider<bool>((ref) async {
  // return await FlutterJailbreakDetection.jailbroken;
  return false;
});

class MyApp extends ConsumerWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final mediaQueryData = MediaQuery.of(context);

    final initialRoute = PersistentAuthStateService.authState.isLoggedIn
        ? InitializationPage.routeName
        : LoginPage.routeName;

    return ref.watch(isJailBrokenProvider).maybeWhen(
      data: (data) {
        logger.d("isJailBrokenProvider: $data");
        if (data) {
          return const SecurePage();
        }
        return Millimeters.fromView(
          child: MediaQuery(
            data: mediaQueryData.copyWith(
              textScaler:
                  TextScaler.linear(Responsive.isMobile(context) ? 1.0 : 1.3),
            ),
            child: MaterialApp(
              title: AppText.appName,
              locale: const Locale('en'),
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              navigatorObservers: AppEnv.isProd ? [matomoObserver] : [],
              supportedLocales: const [Locale('en'), Locale('hi')],
              debugShowCheckedModeBanner: false,
              themeMode: ref.watch(themeProvider),
              theme: ref.watch(themeProvider) == ThemeMode.light
                  ? AppTheme.getLightTheme(context)
                  : AppTheme.getDarkTheme(context),
              routes: AppRouter.routes,
              initialRoute: initialRoute,
              // home: const VisionGuardianDashboardPage(),
              navigatorKey: AppRouter.navigatorKey,
              // builder: (context, child) {
              //   return ref.watch(internetProvider).when(
              //         data: (value) {
              //           if (value == ConnectivityResult.none) {
              //             return const InternetLostPage();
              //           } else {
              //             return child!;
              //           }
              //         },
              //         loading: () => const InternetLostPage(),
              //         error: (error, stackTrace) {
              //           return const InternetLostPage();
              //         },
              //       );
              // },
            ),
          ),
        );
      },
      orElse: () {
        logger.d("isJailBrokenProvider: orElse");
        return const SecurePage();
      },
    );
  }
}

class SecurePage extends StatelessWidget {
  const SecurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getLightTheme(context),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "It seems your device is jailbroken",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "For security reasons, access to this app is restricted on jailbroken devices.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                OutlinedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                  ),
                  onPressed: () {
                    exit(0);
                  },
                  child: const Text(
                    "Exit App",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
