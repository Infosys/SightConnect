import 'package:eye_care_for_all/main.dart';
import 'package:matomo_tracker/matomo_tracker.dart';

class AppLogger {
  AppLogger._();
  static const int siteId = 1;
  static const String baseUrl = 'https://eyecare4all-dev.infosysapps.com/matomo/matomo.php';
  static const String testuser = "testuser";

  static Future<void> init() async {
    logger.d(baseUrl);
    await MatomoTracker.instance.initialize(siteId: siteId, url: baseUrl);
    MatomoTracker.instance.setVisitorUserId(testuser);
  }

//   static void log(Event event) {
//     tracker.track(event);
// //     await widget.tracker.track(SelfDescribing(
// //     schema: 'iglu:com.snowplowanalytics.snowplow/link_click/jsonschema/1-0-1',
// //     data: {'targetUrl': 'http://0.0.0.0:9090'}
// // ));
// }
}
