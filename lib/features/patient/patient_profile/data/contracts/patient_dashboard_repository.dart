import 'package:eye_care_for_all/features/patient/patient_profile/data/models/patient_response_model.dart';

abstract class PatientProfileRepository {
  Future<PatientResponseModel> getPatientDetails(int patientId);
}