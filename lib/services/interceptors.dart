import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/router/app_router.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DioTokenInterceptor extends Interceptor {
  final Ref _ref;
  final Dio _dio;

  DioTokenInterceptor(
    this._ref,
    this._dio,
  );

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll({
      'Authorization':
          'Bearer ${PersistentAuthStateService.authState.accessToken}'
    });

    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // Add a retry limit
      const retryLimit = 3;
      int retryCount = 0;

      while (retryCount <= retryLimit) {
        retryCount++;

        final isAccessTokenExpired =
            PersistentAuthStateService.authState.hasAccessTokenExpired();
        final isRefreshTokenExpired =
            PersistentAuthStateService.authState.hasRefreshTokenExpired();

        if (isAccessTokenExpired && !isRefreshTokenExpired) {
          try {
            // refresh the token
            await _refreshToken();
            err.requestOptions.headers['Authorization'] =
                'Bearer ${PersistentAuthStateService.authState.accessToken}';

            // Retry the failed request with the new token
            final response = await _dio.fetch(err.requestOptions);
            return handler.resolve(response);
          } catch (e) {
            // if the refresh token is expired, logout the user
            logger.e("Error while refreshing tokens $e");
            await _logout();
            break;
          }
        } else if (isRefreshTokenExpired) {
          logger.e("Both access token and refresh token expired");
          await _logout();
          break;
        }
      }
    }
    return handler.next(err);
  }

  Future<void> _refreshToken() async {
    final refreshToken = PersistentAuthStateService.authState.refreshToken;
    final tokens = await _ref
        .read(initializationProvider)
        .refreshTokens(refreshToken: refreshToken!);

    logger.d({
      "newAccessToken": tokens!.accessToken,
      "newRefreshToken": tokens.refreshToken,
    });
    // update the tokens in the persistent storage
    await PersistentAuthStateService.authState
        .updateAccessToken(accessToken: tokens.accessToken);
    await PersistentAuthStateService.authState
        .updateRefreshToken(refreshToken: tokens.refreshToken);
    await PersistentAuthStateService.authState.saveTokens(
        accessToken: tokens.accessToken, refreshToken: tokens.refreshToken);
  }

  Future<void> _logout() async {
    try {
      await _ref.read(initializationProvider).logout();
      AppRouter.navigatorKey.currentState!.pushNamedAndRemoveUntil(
        LoginPage.routeName,
        (route) => false,
      );
    } catch (e) {
      logger.e("Error while logging out $e");
    }
  }
}

class DioCertificateInterceptor extends Interceptor {
  final Dio _dio;
  DioCertificateInterceptor(this._dio);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var serverCertificate = await rootBundle.load('assets/server.pem');
    _dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        SecurityContext context = SecurityContext();
        context.setTrustedCertificatesBytes(
            serverCertificate.buffer.asUint8List());
        HttpClient client = HttpClient(context: context);

        return client;
      },
    );
    handler.next(options);
  }
}
