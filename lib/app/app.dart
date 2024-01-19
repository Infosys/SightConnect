import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/providers/global_provider.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/pages/secure_page.dart';
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
  return await FlutterJailbreakDetection.jailbroken;
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

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
                textScaler: TextScaler.linear(
              ref.watch(globalTextScaleFactorProvider).textScaleFactor,
            )),
            child: MaterialApp(
              title: AppText.appName,

              locale: ref.watch(globalLanguageProvider).currentLocale,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              navigatorObservers: AppEnv.isProd ? [matomoObserver] : [],

              supportedLocales: appLocales.map((e) => Locale(e.locale)),
              debugShowCheckedModeBanner: false,
              themeMode: ref.watch(themeProvider),
              theme: ref.watch(themeProvider) == ThemeMode.light
                  ? AppTheme.getLightTheme(context)
                  : AppTheme.getDarkTheme(context),
              routes: AppRouter.routes,
              initialRoute: initialRoute,

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
