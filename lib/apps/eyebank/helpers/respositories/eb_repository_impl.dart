import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/models/submit_form_data_response_model.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/respositories/contracts/eb_repository.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/encounter_brief_model.dart';
import '../models/form_data_model.dart';
import '../models/reject_encounter_request_model.dart';
import '../models/submit_form_data_request_model.dart';
import '../models/timeline_model.dart';

final eyeBankRepositoryProvider = Provider<EyeBankRepository>((ref) {
  return EyeBankRepositoryImpl(ref.watch(dioProvider));
});

class EyeBankRepositoryImpl extends EyeBankRepository {
  final Dio _dio;

  EyeBankRepositoryImpl(this._dio);

  @override
  Future<Either<EBFailure, List<EncounterBriefModel>>> getAllEncounters(
      GetAllEncountersParams params) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint =
          '/encounters?encounterStage=${params.encounterStage}&startDate=${params.startDate}&endDate=${params.endDate}&page=${params.page}&size=${params.size}';
      final response = await _dio.get(endPoint);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(response.statusMessage ?? 'Error in getAllEncounters');
      }
    });
  }

  @override
  Future<Either<EBFailure, List<EncounterBriefModel>>> searchEncounter(
      SearchEncounterParams params) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint =
          '/encounters/search?mobile=${params.mobile}&identifier=${params.identifier}&identifierType=${params.identifierType}';
      final response = await _dio.get(endPoint);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(response.statusMessage ?? 'Error in searchEncounter');
      }
    });
  }

  @override
  Future<Either<EBFailure, FormDataModel>> fetchFormByIDAndStage(
    String encounterID,
    AssessmentName stage,
  ) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint = '/encounters/$encounterID/forms/$stage';
      final response = await _dio.get(endPoint);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(
            response.statusMessage ?? 'Error in fetchFormByIDAndStage');
      }
    });
  }

  @override
  Future<Either<EBFailure, TimelineModel>> fetchTimelineByID(
      String encounterID) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint = '/encounters/$encounterID/timeline';
      final response = await _dio.get(endPoint);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(response.statusMessage ?? 'Error in fetchTimelineByID');
      }
    });
  }

  @override
  Future<Either<EBFailure, SubmitFormDataResponseModel>> saveOrDraftForm(
      String encounterID,
      AssessmentName stage,
      SubmitFormDataRequestModel requestData) {
    return EyeBankErrorHandler.handle(() async {
      final endPoint =
          '/encounters/stage/$stage/forms/SAVE?encounterId=$encounterID';
      final response = await _dio.post(endPoint, data: requestData.toJson());
      if (response.statusCode == 200) {
        return response.data
            .map((e) => SubmitFormDataResponseModel.fromJson(e));
      } else {
        throw Exception(response.statusMessage ?? 'Error in saveOrDraftForm');
      }
    });
  }

  @override
  Future<Either<EBFailure, dynamic>> rejectEncounter(
      RejectEncounterRequestModel requestData) {
    return EyeBankErrorHandler.handle(() async {
      const endPoint = '/encounters/reject';
      final response = await _dio.post(endPoint, data: requestData.toJson());
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(response.statusMessage ?? 'Error in rejectEncounter');
      }
    });
  }

  @override
  Future<Either<EBFailure, dynamic>> fetchFormByStage(AssessmentName stage) {
    return EyeBankErrorHandler.handle(() async {
      var endPoint = '/forms/assessment?stage=$stage';
      var response = await _dio.get(endPoint);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(response.statusMessage ?? 'Error in fetchFormByStage');
      }
    });
  }
}
