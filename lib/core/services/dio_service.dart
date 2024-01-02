import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:eye_care_for_all/app_environment.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/router/app_router.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var dioProvider = Provider(
  (ref) {
    final dio = Dio(BaseOptions(baseUrl: AppEnv.baseUrl));
    dio.interceptors.addAll([
      DioCertificateInterceptor(dio),
      DioTokenInterceptor(ref, dio),
    ]);
    return dio;
  },
);
var keycloakDioProvider = Provider(
  (ref) {
    return Dio(
      BaseOptions(baseUrl: AppEnv.baseUrl),
    );
  },
);

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

            await PersistentAuthStateService.authState
                .updateAccessToken(accessToken: tokens.accessToken);
            await PersistentAuthStateService.authState
                .updateRefreshToken(refreshToken: tokens.refreshToken);
          } catch (e) {
            logger.e("Error while refreshing tokens $e");
            await _ref.read(initializationProvider).logout();
            AppRouter.navigatorKey.currentState!.pushNamedAndRemoveUntil(
              LoginPage.routeName,
              (route) => false,
            );
          }
          logger.d("updated access token and refresh token");
        }
      }

      final response = await _dio.fetch(err.requestOptions);
      return handler.resolve(response);
    } else {
      // await _ref.read(initializationProvider).logout();
      // AppRouter.navigatorKey.currentState!.pushNamedAndRemoveUntil(
      //   LoginPage.routeName,
      //   (route) => false,
      // );

      super.onError(err, handler);
    }
  }
}

class DioCertificateInterceptor extends Interceptor {
  Dio dio;
  DioCertificateInterceptor(this.dio);
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    logger.i("DioCertificateInterceptor onRequest");
    SecurityContext context = SecurityContext();
    var serverCertificate = await rootBundle.load('assets/server.pem');
    context.setTrustedCertificatesBytes(serverCertificate.buffer.asUint8List());
    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        HttpClient client = HttpClient(context: context);
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;

        return client;
      },
    );
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      // performLogout();
      super.onError(err, handler);
    }
    handler.next(err);
  }
}
