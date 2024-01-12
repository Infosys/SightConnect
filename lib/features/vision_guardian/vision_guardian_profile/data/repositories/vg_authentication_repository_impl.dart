import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/data/models/vg_profile_model.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_profile/data/repositories/vg_authentication_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vgAuthenticationRepositoryProvider =
    Provider<VgAuthenticationRepository>((ref) {
  final dio = ref.read(dioProvider);
  return VgAutheticationRepositoryImpl(dio);
});

class VgAutheticationRepositoryImpl implements VgAuthenticationRepository {
  final Dio _dio;
  VgAutheticationRepositoryImpl(this._dio);

  @override
  Future<Either<Failure, List<VgProfileModel>>> getVgProfile(
      String mobile) async {
    if (mobile.startsWith("+91")) {
      mobile = mobile.substring(3);
    }
    final endpoint =
        "/services/orchestration/api/practitioners/filter?officialMobile=$mobile";
    try {
      final response = await _dio.get<List>(endpoint);
      log(response.data.toString());

      return Right(
          response.data!.map((e) => VgProfileModel.fromJson(e)).toList());
    } on DioException catch (e) {
      return Left(
        ServerFailure(errorMessage: "${e.response!.data["message"]}"),
      );
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
