import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/enums/identifier_type.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/profile_model.dart';

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
