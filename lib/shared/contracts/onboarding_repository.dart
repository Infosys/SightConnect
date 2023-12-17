import 'package:eye_care_for_all/shared/models/patient_DTO.dart';

abstract class OnboardingRepository {
  Future<PatientDTO> onboardPatient(PatientDTO patientDTO);
}