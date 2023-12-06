import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/patient_model.dart';
import 'package:eye_care_for_all/features/common_features/auth/data/models/patient_response_model.dart';

abstract class PatientAuthenticationRepository {
  Future<Either<Failure, PatientModel>> onboardPatient(PatientModel patientDTO);
  Future<Either<Failure, PatientResponseModel>> getPatientProfile(
    int patientId,
  );
}
