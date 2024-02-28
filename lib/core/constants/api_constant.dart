// import 'package:flutter/foundation.dart';

class ApiConstant {
  ApiConstant._();

  static String baseUrl = "https://healthconnecttech.org";
  static String baseDevUrl = "https://eyecare4all-dev.infosysapps.com";
  static String patientRegistrationMiniappUrl =
      '$baseUrl/patient-registration/';

  // static void switchBaseUrl() {
  //   baseUrl = baseDevUrl;
  // }

  // /services/eua-service/api/v1/euaService/search-redirect

  // kDebugMode
  //     ? '$baseUrl/patient-registration-dev/'
  //     : '$baseUrl/patient-registration/';
  static String playStoreUrl = 'https://healthconnecttech.org/install';
  static String webSocketEua =
      'ws://eyecare4all-dev.infosysapps.com/services/eua-service/api/v1/euaService/ws-client';
      //eua/messages
      //topic/return
  // 'https://play.google.com/store/apps/details?id=com.healthconnect.sightconnect';
}
