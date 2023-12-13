enum Env { DEV, PROD }

class AppEnv {
  AppEnv._();
  static Env env = Env.DEV;
  static bool get isDev => env == Env.DEV;

  static void setupEnv(Env currentEnv) {
    env = currentEnv;
  }

  static String get baseUrl {
    return switch (env) {
      Env.DEV => 'http://10.0.2.2:8081',
      Env.PROD => 'http://localhost:8074/orchestration',
    };
  }

  static String get baseUrl2 {
    return switch (env) {
      Env.DEV => 'https://eyecareforall.in/api/v1/',
      Env.PROD => 'https://eyecareforall.in/api/v1/',
    };
  }

  static String get baseKeycloakUrl {
    return switch (env) {
      Env.DEV => 'http://localhost:8080/realms/test',
      Env.PROD => 'http://localhost:8080/realms/test',
    };
  }
}
