import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/models/vision_center_model.dart';
import 'package:eye_care_for_all/core/repositories/vision_center_repository.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionCenterRepositoryProvider = Provider<VisionCenterRepository>((ref) {
  return VisionCenterRepositoryImpl(ref.read(dioProvider));
});

class VisionCenterRepositoryImpl extends VisionCenterRepository {
  final Dio dio;
  VisionCenterRepositoryImpl(this.dio);
  @override
  Future<List<OrganizationResponseModel>> getVisionCenters() async {
    var endpoint = "/api/careQuestionnaireGenerator";
    logger.d({
      "API get vision centers": endpoint,
    });

    List<dynamic> responseJson;

    // var response = await dio.get(endpoint, queryParameters: bodyData);
    try {
      var response = await rootBundle.loadString("assets/vision_centers.json");
      responseJson = jsonDecode(response);
    } catch (e) {
      throw ServerException();
    }

    // if (response.statusCode! >= 200 && response.statusCode! < 210) {
    //   return DiagnosticReportTemplateFHIRModel.fromJson(response.data);
    // } else {
    //   throw ServerException();
    // }
    return responseJson
        .map((json) => OrganizationResponseModel.fromJson(json))
        .toList();
  }
}
