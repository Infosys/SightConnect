import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_profile/data/source/remote/onboarding_remote_source.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_profile/domain/repositories/patient_authentication_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:eye_care_for_all/services/failure.dart';
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
        ServerFailure(errorMessage: "$e"),
      );
    }
  }

  @override
  Future<Either<Failure, PatientResponseModel>> getPatientProfile(int patientId,
      [IdentifierType? identifierType, String? value]) async {
    try {
      final remoteResponse = await _patientAuthRemoteSource.getPatientProfile(
        patientId,
        identifierType,
        value,
      );
      return Right(remoteResponse);
    } catch (e) {
      return Left(ServerFailure(errorMessage: "$e"));
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
      return Left(ServerFailure(errorMessage: "$e"));
    }
  }

  @override
  Future<Either<Failure, PatientResponseModel>> getPatientProfileByPhone(
      String phoneNumber) async {
    try {
      final remoteResponse =
          await _patientAuthRemoteSource.getPatientProfileByPhone(phoneNumber);

      if (remoteResponse.isEmpty) {
        return Left(
          NotFoundFailure(errorMessage: "No Patient Found"),
        );
      } else {
        return Right(remoteResponse.first);
      }
    } catch (e) {
      return Left(
        ServerFailure(errorMessage: "$e"),
      );
    }
  }
}
