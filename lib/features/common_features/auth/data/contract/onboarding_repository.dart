import 'package:eye_care_for_all/features/common_features/auth/data/models/patient_model.dart';

abstract class OnboardingRepository {
  Future<PatientModel> onboardPatient(PatientModel patientDTO);
}