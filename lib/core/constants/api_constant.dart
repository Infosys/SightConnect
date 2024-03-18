import 'package:eye_care_for_all/env.dart';

class ApiConstant {
  ApiConstant._();

  static String baseUrl = Env.baseUrl;
  static String baseDevUrl = Env.baseDevUrl;

  static String patientRegistrationMiniappUrl =
      '${baseUrl}/patient-registration/';
  static String playStoreUrl = '${baseUrl}/install';
  static String chatbotUrl = "http://4.240.71.156:8000/api/chat/";
  static String webSocketEua =
      "ws://eyecare4all-dev.infosysapps.com/services/eua-service/api/v1/euaService/ws-client";
}
