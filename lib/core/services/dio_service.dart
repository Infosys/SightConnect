import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/constants/api_constant.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/providers/global_tenant_provider.dart';
import 'package:eye_care_for_all/core/services/interceptors.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../main.dart';
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

final dioProvider = Provider(
  (ref) {
    final lang = ref.watch(globalLanguageProvider).currentLocale?.languageCode;

    int? getTenantId() {
      if (PersistentAuthStateService.authState.activeRole ==
          "ROLE_VISION_TECHNICIAN") {
        logger.f("changing tenant based on Role = VT");
        return ref.watch(globalTenantProvider).tenantIdVt;
      } else if (PersistentAuthStateService.authState.activeRole ==
          "ROLE_PATIENT") {
        logger.f("changing tenant based on Role = Patient");
        return ref.watch(globalTenantProvider).tenantId;
      }
      return null;
    }

    int? getOrganizationId() {
      if (PersistentAuthStateService.authState.activeRole ==
          "ROLE_VISION_TECHNICIAN") {
        return ref.watch(globalTenantProvider).organizationIdVt;
      } else if (PersistentAuthStateService.authState.activeRole ==
          "ROLE_PATIENT") {
        return ref.watch(globalTenantProvider).organizationId;
      }
      return null;
    }
   
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.baseUrl,
        headers: {
          "X-Accept-Language": lang,
          "X-Active-Role": PersistentAuthStateService.authState.activeRole,
          "X-App-Version": AppInfoService.appVersion,
          "X-Tenant-Code": getTenantId(),
          "X-Organization-Code": getOrganizationId(),
        },
      ),
    );

    dio.interceptors.addAll(
      [
        DioTokenInterceptor(ref, dio),
        LogInterceptor(
          requestHeader: true,
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

final appointmentDioProvider = Provider(
  (ref) {
    final dio = Dio(
      BaseOptions(baseUrl: ApiConstant.baseUrl),
    );
    return dio;
  },
);

final chatbotDioProvider = Provider(
  (ref) {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiConstant.chatbotUrl,
      ),
    );
    return dio;
  },
);
