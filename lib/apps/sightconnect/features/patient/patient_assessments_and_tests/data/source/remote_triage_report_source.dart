/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var remoteTriageReportSourceProvider = Provider<RemoteTriageReportSource>(
  (ref) => RemoteTriageReportSourceImpl(
    ref.watch(dioProvider),
  ),
);

abstract class RemoteTriageReportSource {
  Future<List<TriageDetailedReportModel>> getTriageReportsByPatientId(
    int patientId,
  );

  Future<TriageDetailedReportModel> getTriageReportByReportId(int reportId);
  Future<List<TriageDetailedReportModel>> getTriageReportByPatientIdAndStatus(
    int patientId,
    DiagnosticReportStatus status,
    int? page,
    int? size,
  );
  Future<List<TriageDetailedReportModel>> getTriageReportByEncounterId(
    int encounterId,
    List<DiagnosticReportStatus> status,
    int? page,
    int? size,
    String? filter,
  );
}

class RemoteTriageReportSourceImpl implements RemoteTriageReportSource {
  Dio dio;
  RemoteTriageReportSourceImpl(this.dio);

  @override
  Future<List<TriageDetailedReportModel>> getTriageReportsByPatientId(
      int patientId) async {
    final endpoint =
        "/services/triage/api/v2/triage-report?patient-id=$patientId";

    try {
      final response = await dio.get(endpoint);

      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        List<TriageDetailedReportModel> triageReports = [];
        response.data.forEach(
          (element) {
            triageReports.add(TriageDetailedReportModel.fromJson(element));
          },
        );
        return triageReports;
      } else {
        throw ServerException();
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TriageDetailedReportModel> getTriageReportByReportId(
      int reportId) async {
    final endpoint = "/services/triage/api/v2/triage-report/$reportId";

    final response = await dio.get(endpoint);

    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      TriageDetailedReportModel triageReport =
          TriageDetailedReportModel.fromJson(response.data);
      logger.d("Triage Report: $triageReport");
      return triageReport;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<TriageDetailedReportModel>> getTriageReportByPatientIdAndStatus(
    int patientId,
    DiagnosticReportStatus status,
    int? page,
    int? size,
  ) async {
    page ??= 0;
    size ??= 10;
    final String endpoint;

    endpoint =
        "/services/triage/api/v2/triage-report?patient-id=$patientId&status=${status.name}&page=$page&size=$size";

    final response = await dio.get(endpoint);

    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      List<TriageDetailedReportModel> triageReports = [];
      response.data.forEach(
        (element) {
          triageReports.add(TriageDetailedReportModel.fromJson(element));
        },
      );
      return triageReports;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<TriageDetailedReportModel>> getTriageReportByEncounterId(
    int encounterId,
    List<DiagnosticReportStatus> status,
    int? page,
    int? size,
    String? filter,
  ) async {
    String endpoint;

    if (page == null || size == null) {
      endpoint =
          "/services/triage/api/v2/triage-report?encounter-id=$encounterId";
    } else {
      endpoint =
          "/services/triage/api/v2/triage-report?encounter-id=$encounterId&page=$page&size=$size";
    }
    if (filter != null) {
      endpoint += "&$filter";
    }

    if (status.isNotEmpty) {
      endpoint += "&status=${status.map((e) => e.name).join(",")}";
    }

    ///ABCD

    final response = await dio.get(
      endpoint,
    );

    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      List<TriageDetailedReportModel> triageReports = [];
      response.data.forEach(
        (element) {
          triageReports.add(TriageDetailedReportModel.fromJson(element));
        },
      );
      return triageReports;
    } else {
      throw ServerException();
    }
  }
}
