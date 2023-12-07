import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_assessment_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TriageRemoteSource {
  Future<TriageAssessmentModel> getTriage();
  Future<TriageResponseModel> saveTriage({required TriageResponseModel triage});
}

class TriageRemoteSourceImpl implements TriageRemoteSource {
  Dio dio;
  TriageRemoteSourceImpl(this.dio);

  @override
  Future<TriageAssessmentModel> getTriage() async {
    var endpoint = "/api/careQuestionnaireGenerator";
    logger.d({
      "API getTriageQuestionnaire": endpoint,
    });
    Map<String, dynamic> bodyData = {
      "name": "LVPEI EyeCare Triage",
      "organizationCode": "LVPEI",
      "condition": "VISION",
      "assessmentType": "TRIAGE",
      "organ": "EYE"
    };

    // var response = await dio.get(endpoint, queryParameters: bodyData);
    var response = await rootBundle.loadString("assets/new_assessment.json");
    // if (response.statusCode! >= 200 && response.statusCode! < 210) {
    //   return TriageAssessmentModel.fromJson(response.data);
    // } else {
    //   throw ServerException();
    // }
    if (response.isNotEmpty) {
      var data = jsonDecode(response);
      return TriageAssessmentModel.fromJson(data);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TriageResponseModel> saveTriage({
    required TriageResponseModel triage,
  }) async {
    var endpoint = "/api/triage-report";
    logger.d({
      "API saveTriage": triage.toJson(),
    });

    var response = await dio.post(
      endpoint,
      data: triage.toJson(),
    );
    if (response.statusCode != null) {
      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        return TriageResponseModel.fromJson(response.data);
      } else {
        throw ServerException();
      }
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
