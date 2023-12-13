import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/models/profile_model.dart';

var patientAuthRemoteSourceProvider = Provider<PatientAuthRemoteSource>((ref) {
  return PatientAuthRemoteSourceImpl(ref.read(onboardingDioProvider));
});

abstract class PatientAuthRemoteSource {
  Future<PatientModel> onboardPatient(PatientModel patientDTO);
  Future<PatientResponseModel> getPatientProfile(int patientId);
  Future<PatientResponseModel> updatePatientProfile(PatientModel patientDTO);
}

class PatientAuthRemoteSourceImpl implements PatientAuthRemoteSource {
  final Dio _dio;

  PatientAuthRemoteSourceImpl(this._dio);

  @override
  Future<PatientModel> onboardPatient(PatientModel patientDTO) async {
    var endpoint = "/api/patients/onboard";

    var response = await _dio.post(endpoint, data: patientDTO.toJson());

    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      return PatientModel.fromJson(response.data);
    } else {
      throw Exception("Failed to onboard patient");
    }
  }

  @override
  Future<PatientResponseModel> getPatientProfile(int patientId) async {
    var endpoint = '/api/patients/extended/$patientId';
    try {
      final response = await _dio.get(endpoint);
      return PatientResponseModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PatientResponseModel> updatePatientProfile(
      PatientModel patientDTO) async {
    var endpoint = "/api/patients/${patientDTO.id}";

    var response = await _dio.post(endpoint, data: patientDTO.toJson());

    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      return PatientResponseModel.fromJson(response.data);
    } else {
      throw Exception("Failed to update patient");
    }
  }

}
