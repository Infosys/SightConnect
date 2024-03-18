import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/table_params.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_analytics_stats.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VTHomeRemoteSource {
  Future<List<VTPatientDto>> getListOfPatients(TableParams tableParams);
  Future<List<VtAnalyticsStats>> getVtAnalyticsStats();
}

var vtHomeRemoteSource = Provider(
  (ref) => VTHomeRemoteSourceImpl(
    ref.watch(dioProvider),
    ref.watch(globalVTProvider).userId,
  ),
);

class VTHomeRemoteSourceImpl implements VTHomeRemoteSource {
  final Dio _dio;
  final int _vtId;

  VTHomeRemoteSourceImpl(this._dio, this._vtId);

  @override
  Future<List<VTPatientDto>> getListOfPatients(TableParams tableParams) async {
    String endPoint =
        '/services/orchestration/api/patients/triage-reports/practitioners/$_vtId?';
    if (tableParams.category != "ALL") {
      endPoint += "category=${tableParams.category}&";
    }
    endPoint += "page=${tableParams.page}&size=${tableParams.size}";

    try {
      final response = await _dio.get<List<dynamic>>(endPoint);
      logger.d("this is the response ${response.data.toString()}");
      final listOfPatients =
          response.data!.map((e) => VTPatientDto.fromJson(e)).toList();

      return listOfPatients;
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e(e.toString());
      rethrow;
    }
  }

  @override
  Future<List<VtAnalyticsStats>> getVtAnalyticsStats() {
    String endPoint =
        '/services/orchestration/api/analytics/performers/statistics?performer-id=$_vtId';
    try {
      final response = _dio.get(endPoint);
      return response.then((value) => value.data
          .map<VtAnalyticsStats>((e) => VtAnalyticsStats.fromJson(e))
          .toList());
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e(e.toString());
      rethrow;
    }
  }
}
