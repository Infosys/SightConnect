import 'package:eye_care_for_all/features/patient/patient_appointments/data/models/uhi_search_model.dart';

abstract class PatientAppointmentRepository {
  Future<bool> sendAppointmentDetails(UhiSearchModel uhiSearchModel);
}
