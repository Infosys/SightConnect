// import 'package:eye_care_for_all/core/models/patient_response_model.dart';
// import 'package:eye_care_for_all/features/patient/patient_profile/data/repositories/patient_authentication_repository_impl.dart';
// import 'package:eye_care_for_all/main.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// final getPatientProfileByIdProvider =
//     FutureProvider.family<PatientResponseModel, int>((ref, patientId) async {
//   final authRepo = ref.watch(patientAuthenticationRepositoryProvider);
//   final response = await authRepo.getPatientProfile(patientId);

//   return response.fold((error) {
//     logger.e(error);
//     throw error;
//   }, (result) {
//     logger.d(result);
//     return result;
//   });
// });
