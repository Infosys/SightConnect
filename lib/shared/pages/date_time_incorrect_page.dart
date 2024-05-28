import 'package:app_settings/app_settings.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/l10n/app_localizations.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/theme/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

class DateTimeIncorrectPage extends ConsumerWidget {
  final VoidCallback onRetry;

  const DateTimeIncorrectPage({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      locale: ref.watch(globalLanguageProvider).currentLocale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      navigatorObservers: [matomoObserver],
      supportedLocales: appLocales.map((e) => Locale(e.locale)),
      debugShowCheckedModeBanner: false,
      themeMode: ref.watch(themeProvider),
      theme: ref.watch(themeProvider) == ThemeMode.light
          ? AppTheme.getLightTheme(context)
          : AppTheme.getDarkTheme(context),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.warning_amber_rounded,
                  size: 50,
                  color: Colors.red,
                ),
                const SizedBox(height: 12),
                const Text(
                  'Attention!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'It seems that your device date and time is incorrect. Please correct it and try again.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Go to Settings > Date & Time > Enable Automatic date & time',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: onRetry,
                        label: const Text('Retry'),
                        icon: const Icon(
                          Icons.refresh,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          AppSettings.openAppSettings(
                              type: AppSettingsType.date);
                        },
                        icon: const Icon(Icons.settings),
                        label: const Text(
                          'Go to Settings',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final isDateTimeCorrectProvider = FutureProvider<bool>((ref) async {
  if (kIsWeb) {
    return true;
  }
  try {
    var dio = Dio();
    var response = await dio.get('https://time.google.com');
    String? date = response.headers.value('date');
    DateFormat format = DateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", 'en_US');
    if (date == null) {
      return false;
    }

    String currentDateTime = DateTime.now().toUtc().toIso8601String();
    String serverDateTime = format.parse(date).toIso8601String();

    final difference = DateTime.parse(currentDateTime)
        .difference(DateTime.parse('${serverDateTime}Z'))
        .inSeconds;

    logger.d({
      'serverDate': serverDateTime,
      'currentDate': currentDateTime,
      'difference': difference,
    });

    if (difference > 0 || difference < -60) {
      return false;
    } else {
      return true;
    }
  } catch (e) {
    logger.e(e);
    return false;
  }
});
