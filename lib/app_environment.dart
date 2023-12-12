enum Env { DEV, PROD }

class AppEnv {
  AppEnv._();
  static late Env env;
  static bool get isDev => env == Env.DEV;

  static void setupEnv(Env env) {
    switch (env) {
      case Env.DEV:
        env = Env.DEV;
        break;
      case Env.PROD:
        env = Env.PROD;
        break;
      default:
        env = Env.DEV;
    }
  }

  static String get baseUrl {
    return switch (env) {
      Env.DEV => 'http://localhost:8085',
      Env.PROD => 'http://localhost:8085',
    };
  }

  static String get baseUrl2 {
    return switch (env) {
      Env.DEV => 'http://localhost:8075/orchestration',
      Env.PROD => 'http://localhost:8075/orchestration',
    };
  }

  static String get baseKeycloakUrl {
    return switch (env) {
      Env.DEV => 'http://localhost:8080/realms/test',
      Env.PROD => 'http://localhost:8080/realms/test',
    };
  }
}
