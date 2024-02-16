import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/main.dart';
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
    logger.d("Dio Interceptor onRequest");
    //BYPASSING AUTH FOR EXOTEL
    if (options.uri.path.contains("/services/exotel")) {
      return super.onRequest(options, handler);
    }
    options.headers.addAll({
      'Authorization':
          'Bearer ${PersistentAuthStateService.authState.accessToken}'
    });

    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    logger.d("Dio Interceptor onERROR ${err.response?.statusCode}");
    logger.d("Dio Interceptor onERROR_URL ${err.response?.realUri.path}");
    if (err.response?.statusCode == 401) {
      final isAccessTokenExpired =
          PersistentAuthStateService.authState.hasAccessTokenExpired();
      final isRefreshTokenExpired =
          PersistentAuthStateService.authState.hasRefreshTokenExpired();

      logger.d({
        "isAccessTokenExpired": isAccessTokenExpired,
        "isRefreshTokenExpired": isRefreshTokenExpired,
      });

      if (isAccessTokenExpired) {
        if (isRefreshTokenExpired) {
          await _ref.read(initializationProvider).logout();
          AppRouter.navigatorKey.currentState!.pushNamedAndRemoveUntil(
            LoginPage.routeName,
            (route) => false,
          );
          logger.e("Both access token and refresh token expired");
        } else {
          try {
            final refreshToken =
                PersistentAuthStateService.authState.refreshToken;
            final tokens = await _ref
                .read(initializationProvider)
                .refreshTokens(refreshToken: refreshToken!);

            logger.d({
              "newAccessToken": tokens!.accessToken,
              "newRefreshToken": tokens.refreshToken,
            });
            // update the tokens in the persistent storage
            // and in the auth state
            await PersistentAuthStateService.authState
                .updateAccessToken(accessToken: tokens.accessToken);
            await PersistentAuthStateService.authState
                .updateRefreshToken(refreshToken: tokens.refreshToken);
            err.requestOptions.headers['Authorization'] =
                'Bearer ${PersistentAuthStateService.authState.accessToken}';
          } catch (e) {
            // if there is an error while refreshing the tokens
            logger.e("Error while refreshing tokens $e");
            await _ref.read(initializationProvider).logout();
            AppRouter.navigatorKey.currentState!.pushNamedAndRemoveUntil(
              LoginPage.routeName,
              (route) => false,
            );
          }
        }
      }

      final response = await _dio.fetch(err.requestOptions);
      return handler.resolve(response);
    }
    return handler.next(err);
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
