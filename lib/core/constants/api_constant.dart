import 'package:eye_care_for_all/env.dart';

class ApiConstant {
  ApiConstant._();

  // static String baseUrl = "https://healthconnecttech.org";
  // static String baseDevUrl = "https://healthconnect.infosysapps.com";
  static String patientRegistrationMiniappUrl =
      '${Env.baseUrl}/patient-registration/';
  static String playStoreUrl = 'https://healthconnecttech.org/install';
  static String chatbotUrl = "http://4.240.71.156:8000/api/chat/";
  static String webSocketEua =
      "ws://eyecare4all-dev.infosysapps.com/services/eua-service/api/v1/euaService/ws-client";
}
