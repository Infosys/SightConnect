import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TriageRemoteSource {
  Future<DiagnosticReportTemplateFHIRModel> getTriage();
  Future<TriagePostModel> saveTriage({required TriagePostModel triage});
  Future<TriagePostModel> updateTriage({
    required TriageUpdateModel triage,
  });
}

class TriageRemoteSourceImpl implements TriageRemoteSource {
  Dio dio;
  TriageRemoteSourceImpl(this.dio);

  // @override
  // Future<TriageResponseDto> saveTriageVT(TriageResponseModel triage) async {
  //   const endPoint = "/services/triage/api/triage-report";

  //   try {
  //     var response = await dio.post(endPoint, data: triage.toJson());
  //     logger.d("this is the response ${response.data.toString()}");
  //     return TriageResponseDto.fromJson(response.data);
  //   } on DioError catch (e) {
  //     logger.d("this is the error ${e.message}");
  //     if (e.response != null) {
  //       logger.d("Error response: ${e.response.toString()}");
  //     }
  //   } catch (e) {
  //     logger.d("Unknown error: ${e.toString()}");
  //   }

  // return TriageResponseDto();
  // logger.d("This is triage \n ${triage.toJson()}");
  // try {
  //   var response = await dio.post(
  //     endpoint,
  //     data: triage.toJson(),
  //   );

  //   logger.d({
  //     "API saveTriage": endpoint,
  //     "response": response.data,
  //   });
  //   if (response.statusCode != null) {
  //     if (response.statusCode! >= 200 && response.statusCode! < 210) {
  //       return TriageResponseDto.fromJson(response.data);
  //     } else {
  //       throw ServerException();
  //     }
  //   } else {
  //     throw ServerException();
  //   }
  // } catch (e) {
  //   throw UnknownException();
  // }
  // }

  @override
  Future<DiagnosticReportTemplateFHIRModel> getTriage() async {
    var endpoint =
        "/services/assessments/api/diagnostic-report-templates/assessment/1351";
    logger.d({
      "API getTriageQuestionnaire": endpoint,
    });
    // Map<String, dynamic> bodyData = {
    //   "name": "LVPEI EyeCare Triage",
    //   "organizationCode": "LVPEI",
    //   "condition": "VISION",
    //   "assessmentType": "TRIAGE",
    //   "organ": "EYE"
    // };

    var response = await dio.get(endpoint);
    //var response = await rootBundle.loadString("assets/triage_assessment.json");
    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      return DiagnosticReportTemplateFHIRModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
    // if (response.isNotEmpty) {
    //   var data = jsonDecode(response);
    //   return DiagnosticReportTemplateFHIRModel.fromJson(data);
    // } else {
    //   throw ServerException();
    // }
  }

  @override
  Future<TriagePostModel> saveTriage({
    required TriagePostModel triage,
  }) async {
    const endpoint = "/services/triage/api/triage-report";
    try {
      logger.f({"triage model to be saved in remote source": triage.toJson()});
      var response = await dio.post(
        endpoint,
        data: triage.toJson(),
      );

      logger.d({
        "API saveTriage": endpoint,
        "response": response.data,
      });
      if (response.statusCode != null) {
        if (response.statusCode! >= 200 && response.statusCode! < 210) {
          return TriagePostModel.fromJson(response.data);
        } else {
          throw ServerException();
        }
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw UnknownException();
    }
  }

  @override
  Future<TriagePostModel> updateTriage({
    required TriageUpdateModel triage,
  }) async {
    final id = triage.diagnosticReportId;

    // var response =
    //     await rootBundle.loadString("assets/triage_update_response.json");
    // if (response.isNotEmpty) {
    //   Map<String, dynamic> data = jsonDecode(response);
    //   return TriageUpdateMapper.toResponseModel(data);
    // } else {
    //   throw ServerException();
    // }
    try {
      var endpoint = "/services/triage/api/triage-report/$id";

      logger.f({"API updateTriage": endpoint, "data": triage.toJson()});
      final response = await dio.patch(endpoint, data: triage.toJson());

      if (response.statusCode != null) {
        if (response.statusCode! >= 200 && response.statusCode! < 210) {
          return TriagePostModel.fromJson(response.data);
        } else {
          throw ServerException();
        }
      } else {
        throw ServerException();
      }
    } catch (e) {
      logger.d("this is the error ${e.toString()}");
      throw UnknownException();
    }
  }
}

var triageRemoteSource = Provider<TriageRemoteSource>(
  (ref) => TriageRemoteSourceImpl(
    ref.watch(dioProvider),
  ),
);
