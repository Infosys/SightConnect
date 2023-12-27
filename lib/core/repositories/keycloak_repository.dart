import 'package:eye_care_for_all/core/models/keycloak.dart';

abstract class KeycloakRepository {
  Future<int> sendOtp({required String mobile});
  Future<void> signIn({required String mobile, required String otp});
  Future<void> signOut();
  Future<KeycloakResponse> refreshTokens({
    required String refreshToken,
  });
}
