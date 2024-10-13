/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/initialization_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_language_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/app_info_service.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/constants/api_constant.dart';
import 'package:eye_care_for_all/shared/pages/secure_page.dart';
import 'package:eye_care_for_all/shared/router/app_router.dart';
import 'package:eye_care_for_all/shared/theme/app_theme.dart';
import 'package:eye_care_for_all/shared/widgets/app_feedback_better.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

import 'l10n/app_localizations.dart';

final isJailBrokenProvider = FutureProvider<bool>((ref) async {
  if (kIsWeb) {
    return false;
  }
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

    final initialRoute = PersistentAuthStateService.authState.isLoggedIn
        ? InitializationPage.routeName
        : LoginPage.routeName;

    return ref.watch(isJailBrokenProvider).maybeWhen(
      data: (data) {
        logger.d("isJailBrokenProvider: $data");
        if (data) {
          return const SecurePage();
        } else {
          return AppFeedbackBetter(
            child: MaterialApp(
              title: AppInfoService.appName,
              locale: ref.watch(globalLanguageProvider).currentLocale,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              navigatorObservers: [matomoObserver],
              supportedLocales: appLocales.map((e) => Locale(e.locale)),
              debugShowCheckedModeBanner: ApiConstant.isDev,
              themeMode: ref.watch(themeProvider),
              theme: ref.watch(themeProvider) == ThemeMode.light
                  ? AppTheme.getLightTheme(context)
                  : AppTheme.getDarkTheme(context),
              routes: AppRouter.routes,
              initialRoute: initialRoute,
              navigatorKey: AppRouter.navigatorKey,
              onUnknownRoute: AppRouter.onUnknownRoute,
            ),
          );
        }
      },
      orElse: () {
        logger.d("isJailBrokenProvider: orElse");
        return const SecurePage();
      },
    );
  }
}
