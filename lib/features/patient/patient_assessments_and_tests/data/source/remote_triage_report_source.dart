import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
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
    DiagnosticReportStatus status,
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
        "/services/triage/api/triage/triage-report?patient-id=$patientId";

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
    final endpoint = "/services/triage/api/triage-report/$reportId/details";

    final response = await dio.get(endpoint);

    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      TriageDetailedReportModel triageReport =
          TriageDetailedReportModel.fromJson(response.data);

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
        "/services/triage/api/triage/triage-report?patient-id=$patientId&status=${status.name}&page=$page&size=$size";

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
    DiagnosticReportStatus status,
    int? page,
    int? size,
    String? filter,
  ) async {
    String endpoint;

    if (page == null || size == null) {
      endpoint =
          "/services/triage/api/triage/triage-report?encounter-id=$encounterId";
    } else {
      endpoint =
          "/services/triage/api/triage/triage-report?encounter-id=$encounterId&page=$page&size=$size";
    }
    if (filter != null) {
      endpoint += "&$filter";
    }

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
}
