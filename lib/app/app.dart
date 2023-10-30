import 'package:eye_care_for_all/features/common_features/auth/presentation/pages/auth_page.dart';
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
  const MyApp({super.key});

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
          textScaleFactor: Responsive.isMobile(context) ? 1.0 : 1.3,
        ),
        child: MaterialApp(
          title: 'Eye Care For All',
          locale: const Locale('en'),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English
            Locale('hi') //Hindi
          ],
          debugShowCheckedModeBanner: false,
          themeMode: ref.watch(themeProvider),
          theme: ref.watch(themeProvider) == ThemeMode.light
              ? AppTheme.getLightTheme(context)
              : AppTheme.getDarkTheme(context),
          routes: AppRouter.routes,
          initialRoute: AuthPage.routeName,
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
  }
}
