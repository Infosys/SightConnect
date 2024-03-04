import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/data/models/eua_on_search_model.dart';
import 'package:eye_care_for_all/features/patient/patient_appointments/data/models/uhi_search_model.dart';

abstract class PatientAppointmentRepository {
  Future<bool> sendAppointmentDetails(UhiSearchModel uhiSearchModel);
}
