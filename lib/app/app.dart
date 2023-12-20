import 'package:eye_care_for_all/app_environment.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/services/app_logger.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/landing_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/router/app_router.dart';
import 'package:eye_care_for_all/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:millimeters/millimeters.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

    return Millimeters.fromView(
      child: MediaQuery(
        data: mediaQueryData.copyWith(
          textScaler:
              TextScaler.linear(Responsive.isMobile(context) ? 1.0 : 1.3),
        ),
        child: MaterialApp(
          title: AppText.appName,
          locale: const Locale('en'),
          navigatorObservers:
              !AppEnv.isDev ? [AppLogger.tracker.getObserver()] : [],
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('en'), Locale('hi')],
          debugShowCheckedModeBanner: false,
          themeMode: ref.watch(themeProvider),
          theme: ref.watch(themeProvider) == ThemeMode.light
              ? AppTheme.getLightTheme(context)
              : AppTheme.getDarkTheme(context),
          routes: AppRouter.routes,
          initialRoute: LandingPage.routeName,
          navigatorKey: AppRouter.navigatorKey,
        ),
      ),
    );
  }

  Future<bool> isSecureDevice() async {
    // var jailbroken = await FlutterJailbreakDetection.jailbroken;
    // if (jailbroken) {
    //   return false;
    // }
    return true;
  }
}
