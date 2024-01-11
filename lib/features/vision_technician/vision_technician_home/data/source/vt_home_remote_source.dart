import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VTHomeRemoteSource {
  Future<List<VTPatientDto>> getListOfPatients();
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
  Future<List<VTPatientDto>> getListOfPatients() async {
    final endPoint =
        '/services/orchestration/api/patients/triage-reports/practitioners/$_vtId';
    logger.d("endpoint $endPoint");
    try {
      final response = await _dio.get<List>(endPoint);
      logger.d("this is the response ${response.data.toString()}");
      final List<VTPatientDto> listOfPatients = response.data!
          .map((e) => VTPatientDto.fromJson(e))
          .toList()
          .cast<VTPatientDto>();

      return listOfPatients;
    }catch (e) {
      logger.d("Unknown error: ${e.toString()}");
      rethrow;
    }
  }
}
