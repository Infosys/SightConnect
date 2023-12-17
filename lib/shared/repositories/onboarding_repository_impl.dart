import 'package:eye_care_for_all/shared/contracts/onboarding_repository.dart';
import 'package:eye_care_for_all/shared/models/patient_DTO.dart';
import 'package:eye_care_for_all/shared/source/remote/onboarding_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var onboardingRepositoryProvider = Provider<OnboardingRepository>((ref) {
  return OnboardingRepositoryImpl(
    ref.read(onboardingRemoteSourceProvider)
  );
});

class OnboardingRepositoryImpl implements OnboardingRepository {

  OnboardingRemoteSource _onboardingRemoteSource;

  OnboardingRepositoryImpl(this._onboardingRemoteSource);

  @override
  Future<PatientDTO> onboardPatient(PatientDTO triageDTO) async {
    try {
      final remoteResponse = await _onboardingRemoteSource.onboardPatient(triageDTO);
      return remoteResponse;
    } catch (e) {
      throw e;
    }
  }
}