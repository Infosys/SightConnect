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
      Env.DEV => 'http://10.0.2.2:8077',
      Env.PROD => 'http://10.0.2.2:8077',
    };
  }

  static String get baseUrl2 {
    return switch (env) {
      Env.DEV => 'http://10.0.2.2:8085/orchestration',
      Env.PROD => 'http://10.0.2.2:8085/orchestration',
    };
  }

  static String get baseKeycloakUrl {
    return switch (env) {
      Env.DEV => 'http://localhost:8080/realms/test',
      Env.PROD => 'http://localhost:8080/realms/test',
    };
  }
}
