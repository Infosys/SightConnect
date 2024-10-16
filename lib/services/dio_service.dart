/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_language_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/providers/global_tenant_provider.dart';
import 'package:eye_care_for_all/env.dart';
import 'package:eye_care_for_all/services/interceptors.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/shared/constants/api_constant.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app_info_service.dart';

final keycloakDioProvider = Provider(
  (ref) {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
      ),
    );
    dio.interceptors.addAll([]);
    return dio;
  },
);

final dioProvider = StateNotifierProvider<DioService, Dio>((ref) {
  return DioService(ref);
});

final appointmentDioProvider = Provider(
  (ref) {
    final dio = Dio(
      BaseOptions(baseUrl: ApiConstant.baseUrl),
    );
    return dio;
  },
);

final validationDioProvider = Provider(
  (ref) {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        headers: {
          "X-Active-Role": PersistentAuthStateService.authState.activeRole,
          "X-App-Version": AppInfoService.appVersion,
        },
      ),
    );
    return dio;
  },
);

final chatbotDioProvider = Provider(
  (ref) {
    final dio = Dio(
      BaseOptions(
        baseUrl: Env.chatbotUrl,
      ),
    );
    return dio;
  },
);

class DioService extends StateNotifier<Dio> {
  Ref ref;
  DioService(this.ref)
      : super(
          Dio(
            BaseOptions(
              baseUrl: ApiConstant.baseUrl,
              sendTimeout: const Duration(seconds: 120),
              receiveTimeout: const Duration(seconds: 120),
              connectTimeout: const Duration(seconds: 120),
            ),
          ),
        ) {
    setupRequestHeaders();
    setupInterceptors();
  }

  void setupRequestHeaders() {
    final lang = ref.watch(globalLanguageProvider).currentLocale?.languageCode;
    final globalTenant = ref.watch(globalTenantProvider);
    final role = PersistentAuthStateService.authState.activeRole;
    final appVersion = AppInfoService.appVersion;

    state.options.headers["X-Accept-Language"] = lang;
    state.options.headers["X-App-Version"] = appVersion;
    state.options.headers["X-Active-Role"] = role;
    state.options.headers["X-Tenant-Code"] = globalTenant.getTenantId(role);
    state.options.headers["X-Organization-Code"] =
        globalTenant.getOrganizationId(role);
  }

  void setupInterceptors() {
    state.interceptors.addAll([
      DioTokenInterceptor(ref, state),
      LogInterceptor(
        requestHeader: true,
        requestBody: true,
        request: true,
        responseBody: false,
        responseHeader: false,
      )
    ]);
  }

  void updateHeaders({
    String? activeRole,
    String? lang,
    String? appVersion,
  }) {
    if (activeRole != null) {
      state.options.headers["X-Active-Role"] = activeRole;
      updateTenantHeaders(activeRole);
    }
    if (lang != null) {
      state.options.headers["X-Accept-Language"] = lang;
    }
    if (appVersion != null) {
      state.options.headers["X-App-Version"] = appVersion;
    }
  }

  void updateTenantHeaders(String? role) {
    final tenantProvider = ref.watch(globalTenantProvider);
    state.options.headers["X-Tenant-Code"] = tenantProvider.getTenantId(role);
    state.options.headers["X-Organization-Code"] =
        tenantProvider.getOrganizationId(role);
  }
}
