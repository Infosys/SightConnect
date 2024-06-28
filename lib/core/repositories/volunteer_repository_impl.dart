import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/models/volunteer_post_model.dart';
import 'package:eye_care_for_all/core/repositories/volunteer_repository.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var checkVolunteerProvider = FutureProvider((ref) {
  Dio dio = ref.read(dioProvider);
  Future<VolunteerPostModel> checkVolunteer(String id) async {
    final endPoint = "/services/orchestration/api/v2/volunteers/users/$id";
    try {
      var response = await dio.get(endPoint);
      logger.d("check volunteer response : ${response.toString()}");
      return VolunteerPostModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      e.response!.statusCode == 404 ? throw "404" : throw "500";
    } catch (e) {
      rethrow;
    }
  }

  return checkVolunteer(PersistentAuthStateService.authState.userId!);
});

var volunteerRepositoryProvider = Provider<VolunteerRepository>((ref) {
  return VolunteerRepositoryImpl(
    ref.watch(dioProvider),
  );
});

class VolunteerRepositoryImpl implements VolunteerRepository {
  final Dio _dio;
  VolunteerRepositoryImpl(this._dio);
  @override
  Future<void> postVolunteer(VolunteerPostModel volunteerPostModel) async {
    logger.d(" post volunteer details : $volunteerPostModel");
    const endPoint = "/services/orchestration/api/v2/volunteers";
    try {
      var response =
          await _dio.post(endPoint, data: volunteerPostModel.toJson());

      logger.d("post volunteer response : ${response.toString()}");
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
