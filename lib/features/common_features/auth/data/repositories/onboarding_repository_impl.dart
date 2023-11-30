import 'package:eye_care_for_all/features/common_features/auth/data/contract/onboarding_repository.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/patient_model.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/source/remote/onboarding_remote_source.dart';
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
  Future<PatientModel> onboardPatient(PatientModel triageDTO) async {
    try {
      final remoteResponse = await _onboardingRemoteSource.onboardPatient(triageDTO);
      return remoteResponse;
    } catch (e) {
      throw e;
    }
  }
}