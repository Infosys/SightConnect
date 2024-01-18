import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
final class Env {
  @EnviedField(varName: 'CLIENT_ID', obfuscate: true)
  static final String clientId = _Env.clientId;

  @EnviedField(varName: 'CLIENT_SECRET', obfuscate: true)
  static final String clientSecret = _Env.clientSecret;

  @EnviedField(varName: 'GRANT_TYPE', obfuscate: true)
  static final String grantType = _Env.grantType;

  @EnviedField(varName: 'SCOPE', obfuscate: true)
  static final String scope = _Env.scope;

  @EnviedField(varName: 'GRANT_TYPE_REFRESH', obfuscate: true)
  static final String grantTypeRefresh = _Env.grantTypeRefresh;
}
