import 'package:eye_care_for_all/features/common_features/auth/data/models/patient_model.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/patient_response_model.dart';

abstract class PatientAuthenticationRepository {
  Future<PatientModel> onboardPatient(PatientModel patientDTO);
  Future<PatientResponseModel> getPatientProfile(int patientId);
}
