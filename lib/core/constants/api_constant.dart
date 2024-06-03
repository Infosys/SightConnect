import 'package:eye_care_for_all/env.dart';

class ApiConstant {
  ApiConstant._();

  static AppEnvironment appEnvironment = AppEnvironment.development;
  static String baseUrl = Env.baseUrl;
  static String patientRegistrationMiniappUrl =
      '${baseUrl}/patient-registration/';

  static void setupEnv(AppEnvironment env) {
    appEnvironment = env;
    switch (env) {
      case AppEnvironment.production:
        baseUrl = Env.baseUrl;
        patientRegistrationMiniappUrl = '${baseUrl}/patient-registration/';
        break;
      case AppEnvironment.staging:
        baseUrl = Env.baseUrl;
        patientRegistrationMiniappUrl = '${baseUrl}/patient-registration/';

        break;
      case AppEnvironment.development:
        baseUrl = Env.baseDevUrl;
        patientRegistrationMiniappUrl = '${baseUrl}/patient-registration/';
        break;
    }
  }

  // static String playStoreUrl = '${baseUrl}/install';
}

enum AppEnvironment { development, staging, production }
