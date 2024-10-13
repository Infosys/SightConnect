/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:eye_care_for_all/apps/sightconnect/helpers/models/keycloak.dart';

abstract class KeycloakRepository {
  Future<int> sendOtp({required String mobile});
  Future<void> signIn({required String mobile, required String otp});
  Future<void> signOut();
  Future<KeycloakResponse> refreshTokens({
    required String refreshToken,
  });
}
