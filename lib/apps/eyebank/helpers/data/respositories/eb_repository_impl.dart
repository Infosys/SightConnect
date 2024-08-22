import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/eb_timeline_config_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/models/submit_form_data_response_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/data/respositories/contracts/eb_repository.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/eb_submit_form_data_request_model.dart';
import '../models/eb_timeline_model.dart';

final ebRepositoryProvider = Provider<EyeBankRepository>((ref) {
  return EyeBankRepositoryImpl(ref.watch(dioProvider));
});

class EyeBankRepositoryImpl extends EyeBankRepository {
  final Dio _dio;

  EyeBankRepositoryImpl(this._dio);


  @override
  Future<Either<EBFailure, List<EBTimelineModel>>> fetchTimelineByID(
      String encounterID) {
    return EyeBankErrorHandler.handle(() async {
      // [ DEATH_INTIMATION, DONOR_SCREENING, CORNEA_RECOVERY, SHIPPED_TO_EYEBANK, RECEIVED_AT_EYEBANK, SEROLOGY, CORNEA_EVALUATION, IN_INVENTORY ]
      //    int? serviceRequestId,
      // String? title,
      // String? stage,
      // String? assessmentVersion,
      // String? status,
      // @TimestampConverter() DateTime? initiateDate,
      // @TimestampConverter() DateTime? recentUpdated,
      // List<EBTimelineModel>? stages,
      const sampleJson = [
        {
          "serviceRequestId": 1,
          "title": "DEATH_INTIMATION",
          "stage": "DEATH_INTIMATION",
          "assessmentVersion": "1",
          "status": "COMPLETED",
          "initiateDate": "2023-10-01T12:00:00Z",
          "recentUpdated": "2023-10-01T12:00:00Z",
          "stages": []
        },
        {
          "serviceRequestId": 2,
          "title": "DONOR_SCREENING",
          "stage": "DONOR_SCREENING",
          "assessmentVersion": "1",
          "status": "COMPLETED",
          "initiateDate": "2023-10-01T12:00:00Z",
          "recentUpdated": "2023-10-01T12:00:00Z",
          "stages": []
        },
        {
          "serviceRequestId": 3,
          "title": "CORNEA_RECOVERY",
          "stage": "CORNEA_RECOVERY",
          "assessmentVersion": "1",
          "status": "COMPLETED",
          "initiateDate": "2023-10-01T12:00:00Z",
          "recentUpdated": "2023-10-01T12:00:00Z",
          "stages": []
        },
      ];

      return Future.delayed(
        const Duration(seconds: 1),
        () => sampleJson.map((e) => EBTimelineModel.fromJson(e)).toList(),
      );
      // final endPoint = '/encounters/$encounterID/timeline';
      // final response = await _dio.get(endPoint);
      // if (response.statusCode == 200) {
      //   return response.data.map((e) => EBTimelineModel.fromJson(e)).toList();
      // } else {
      //   throw Exception(response.statusMessage ?? 'Error in fetchTimelineByID');
      // }
    });
  }

  @override
  Future<Either<EBFailure, EbTimelineConfigModel>> fetchTimelineStages(
      String timelineName, String timelineVersion) {
    return EyeBankErrorHandler.handle(() async {
      const endPoint =
          '/services/configs/api/timelines/CORNEA_DONATION?timelineVersion=0.0.1';
      final response = await _dio.get(endPoint);
      logger.d({
        "RESPONSE": response.data,
      });

      if (response.statusCode == 200) {
        return EbTimelineConfigModel.fromJson((response.data));
      } else {
        throw Exception(
            response.statusMessage ?? 'Error in fetchTimelineStages');
      }
    });
  }

  @override
  Future<Either<EBFailure, SubmitFormDataResponseModel>> saveIntimationForm(
      String stageName,
      String stageVersion,
      EBSubmitFormDataRequestModel requestData) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint = '/services/eyebank/api/encounters/$stageName';
      final response = await _dio.post(
        endPoint,
        queryParameters: {
          'stageVersion': stageVersion,
        },
        data: requestData.toJson(),
      );
      if (response.statusCode == 200) {
        return SubmitFormDataResponseModel.fromJson(response.data);
      } else {
        throw Exception(response.statusMessage ?? 'Error in saveOrDraftForm');
      }
    });
  }
}
