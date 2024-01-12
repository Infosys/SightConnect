// https://eyecare4all-dev.infosysapps.com/services/orchestration/api/practitioners/filter?officialMobile=8888888741

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/repositories/vt_authentication_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtAuthenticationRepositoryProvider =
    Provider<VtAuthenticationRepository>((ref) {
  final dio = ref.read(dioProvider);
  return VtAutheticationRepositoryImpl(dio);
});

class VtAutheticationRepositoryImpl implements VtAuthenticationRepository {
  final Dio _dio;
  VtAutheticationRepositoryImpl(this._dio);

  @override
  Future<Either<Failure, List<VtProfileModel>>> getVtProfile(
      String mobile) async {
    if (mobile.startsWith("+91")) {
      mobile = mobile.substring(3);
    }
    final endpoint =
        "/services/orchestration/api/practitioners/filter?officialMobile=$mobile";
    try {
      final response = await _dio.get<List>(endpoint);

      return Right(
          response.data!.map((e) => VtProfileModel.fromJson(e)).toList());
    } on DioException catch (e) {
      logger.e("Error in getVtProfile: ${e.response!.data["message"]}");
      return Left(
        ServerFailure(errorMessage: "${e.response!.data["message"]}"),
      );
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
