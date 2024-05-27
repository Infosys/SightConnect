import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';

class DateTimeIncorrectPage extends StatelessWidget {
  final VoidCallback onRetry;

  const DateTimeIncorrectPage({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                const SizedBox(height: 20),
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
                const SizedBox(height: 40),
                const Text(
                  'Go to Settings > Date & Time > Enable Automatic date & time',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                    onPressed: () {
                      AppSettings.openAppSettings(type: AppSettingsType.date)
                          .then(
                        (value) => onRetry,
                      );
                    },
                    icon: const Icon(Icons.settings),
                    label: const Text('Go to Settings'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
