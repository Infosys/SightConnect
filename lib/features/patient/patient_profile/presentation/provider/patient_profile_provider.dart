import 'package:eye_care_for_all/features/patient/patient_profile/data/repositories/patient_authentication_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/models/profile_model.dart';

final getPatientProfileByIdProvider =
    FutureProvider.family<PatientResponseModel, int>((ref, patientId) async {
  final authRepo = ref.watch(patientAuthenticationRepositoryProvider);
  final response = await authRepo.getPatientProfile(patientId);

  return response.fold((error) {
    throw error;
  }, (result) {
    return result;
  });
});

final updatePatientProfileProvider = FutureProvider((ref) async {
  const patientId = 1202;
  final authRepo = ref.watch(patientAuthenticationRepositoryProvider);
  final response = await authRepo.getPatientProfile(patientId); //update method

  return response.fold((error) {
    return error;
  }, (result) {
    return result;
  });
});
