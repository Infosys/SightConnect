
class AppLogger {
  AppLogger._();
//   static const String baseUrl = 'http://10.0.2.2:9090';
//   static const String nameSpace = 'ns1';
//   static const String appId = 'com.infosys.eyecareforall';
//   static late final SnowplowTracker tracker;
//   static void init() async {
//     tracker = await Snowplow.createTracker(
//       namespace: nameSpace,
//       endpoint: const String.fromEnvironment(
//         'ENDPOINT',
//         defaultValue: baseUrl,
//       ),
//       trackerConfig: const TrackerConfiguration(
//         appId: appId,
//         devicePlatform: DevicePlatform.mob,
//         webPageContext: false,
//         webActivityTracking: WebActivityTracking(
//           minimumVisitLength: 15,
//           heartbeatDelay: 10,
//         ),
//       ),
//       gdprConfig: const GdprConfiguration(
//         basisForProcessing: 'consent',
//         documentId: 'consentDoc-abc123',
//         documentVersion: '0.1.0',
//         documentDescription:
//             'This is the behavioural tracking of eyecare4all application',
//       ),
//       subjectConfig: const SubjectConfiguration(userId: 'XYZ'),
//     );
//   }

//   static void log(Event event) {
//     tracker.track(event);
// //     await widget.tracker.track(SelfDescribing(
// //     schema: 'iglu:com.snowplowanalytics.snowplow/link_click/jsonschema/1-0-1',
// //     data: {'targetUrl': 'http://0.0.0.0:9090'}
// // ));
//   }
}
