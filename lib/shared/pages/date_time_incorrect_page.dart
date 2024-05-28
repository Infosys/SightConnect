import 'package:app_settings/app_settings.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class DateTimeIncorrectPage extends StatelessWidget {
  final VoidCallback onRetry;

  const DateTimeIncorrectPage({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: onRetry,
                icon: const Icon(
                  Icons.refresh,
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error,
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
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () async {
                    await AppSettings.openAppSettings(
                        type: AppSettingsType.date);
                  },
                  icon: const Icon(Icons.settings),
                  label: const Text(
                    'Go to Settings',
                  ),
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
    String serverDateTime = format.parse(date).toIso8601String();

    String currentDateTime = DateTime.now().toUtc().toIso8601String();

    final difference = DateTime.parse('${serverDateTime}Z')
        .difference(DateTime.parse(currentDateTime))
        .inMinutes;

    logger.d({
      'serverDate': serverDateTime,
      'currentDate': currentDateTime,
      'difference': difference,
    });

    if (difference.abs() > 5) {
      return false;
    } else {
      return true;
    }
  } catch (e) {
    logger.e(e);
    return false;
  }
});
