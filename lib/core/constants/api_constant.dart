import 'package:eye_care_for_all/env.dart';

class ApiConstant {
  ApiConstant._();

  static AppEnvironment appEnvironment = AppEnvironment.development;

  static void setupEnv(AppEnvironment env) {
    switch (env) {
      case AppEnvironment.development:
        baseUrl = Env.baseDevUrl;
        break;
      case AppEnvironment.staging:
        baseUrl = Env.baseUrl;
        break;
      case AppEnvironment.production:
        baseUrl = Env.baseUrl;
        break;
    }
  }

  static String baseUrl = Env.baseUrl;
  static String patientRegistrationMiniappUrl =
      '${baseUrl}/patient-registration/';
  static String playStoreUrl = '${baseUrl}/install';
  static String chatbotUrl = "http://4.240.71.156:8000/api/chat/";
  static String webSocketEua =
      "ws://eyecare4all-dev.infosysapps.com/services/eua-service/api/v1/euaService/ws-client";
}

enum AppEnvironment { development, staging, production }
