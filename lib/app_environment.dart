import 'package:eye_care_for_all/main.dart';

enum Env { DEV, PROD }

class AppEnv {
  AppEnv._();

  static Env env = Env.DEV;

  static bool get isDev => env == Env.DEV;

  static void setupEnv(Env currentEnv) {
    env = currentEnv;
    logger.d({
      "env": env.toString(),
    });
  }

  static String get baseUrl {
    return switch (env) {
      Env.DEV => 'http://10.0.2.2:8081',
      Env.PROD => 'http://localhost:8074/orchestration',
    };
  }

  static String get orchestrationBaseUrl {
    return switch (env) {
      Env.DEV =>
        'http://eyecare4all-dev.infosysapps.com/services/orchestration',
      Env.PROD =>
        'http://eyecare4all-dev.infosysapps.com/services/orchestration',
    };
  }

  static String get baseUrl3 {
    return switch (env) {
      Env.DEV => 'http://localhost:8085',
      Env.PROD => 'http://localhost:8085',
    };
  }

  static String get keycloakBaseUrl {
    return switch (env) {
      Env.DEV => 'http://localhost:8080/realms/test',
      Env.PROD => 'http://localhost:8080/realms/test',
    };
  }

  static String get exotelBaseUrl {
    return switch (env) {
      Env.DEV => 'https://eyecare4all-dev.infosysapps.com/services/exotel',
      Env.PROD => 'https://eyecare4all-dev.infosysapps.com/services/exotel',
    };
  }

  static String get profileBaseUrl {
    return switch (env) {
      Env.DEV => 'https://eyecare4all-dev.infosysapps.com/services/profile',
      Env.PROD => 'https://eyecare4all-dev.infosysapps.com/services/profile',
    };
  }
}
