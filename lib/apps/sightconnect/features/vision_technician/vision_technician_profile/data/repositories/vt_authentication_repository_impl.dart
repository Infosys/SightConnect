/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_profile/data/repositories/vt_authentication_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtAuthenticationRepositoryProvider =
    Provider<VtAuthenticationRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return VtAutheticationRepositoryImpl(dio);
});

class VtAutheticationRepositoryImpl implements VtAuthenticationRepository {
  final Dio _dio;
  VtAutheticationRepositoryImpl(this._dio);

  @override
  Future<Either<Failure, List<VtProfileModel>>> getVtProfile(
      String mobile) async {
    logger.d("Fetching VT Profile : $mobile");
    logger.d(_dio.options.headers.toString());
    if (mobile.startsWith("+91")) {
      mobile = mobile.substring(3);
    }
    final endpoint =
        "/services/orchestration/api/v2/practitioners/filter?officialMobile=$mobile";
    try {
      final response = await _dio.get<List<dynamic>>(endpoint);
      logger.d("VT Profile Response: ${response.data}");

      final data =
          response.data?.map((e) => VtProfileModel.fromJson(e)).toList();

      logger.d("VT Profile Data: $data");

      return Right(data!);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      return Left(
        ServerFailure(errorMessage: "${e.response!.data["message"]}"),
      );
    } catch (e) {
      logger.e("Error in getVtProfile: $e");
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
