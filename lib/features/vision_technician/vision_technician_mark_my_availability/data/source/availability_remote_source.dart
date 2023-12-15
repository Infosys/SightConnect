import 'package:dio/dio.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/data/models/availability_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/services/dio_service.dart';

abstract class AvailabilityRemoteSource {
  Future markAvailability({required AvailabilityModel availability});
}

var availabilityRemoteSource = Provider(
  (ref) => AvailabilityRemoteSourceImpl(
    ref.read(dioProfileProvider),
  ),
);

class AvailabilityRemoteSourceImpl implements AvailabilityRemoteSource {
  Dio _dio;

  AvailabilityRemoteSourceImpl(this._dio);

  @override
  Future markAvailability({required AvailabilityModel availability}) async {
    String url = "/api/markAvailability";
    return await _dio.post(url, data: availability.toJson());
  }
}
