import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/mapper/triage_update_mapper.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TriageRemoteSource {
  Future<DiagnosticReportTemplateFHIRModel> getTriage();
  Future<TriageResponseModel> saveTriage({required TriageResponseModel triage});
  Future<TriageResponseModel> updateTriage({
    required TriageUpdateModel triage,
  });
}

class TriageRemoteSourceImpl implements TriageRemoteSource {
  Dio dio;
  TriageRemoteSourceImpl(this.dio);

  @override
  Future<DiagnosticReportTemplateFHIRModel> getTriage() async {
    var endpoint = "/api/careQuestionnaireGenerator";
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

    // var response = await dio.get(endpoint, queryParameters: bodyData);
    var response = await rootBundle.loadString("assets/triage_assessment.json");
    // if (response.statusCode! >= 200 && response.statusCode! < 210) {
    //   return DiagnosticReportTemplateFHIRModel.fromJson(response.data);
    // } else {
    //   throw ServerException();
    // }
    if (response.isNotEmpty) {
      var data = jsonDecode(response);
      return DiagnosticReportTemplateFHIRModel.fromJson(data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TriageResponseModel> saveTriage({
    required TriageResponseModel triage,
  }) async {
    var endpoint = "/api/triage-report";
    try {
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
          return TriageResponseModel.fromJson(response.data);
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
  Future<TriageResponseModel> updateTriage({
    required TriageUpdateModel triage,
  }) async {
    // final response = await dio.patch("", data: triage.toJson());
    var response =
        await rootBundle.loadString("assets/triage_update_response.json");
    if (response.isNotEmpty) {
      Map<String, dynamic> data = jsonDecode(response);
      return TriageUpdateMapper.toResponseModel(data);
    } else {
      throw ServerException();
    }
  }
}

var triageRemoteSource = Provider<TriageRemoteSource>(
  (ref) => TriageRemoteSourceImpl(
    ref.watch(dioProvider),
  ),
);
