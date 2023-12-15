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
      baseUrl: AppEnv.baseUrl2,
    ),
  ),
);

var authDioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: AppEnv.baseKeycloakUrl,
    ),
  ),
);

var vtDioProvider = Provider(
  (ref) => Dio(
    BaseOptions(
      baseUrl: AppEnv.baseUrl3,
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