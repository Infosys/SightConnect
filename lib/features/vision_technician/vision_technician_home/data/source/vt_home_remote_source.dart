import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
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
  final int _id;

  VTHomeRemoteSourceImpl(this._dio, this._id);

  @override
  Future<List<VTPatientDto>> getListOfPatients() async {
    const endPoint =
        '/services/orchestration/api/patients/triage-reports/practitioners/2151';

    try {
      final response = await _dio.get<List>(endPoint);

      final List<VTPatientDto> listOfPatients = response.data!
          .map((e) => VTPatientDto.fromJson(e))
          .toList()
          .cast<VTPatientDto>();

      return listOfPatients;
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    }
  }
}
