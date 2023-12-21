import 'package:eye_care_for_all/main.dart';

enum Env { DEV, STAG, PROD }

class AppEnv {
  AppEnv._();

  static Env env = Env.DEV;

  static bool get isDev => env == Env.DEV;
  static bool get isStag => env == Env.STAG;
  static bool get isProd => env == Env.PROD;

  static void setupEnv(Env currentEnv) {
    env = currentEnv;
    logger.d({"env": env.toString()});
  }

  static String get baseUrl {
    return switch (env) {
      Env.DEV => 'http://eyecare4all-dev.infosysapps.com',
      Env.PROD => 'http://eyecare4all-dev.infosysapps.com',
    };
  }
}
