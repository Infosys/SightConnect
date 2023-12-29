// https://eyecare4all-dev.infosysapps.com/services/orchestration/api/practitioners/filter?officialMobile=8888888741

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
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
  Future<Either<Failure, VtProfileModel>> getVtProfile() async {
    const mobile = "";
    const endpoint =
        "/services/orchestration/api/practitioners/filter?officialMobile=$mobile";
    try {
      final response = await _dio.get(endpoint);

      return Right(VtProfileModel.fromJson(response.data));
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      return Left(
        ServerFailure(errorMessage: e.response?.data["message"] ?? e.message),
      );
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
