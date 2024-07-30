import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/repositories/keycloak_repository.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/core/models/keycloak.dart';
import 'package:eye_care_for_all/env.dart';
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
        options: Options(contentType: "application/x-www-form-urlencoded"),
        data: {
          'grant_type': Env.grantType,
          'phone_number': '+91$mobile',
          'code': otp,
          'client_id': Env.clientId,
          'scope': Env.scope,
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
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Error signing in : $e");
      throw ServerFailure(errorMessage: "Error signing in : $e ");
    }
  }

  @override
  Future<KeycloakResponse> refreshTokens({
    required String refreshToken,
  }) async {
    const url = "/auth/realms/care/protocol/openid-connect/token";
    logger.d("url : $url");
    try {
      final keycloakResponseMap = await _dio.post<Map<String, dynamic>>(
        url,
        options: Options(
          contentType: "application/x-www-form-urlencoded",
        ),
        data: {
          'client_id': Env.clientId,
          'grant_type': Env.grantTypeRefresh,
          'refresh_token': refreshToken,
        },
      );
      log("newAccessToken from impl: ${keycloakResponseMap.data!['access_token']}");
      return KeycloakResponse.fromJson(keycloakResponseMap.data!);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Refresh token failed : $e");
      throw ServerFailure(errorMessage: "Refresh token expired : $e");
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
      if (response.statusCode != 200) {
        throw ServerFailure(
            errorMessage: "Sending OTP failed : ${response.statusCode}");
      } else {
        return response.data!['expires_in'];
      }
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Sending OTP failed : $e");
      throw ServerFailure(errorMessage: "Sending OTP failed : $e");
    }
  }

  @override
  Future<void> signOut() async {
    try {
      final response = await _dio.get(
        "/auth/realms/care/protocol/openid-connect/logout",
        queryParameters: {
          'client_id': Env.clientId,
          'post_redirect_url': "https://test.com",
          'id_token_hint': PersistentAuthStateService.authState.idToken,
        },
      );
      logger.d({"signOut response": response});
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e, s) {
      logger.e("Error signing out : $e");
      throw ServerFailure(errorMessage: "Error signing out : $e $s");
    }
  }
}
