import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/constants/api_constant.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/services/interceptors.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/env.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app_info_service.dart';

var keycloakDioProvider = Provider(
  (ref) {
    final dio = Dio(
      BaseOptions(
        baseUrl: Env.baseUrl,
      ),
    );
    dio.interceptors.addAll([]);
    return dio;
  },
);

var dioProvider = Provider(
  (ref) {
    final lang = ref.watch(globalLanguageProvider).currentLocale?.languageCode;
    final dio = Dio(
      BaseOptions(
        baseUrl: Env.baseUrl,
        headers: {
          "X-Accept-Language": lang,
          "X-Active-Role": PersistentAuthStateService.authState.activeRole,
          "X-App-Version": AppInfoService.version,
        },
      ),
    );

    dio.interceptors.addAll(
      [
        DioTokenInterceptor(ref, dio),
        LogInterceptor(
          requestHeader: false,
          requestBody: true,
          request: true,
          responseBody: false,
          responseHeader: false,
        )
      ],
    );
    return dio;
  },
);

var appointmentDioProvider = Provider(
  (ref) {
    final dio = Dio(
      BaseOptions(baseUrl: Env.baseDevUrl),
    );
    return dio;
  },
);

var chatbotDioProvider = Provider(
  (ref) {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.chatbotUrl,
      ),
    );
    return dio;
  },
);
