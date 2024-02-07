// import 'package:flutter/foundation.dart';

class ApiConstant {
  ApiConstant._();

  static String baseUrl = 'https://healthconnecttech.org';
  static String patientRegistrationMiniappUrl =
      '$baseUrl/patient-registration/';

  // kDebugMode
  //     ? '$baseUrl/patient-registration-dev/'
  //     : '$baseUrl/patient-registration/';
  static String playStoreUrl = 'https://healthconnecttech.org/install';
  // 'https://play.google.com/store/apps/details?id=com.healthconnect.sightconnect';
}
