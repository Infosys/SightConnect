// import 'package:flutter/foundation.dart';

class ApiConstant {
  ApiConstant._();

  static String baseUrl = "https://healthconnecttech.org";
  static String baseDevUrl = "https://eyecare4all-dev.infosysapps.com";
  static String patientRegistrationMiniappUrl =
      '$baseUrl/patient-registration/';


  static void switchBaseUrl() {
    baseUrl = baseDevUrl;
  }

  // kDebugMode
  //     ? '$baseUrl/patient-registration-dev/'
  //     : '$baseUrl/patient-registration/';
  static String playStoreUrl = 'https://healthconnecttech.org/install';
  // 'https://play.google.com/store/apps/details?id=com.healthconnect.sightconnect';
}
