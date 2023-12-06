enum Env { DEV, PROD }

class AppEnv {
  AppEnv._();
  static Env env = Env.DEV;
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
      Env.DEV => 'http://localhost:8074/orchestration',
      Env.PROD => 'http://localhost:8074/orchestration',
    };
  }

  static String get baseUrl2 {
    return switch (env) {
      Env.DEV => 'https://eyecareforall.in/api/v1/',
      Env.PROD => 'https://eyecareforall.in/api/v1/',
    };
  }
}
