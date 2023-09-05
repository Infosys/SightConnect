import 'package:eye_care_for_all/shared/pages/auth_page.dart';
import 'package:eye_care_for_all/shared/responsive/responsive.dart';
import 'package:eye_care_for_all/shared/router/app_router.dart';
import 'package:eye_care_for_all/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    final mediaQueryData = MediaQuery.of(context);

    return MediaQuery(
      data: mediaQueryData.copyWith(
        textScaleFactor: Responsive.isMobile(context) ? null : 1.2,
      ),
      child: MaterialApp(
        title: 'Eye Care For All',
        debugShowCheckedModeBanner: false,
        themeMode: ref.watch(themeProvider),
        theme: ref.watch(themeProvider) == ThemeMode.light
            ? AppTheme.lightTheme
            : AppTheme.darkTheme,
        routes: AppRouter.routes,
        initialRoute: AuthPage.routeName,
      ),
    );
  }
}
