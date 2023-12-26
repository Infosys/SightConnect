import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/data/keycloak_repository.dart';
import 'package:eye_care_for_all/features/common_features/initialization/models/keycloak.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var keycloakRepositoryProvider = Provider((ref) {
  return KeycloakRepositoryImpl(ref.read(keycloakDioProvider));
});

class KeycloakRepositoryImpl implements KeycloakRepository {
  final Dio _dio;
  KeycloakRepositoryImpl(this._dio);

  @override
  Future<void> signIn({required String mobile, required String otp}) async {
    const url = "/auth/realms/care/protocol/openid-connect/token";

    try {
      final response = await _dio.post<Map<String, dynamic>>(
        url,
        options: Options(
          contentType: "application/x-www-form-urlencoded",
        ),
        data: {
          'grant_type': 'password',
          'phone_number': '+91$mobile',
          'code': otp,
          'client_id': "microservices",
          'client_secret': "microservices",
          'scope': 'openid profile email',
        },
      );

      var data = KeycloakResponse.fromJson(response.data!);
      await PersistentAuthStateService.authState.saveTokens(
        accessToken: data.accessToken,
        refreshToken: data.refreshToken,
      );
      await PersistentAuthStateService.authState.saveIdToken(data.idToken);

      logger.d({
        "accessToken": PersistentAuthStateService.authState.accessToken,
        "refreshToken": PersistentAuthStateService.authState.refreshToken,
        "idToken": PersistentAuthStateService.authState.idToken,
        "url": url,
      });
    } catch (e) {
      logger.e("KeycloakRepositoryImpl.signIn $e");
      throw ServerFailure(errorMessage: "Invalid OTP");
    }
  }

  @override
  Future<KeycloakResponse> refreshTokens({
    required String refreshToken,
  }) async {
    const url = "/auth/realms/care/protocol/openid-connect/token";
    try {
      final keycloakResponseMap = await _dio.post<Map<String, dynamic>>(
        url,
        options: Options(
          contentType: "application/x-www-form-urlencoded",
        ),
        data: {
          'client_id': "microservices",
          'grant_type': 'refresh_token',
          'refresh_token': refreshToken,
        },
      );
      return KeycloakResponse.fromJson(keycloakResponseMap.data!);
    } catch (e) {
      logger.e("KeycloakRepositoryImpl.refreshTokens $e");
      throw ServerFailure(errorMessage: "Refresh token expired");
    }
  }

  @override
  Future<int> sendOtp({required String mobile}) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        "/auth/realms/care/sms/authentication-code",
        queryParameters: {
          'phoneNumber': mobile,
        },
      );

      logger.d({
        "response": response.data,
      });

      return response.data!['expires_in'];
    } catch (e) {
      logger.e("KeycloakRepositoryImpl.sendOtp $e");
      throw ServerFailure(errorMessage: "Invalid mobile number");
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _dio.get(
        "/auth/realms/care/protocol/openid-connect/logout",
        queryParameters: {
          'client_id': "microservices",
          'post_redirect_url': "https://test.com",
          'id_token_hint': PersistentAuthStateService.authState.idToken,
        },
      );
      await PersistentAuthStateService.authState.logout();
    } catch (e) {
      logger.e("KeycloakRepositoryImpl.signOut $e");
      throw ServerFailure(errorMessage: "Error signing out");
    }
  }
}
