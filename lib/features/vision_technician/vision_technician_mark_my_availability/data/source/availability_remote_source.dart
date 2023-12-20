import 'package:dio/dio.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/domain/models/availability_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/services/dio_service.dart';

abstract class AvailabilityRemoteSource {
  Future<bool> markAvailability({required AvailabilityModel availability});
}

var availabilityRemoteSource = Provider(
  (ref) => AvailabilityRemoteSourceImpl(
    ref.read(dioProvider),
  ),
);

class AvailabilityRemoteSourceImpl implements AvailabilityRemoteSource {
  final Dio _dio;

  AvailabilityRemoteSourceImpl(this._dio);

  @override
  Future<bool> markAvailability({
    required AvailabilityModel availability,
  }) async {
    String url = "/api/markAvailability";
    try {
      var response = await _dio.post(url, data: availability.toJson());
      return AvailabilityModel.fromJson(response.data).available;
    } catch (e) {
      logger.d("markAvailability error: $e");
      rethrow;
    }
  }
}
