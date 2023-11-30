import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/patient_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


var onboardingRemoteSourceProvider = Provider<OnboardingRemoteSource>((ref) {
  return OnboardingRemoteSourceImpl(
    ref.read(dioProvider)
  );
});

abstract class OnboardingRemoteSource {
  Future<PatientModel> onboardPatient(PatientModel patientDTO);
}

class OnboardingRemoteSourceImpl implements OnboardingRemoteSource {

  Dio _dio;

  OnboardingRemoteSourceImpl(this._dio);

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
}