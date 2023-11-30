import 'package:eye_care_for_all/features/common_features/auth/data/contract/patient_authentication_repository.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/patient_model.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/patient_response_model.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/source/remote/onboarding_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientAuthenticationRepositoryProvider =
    Provider<PatientAuthenticationRepository>((ref) {
  return PatientAuthenticationRepositoryImpl(
    ref.watch(patientAuthRemoteSourceProvider),
  );
});

class PatientAuthenticationRepositoryImpl
    implements PatientAuthenticationRepository {
  final PatientAuthRemoteSource _patientAuthRemoteSource;

  PatientAuthenticationRepositoryImpl(this._patientAuthRemoteSource);

  @override
  Future<PatientModel> onboardPatient(PatientModel triageDTO) async {
    try {
      final remoteResponse =
          await _patientAuthRemoteSource.onboardPatient(triageDTO);
      return remoteResponse;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PatientResponseModel> getPatientProfile(int patientId) async {
    try {
      return await _patientAuthRemoteSource.getPatientProfile(patientId);
    } catch (e) {
      rethrow;
    }
  }
}
