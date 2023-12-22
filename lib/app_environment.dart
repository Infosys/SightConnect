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
      Env.DEV => 'https://eyecare4all-dev.infosysapps.com',
     Env.PROD => 'https://eyecare4all-dev.infosysapps.com',
    };
  }
}
