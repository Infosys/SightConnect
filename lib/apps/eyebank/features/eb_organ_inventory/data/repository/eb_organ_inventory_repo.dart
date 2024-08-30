import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/eyebank/features/eb_organ_inventory/data/model/eb_organ_inventory_analytics_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class EBOrganInventoryRepository {
  // GET : Organ inventory statistics
  Future<Either<EBFailure, EbOrganInventoryAnalyticsModel>>
      getOrganInventoryStatistics();
}

final ebOrganInventoryRepositoryProvider = Provider(
  (ref) => EBOrganInventoryRepositoryImpl(
    ref.watch(dioProvider),
  ),
);

class EBOrganInventoryRepositoryImpl extends EBOrganInventoryRepository {
  final Dio _dio;
  EBOrganInventoryRepositoryImpl(this._dio);

  @override
  Future<Either<EBFailure, EbOrganInventoryAnalyticsModel>>
      getOrganInventoryStatistics() async {
    return EyeBankErrorHandler.handle(() async {
      const endPoint = '/services/eyebank/api/encounters/inventory/stats';
      final response = await _dio.get(endPoint);
      if (response.statusCode == 200) {
        final data = EbOrganInventoryAnalyticsModel.fromJson(response.data);
        return data;
      } else {
        throw Exception(response.statusMessage ??
            'Failed to fetch organ inventory statistics');
      }
    });
  }
}
