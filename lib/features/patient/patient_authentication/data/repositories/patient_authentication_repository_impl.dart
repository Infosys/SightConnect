import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/models/profile_model.dart';
import 'package:eye_care_for_all/features/patient/patient_authentication/domain/repositories/patient_authentication_repository.dart';

import 'package:eye_care_for_all/features/patient/patient_authentication/data/source/remote/onboarding_remote_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var patientAuthenticationRepositoryProvider =
    Provider<PatientAuthenticationRepository>((ref) {
  return PatientAuthenticationRepositoryImpl(
    ref.watch(patientAuthRemoteSourceProvider),
  );
});

class PatientAuthenticationRepositoryImpl
    implements PatientAuthenticationRepository {
  final PatientAuthRemoteSource _patientAuthRemoteSource;

  PatientAuthenticationRepositoryImpl(this._patientAuthRemoteSource);

  @override
  Future<Either<Failure, PatientModel>> onboardPatient(
    PatientModel triageDTO,
  ) async {
    try {
      final remoteResponse =
          await _patientAuthRemoteSource.onboardPatient(triageDTO);
      return Right(remoteResponse);
    } catch (e) {
      return Left(
        ServerFailure(errorMessage: 'This is a server exception'),
      );
    }
  }

  @override
  Future<Either<Failure, PatientResponseModel>> getPatientProfile(
      int patientId) async {
    try {
      final remoteResponse =
          await _patientAuthRemoteSource.getPatientProfile(patientId);
      return Right(remoteResponse);
    } catch (e) {
      return Left(
        ServerFailure(errorMessage: 'This is a server exception'),
      );
    }
  }

  @override
  Future<Either<Failure, PatientResponseModel>> updatePatientProfile(
      PatientModel patientDTO) async {
    try {
      final remoteResponse =
          await _patientAuthRemoteSource.updatePatientProfile(patientDTO);
      return Right(remoteResponse);
    } catch (e) {
      return Left(
        ServerFailure(errorMessage: 'This is a server exception'),
      );
    }
  }

}
