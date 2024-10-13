/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

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

  @EnviedField(varName: 'CHATBOT_URL', obfuscate: true)
  static final String chatbotUrl = _Env.chatbotUrl;

  @EnviedField(varName: 'WEBSOCKET_URL', obfuscate: true)
  static final String websocketUrl = _Env.websocketUrl;

  @EnviedField(varName: 'APP_EMAIL', obfuscate: true)
  static final String appEmail = _Env.appEmail;

  @EnviedField(varName: 'TOLL_FREE_NUMBER', obfuscate: true)
  static final String tollFreeNumber = _Env.tollFreeNumber;

  @EnviedField(varName: 'ACTIVATE_EXOTEL_NUMBER', obfuscate: true)
  static final String activateExotelNumber = _Env.activateExotelNumber;

  @EnviedField(varName: 'LVPEI_EMAIL', obfuscate: true)
  static final String lvpeiEmail = _Env.lvpeiEmail;
}
