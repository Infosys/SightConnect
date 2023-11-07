import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_response.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TriageRemoteSource {
  Future<TriageAssessment> getTriage();
  Future<TriageResponse> saveTriage({required TriageResponse triage});
}

class TriageRemoteSourceImpl implements TriageRemoteSource {
  Dio dio;
  TriageRemoteSourceImpl(this.dio);

  @override
  Future<TriageAssessment> getTriage() async {
    var response = await rootBundle.loadString("assets/care_assessment.json");
    if (response.isNotEmpty) {
      var data = jsonDecode(response);
      return TriageAssessment.fromJson(data["assessment"]);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TriageResponse> saveTriage({required TriageResponse triage}) async {
    var endpoint = "/api/patient-responses";
    logger.d({
      "API saveTriage": triage.toJson(),
    });

    var response = await dio.post(
      endpoint,
      data: triage.toJson(),
    );
    if (response.statusCode! >= 200 && response.statusCode! < 210) {
      return TriageResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}

var triageRemoteSource = Provider<TriageRemoteSource>(
  (ref) => TriageRemoteSourceImpl(
    ref.read(dioProvider),
  ),
);
