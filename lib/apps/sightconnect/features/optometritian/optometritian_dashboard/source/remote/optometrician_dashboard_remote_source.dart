import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/models/optometrician_dashboard_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class OptometricianDashboardRemoteSource {
  Future<OptometricianDashboardModel> getOptometricianDashboard(
      String capturedBy);
}

class OptometricianDashboardRemoteSourceImpl
    implements OptometricianDashboardRemoteSource {
  final Dio _dio;
  OptometricianDashboardRemoteSourceImpl(this._dio);

  @override
  Future<OptometricianDashboardModel> getOptometricianDashboard(
      String capturedBy) async {
    var endpoint =
        "/services/validation/api/patient-responses/dashboard/$capturedBy";

    DateTime dateToday = DateTime.now();

    var response = await _dio.get(endpoint,
        queryParameters: {"date": dateToday.toUtc().toIso8601String()});

    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      logger.d(OptometricianDashboardModel.fromJson(response.data));
      return OptometricianDashboardModel.fromJson(response.data);
    } else {
      throw Exception();
    }
  }
}

var optometricianDashboardRemoteSource =
    Provider<OptometricianDashboardRemoteSource>((ref) =>
        OptometricianDashboardRemoteSourceImpl(
            ref.read(validationDioProvider)));
