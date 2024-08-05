import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/performer_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class PerformersProfileRepository {
  Future<PerformerModel> getPerformerProfile();
}

var performersProfileRepositoryProvider = Provider<PerformersProfileRepository>(
  (ref) => PerformersProfileRepositoryImpl(
    ref.watch(dioProvider),
  ),
);

class PerformersProfileRepositoryImpl implements PerformersProfileRepository {
  final Dio _dio;
  PerformersProfileRepositoryImpl(this._dio);

  @override
  Future<PerformerModel> getPerformerProfile() async {
    var endpoint = "/services/orchestration/api/v2/performers/account";
    try {
      var response = await _dio.get(endpoint);
      logger.d("get performer profile response : ${response.data.toString()}");
      return PerformerModel.fromJson(response.data);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    }
  }
}
