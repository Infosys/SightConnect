import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triagReportSourceProvider = Provider<TriageReportSource>(
  (ref) => TriageReportSourceImpl(
    ref.watch(dioProvider),
  ),
);

abstract class TriageReportSource {
  Future<List<TriageDetailedReportModel>> getTriageReportsByPatientId(
      int patientId);

  Future<TriageDetailedReportModel> getTriageReportByReportId(int reportId);
}

class TriageReportSourceImpl implements TriageReportSource {
  Dio dio;
  TriageReportSourceImpl(this.dio);

  @override
  Future<List<TriageDetailedReportModel>> getTriageReportsByPatientId(
      int patientId) async {
    var endpoint =
        "/services/triage/api/triage/triage-report?patient-id=$patientId";
    logger.d({
      "api url to get all triages reports by patient id": endpoint,
    });

    var response = await dio.get(endpoint);

    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      List<TriageDetailedReportModel> triageReports = [];
      response.data.forEach((element) {
        triageReports.add(TriageDetailedReportModel.fromJson(element));
      });
      return triageReports;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TriageDetailedReportModel> getTriageReportByReportId(
      int reportId) async {
    var endpoint = "/services/triage/api/$reportId/triage-report/details";
    logger.d({
      "api url to get triages reports by report id": endpoint,
    });

    var response = await dio.get(endpoint);

    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      TriageDetailedReportModel triageReport =
          TriageDetailedReportModel.fromJson(response.data);

      return triageReport;
    } else {
      throw ServerException();
    }
  }
}
