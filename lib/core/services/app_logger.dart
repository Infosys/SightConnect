import 'package:matomo_tracker/matomo_tracker.dart';

class AppLogger {
  AppLogger._();
  static const int siteId = 1;
  static const String baseUrl =
      'https://eyecare4all-dev.infosysapps.com/matomo/matomo.php';

  static Future<void> init() async {
    await MatomoTracker.instance.initialize(siteId: siteId, url: baseUrl);
  }

  static void setVisitorUserId(String? userId) {
    MatomoTracker.instance.setVisitorUserId(userId);
  }
}
