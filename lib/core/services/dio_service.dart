import 'package:dio/dio.dart';
import 'package:eye_care_for_all/app_environment.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/features/common_features/initialization/providers/initilization_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var dioProvider = Provider(
  (ref) {
    return Dio(
      BaseOptions(baseUrl: AppEnv.baseUrl),
    );
    // )..interceptors.addAll([DioTokenInterceptor(ref)]);
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

    if (isAccessTokenExpired) {
      if (isRefreshTokenExpired) {
        await _ref.read(initializationProvider).logout();
      } else {
        final credentials =
            await PersistentAuthStateService.authState.getCredentials();

        final tokens = await credentials!.getTokenResponse();
        await PersistentAuthStateService.authState
            .updateAccessToken(accessToken: tokens.accessToken!);
        await PersistentAuthStateService.authState
            .updateRefreshToken(refreshToken: tokens.refreshToken!);
      }
    }
    options.headers.addAll({
      'Authorization':
          'Bearer ${PersistentAuthStateService.authState.accessToken}'
    });
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      await _ref.read(initializationProvider).logout();
    }
    return super.onError(err, handler);
  }
}
