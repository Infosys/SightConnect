import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_home/data/models/eb_home_stage_analytics_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class EBHomeRepository {
  // GET : Eye bank stage statistics
  Future<Either<EBFailure, List<EbHomeStageAnalyticsModel>>>
      getEyeBankStageStatistics(String timelineName);
}

final ebHomeRepositoryProvider = Provider(
  (ref) => EBHomeRepositoryImpl(
    ref.watch(dioProvider),
  ),
);

class EBHomeRepositoryImpl extends EBHomeRepository {
  final Dio _dio;
  EBHomeRepositoryImpl(this._dio);

  @override
  Future<Either<EBFailure, List<EbHomeStageAnalyticsModel>>>
      getEyeBankStageStatistics(String timelineName) async {
    return EyeBankErrorHandler.handle(() async {
      final endPoint =
          '/services/eyebank/api/encounters/timelines/${timelineName}/stats';

      final response = await _dio.get(endPoint);
      if (response.statusCode == 200) {
        final data = (response.data as List)
            .map((e) => EbHomeStageAnalyticsModel.fromJson(e))
            .toList();
        return data;
      } else {
        throw Exception(
            response.statusMessage ?? 'Error in getEyeBankStageStatistics');
      }
    });
  }
}
