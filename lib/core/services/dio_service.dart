import 'package:dio/dio.dart';
import 'package:eye_care_for_all/app_environment.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var dioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: AppEnv.baseUrl,
    ),
  ),
);

var onboardingDioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: AppEnv.orchestrationBaseUrl,
    ),
  ),
);

var authDioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: AppEnv.keycloakBaseUrl,
    ),
  ),
);

var vtDioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      
    ),
  ),
);

// var onboardingDioProvider = Provider(
//   (ref) => Dio(
//     BaseOptions(
//       baseUrl: "http://10.110.36.226:8075/validation-ms",
//     ),
//   ),
// );
var dioCallCenterProvider = Provider(
  (ref) => Dio(
    BaseOptions(baseUrl: AppEnv.exotelBaseUrl),
  ),
);

var dioProfileProvider = Provider(
  (ref) => Dio(
    BaseOptions(baseUrl: AppEnv.profileBaseUrl),
  ),
);

var dioTriageProvider = Provider(
  (ref) => Dio(
    BaseOptions(baseUrl: AppEnv.triageBaseUrl),
  ),
);
