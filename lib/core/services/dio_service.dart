import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/app_environment.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/pages/login_page.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/router/app_router.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var dioProvider = Provider(
  (ref) {
    return Dio(
      BaseOptions(baseUrl: AppEnv.baseUrl),
    )..interceptors.addAll([
        DioTokenInterceptor(ref),
      ]);
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
  DioTokenInterceptor(this._ref);

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
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
        logger.e("Refresh token expired");
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
    if (options.uri.path.contains("/services/orchestration")) {
      return super.onRequest(options, handler);
    }

    options.headers.addAll({
      'Authorization':
          'Bearer ${PersistentAuthStateService.authState.accessToken}'
    });

    log(options.uri.toString(), name: "Dio Request");
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      logger.d("401 error from dio interceptor");
      await _ref.read(initializationProvider).logout();
      Fluttertoast.showToast(
        msg: "Session expired, please login again",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
      );
      AppRouter.navigatorKey.currentState!.pushNamedAndRemoveUntil(
        LoginPage.routeName,
        (route) => false,
      );
    }
    return super.onError(err, handler);
  }
}
