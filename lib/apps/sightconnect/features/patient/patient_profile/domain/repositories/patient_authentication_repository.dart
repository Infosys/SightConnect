import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/models/patient_response_model.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';

abstract class PatientAuthenticationRepository {
  Future<Either<Failure, PatientModel>> onboardPatient(PatientModel patientDTO);
  Future<Either<Failure, PatientResponseModel>> getPatientProfile(
    int patientId, [
    IdentifierType identifierType,
    String value,
  ]);
  Future<Either<Failure, PatientResponseModel>> updatePatientProfile(
    PatientModel patientDTO,
  );
  Future<Either<Failure, PatientResponseModel>> getPatientProfileByPhone(
    String phoneNumber,
  );
}
