import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TriageReportSource {
  Future<List<TriageDetailedReportModel>> getTriageReportsByPatientId(int patientId);

}

class TriageReportSourceImpl implements TriageReportSource {
  Dio dio;
  TriageReportSourceImpl(this.dio);

 

 
  
  @override
  Future<List<TriageDetailedReportModel>> getTriageReportsByPatientId(int patientId) async {
    var endpoint = "/services/triage/api/triage/triage-report?patient-id=$patientId";
    logger.d({
      "api url to get all triages reports by patient id": endpoint,
    });
    //generate headers for bearer token
   


    var response = await dio.get(endpoint);
   
    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      List<TriageDetailedReportModel> triageReports = [];
      response.data.forEach((element) {
        triageReports.add(TriageDetailedReportModel.fromJson(element));
      });
      return triageReports ;
    } else {
      throw ServerException();
    }
    
  }
  
  
}

var triagReportSourceProvider = Provider<TriageReportSource>(
  (ref) => TriageReportSourceImpl(
    ref.watch(dioProvider),
  ),
);