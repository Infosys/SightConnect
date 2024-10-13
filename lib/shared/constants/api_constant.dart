/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/env.dart';

class ApiConstant {
  ApiConstant._();

  static AppEnvironment appEnvironment = AppEnvironment.development;
  static String baseUrl = Env.baseUrl;
  static String chatbotUrl = Env.chatbotUrl;
  static String websocketUrl = Env.websocketUrl;
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

  static bool get isDev => appEnvironment == AppEnvironment.development;
}

enum AppEnvironment { development, staging, production }
