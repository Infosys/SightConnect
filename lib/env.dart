import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
final class Env {
  @EnviedField(varName: 'CLIENT_ID', obfuscate: true)
  static final String clientId = _Env.clientId;

  @EnviedField(varName: 'GRANT_TYPE', obfuscate: true)
  static final String grantType = _Env.grantType;

  @EnviedField(varName: 'SCOPE', obfuscate: true)
  static final String scope = _Env.scope;

  @EnviedField(varName: 'GRANT_TYPE_REFRESH', obfuscate: true)
  static final String grantTypeRefresh = _Env.grantTypeRefresh;

  @EnviedField(varName: 'BASE_URL', obfuscate: true)
  static final String baseUrl = _Env.baseUrl;

  @EnviedField(varName: 'BASE_DEV_URL', obfuscate: true)
  static final String baseDevUrl = _Env.baseDevUrl;
}