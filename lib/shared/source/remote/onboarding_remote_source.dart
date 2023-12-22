import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/shared/models/patient_DTO.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var onboardingRemoteSourceProvider = Provider<OnboardingRemoteSource>((ref) {
  return OnboardingRemoteSourceImpl(ref.read(dioProvider));
});

abstract class OnboardingRemoteSource {
  Future<PatientDTO> onboardPatient(PatientDTO patientDTO);
}

class OnboardingRemoteSourceImpl implements OnboardingRemoteSource {
  final Dio _dio;

  OnboardingRemoteSourceImpl(this._dio);

  @override
  Future<PatientDTO> onboardPatient(PatientDTO patientDTO) async {
    var endpoint = "/service/orchestration/api/v1/patients/onboard";

    var response = await _dio.post(endpoint, data: patientDTO.toJson());

    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      return PatientDTO.fromJson(response.data);
    } else {
      throw Exception("Failed to onboard patient");
    }
  }
}
