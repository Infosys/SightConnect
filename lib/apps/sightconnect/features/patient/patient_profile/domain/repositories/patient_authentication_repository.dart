/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/models/patient_response_model.dart';
import 'package:eye_care_for_all/services/failure.dart';

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
