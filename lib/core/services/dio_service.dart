import 'package:dio/dio.dart';
import 'package:eye_care_for_all/app_environment.dart';
import 'package:eye_care_for_all/core/services/interceptors.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/* var keycloakDioProvider = Provider(
  (ref) {
    final dio = Dio(
      BaseOptions(baseUrl: AppEnv.baseUrl),
    );
    dio.interceptors.addAll(
      [DioCertificateInterceptor(dio)],
    );
    return dio;
  },
); */

var dioProvider = Provider(
  (ref) {
    return Dio(
      BaseOptions(baseUrl: AppEnv.baseUrl),
    );

    // ..interceptors.addAll([
    //     DioTokenInterceptor(ref),
    //   ]);
  },
);
