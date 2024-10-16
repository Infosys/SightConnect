/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/source/remote_triage_report_source.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/repository/triage_report_repository.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:eye_care_for_all/services/network_info.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageReportRepositoryProvider = Provider<TriageReportRepository>(
  (ref) => TriageReportRepositoryImpl(
    ref.watch(remoteTriageReportSourceProvider),
    ref.watch(connectivityProvider),
  ),
);

class TriageReportRepositoryImpl implements TriageReportRepository {
  final RemoteTriageReportSource triageReportSource;
  NetworkInfo networkInfo;

  TriageReportRepositoryImpl(
    this.triageReportSource,
    this.networkInfo,
  );

  @override
  Future<Either<Failure, List<TriageDetailedReportModel>>>
      getAllTriageReportsByPatientId(
    int patientId,
  ) async {
    if (await networkInfo.isConnected()) {
      try {
        final remoteResponse =
            await triageReportSource.getTriageReportsByPatientId(patientId);

        return Right(remoteResponse);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      } catch (e) {
        return Left(UnknownFailure(errorMessage: e.toString()));
      }
    } else {
      return Left(ServerFailure(errorMessage: 'No internet connectivity'));
    }
  }

  @override
  Future<Either<Failure, TriageDetailedReportModel>> getTriageReportByReportId(
    int reportId,
  ) async {
    if (await networkInfo.isConnected()) {
      try {
        final remoteResponse =
            await triageReportSource.getTriageReportByReportId(reportId);

        return Right(remoteResponse);
      } on ServerException catch (e) {
        return Left(
          UnknownFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    } else {
      return Left(ServerFailure(errorMessage: 'No internet connectivity'));
    }
  }

  @override
  Future<Either<Failure, List<TriageDetailedReportModel>>>
      getTriageReportByPatientIdAndStatus(
    int patientId,
    DiagnosticReportStatus status,
    int? page,
    int? size,
  ) async {
    if (await networkInfo.isConnected()) {
      try {
        final remoteResponse = await triageReportSource
            .getTriageReportByPatientIdAndStatus(patientId, status, page, size);

        return Right(remoteResponse);
      } on ServerException catch (e) {
        return Left(
          UnknownFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    } else {
      return Left(ServerFailure(errorMessage: 'No internet connectivity'));
    }
  }

  @override
  Future<Either<Failure, List<TriageDetailedReportModel>>>
      getTriageReportByEncounterId(
    int encounterId,
    List<DiagnosticReportStatus> status,
    int? page,
    int? size,
    String? filter,
  ) async {
    if (await networkInfo.isConnected()) {
      try {
        final remoteResponse =
            await triageReportSource.getTriageReportByEncounterId(
          encounterId,
          status,
          page,
          size,
          filter,
        );

        return Right(remoteResponse);
      } on ServerException catch (e) {
        return Left(
          UnknownFailure(
            errorMessage: e.toString(),
          ),
        );
      }
    } else {
      return Left(ServerFailure(errorMessage: 'No internet connectivity'));
    }
  }
}
