import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/data/models/patient_response_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientRemoteSourceProvider = Provider<PatientRemoteSource>((ref) => PatientRemoteSourceImpl(ref.read(dioProvider)));

abstract class PatientRemoteSource {
  Future<PatientResponseModel> getPatientDashboard(int patientId);
}

class PatientRemoteSourceImpl implements PatientRemoteSource {

  Dio _dio;
  
  PatientRemoteSourceImpl(this._dio);

  @override
  Future<PatientResponseModel> getPatientDashboard(int patientId) async {
    var endpoint = '/api/patients/extended/${patientId}';
    try {
      final response = await _dio.get(endpoint);
      return PatientResponseModel.fromJson(response.data);
    } catch (e) {
      throw e;
    }
  }
}