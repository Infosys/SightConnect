import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/repositories/contracts/case_register_repository.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebCaseRegisterRepositoryProvider =
    Provider<CaseRegisterRepository>((ref) {
  return CaseRegisterRepositoryImpl(ref.watch(dioProvider));
});

class CaseRegisterRepositoryImpl extends CaseRegisterRepository {
  final Dio _dio;

  CaseRegisterRepositoryImpl(this._dio);

  @override
  Future<Either<EBFailure, EncounterBriefModel>> getAllEncounters(
      GetAllEncountersParams params) {
    return EyeBankErrorHandler.handle(() async {
      const endPoint = '/services/eyebank/api/encounters';
      final queryParams = {
        'page': params.page,
        'size': params.size,
        if (params.encounterStage != null)
          'encounterStage': params.encounterStage,
        if (params.startDate != null) 'startDate': params.startDate,
        if (params.endDate != null) 'endDate': params.endDate,
      };
      final response = await _dio.get(
        endPoint,
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        return EncounterBriefModel.fromJson(response.data);
      } else {
        throw Exception(response.statusMessage ?? 'Error in getAllEncounters');
      }
    });
  }

  @override
  Future<Either<EBFailure, EncounterBriefModel>> searchEncounter(
      SearchEncounterParams params) {
    return EyeBankErrorHandler.handle(() async {
      logger.f(
        "Search Encounter Params: identifier : ${params.identifier}, identifierType: ${params.identifierType}, mobile: ${params.mobile}, page: ${params.page}, size: ${params.size}",
      );
      const endPoint = "/services/eyebank/api/encounters/search";
      final queryParams = {
        'page': params.page,
        'size': params.size,
        if (params.mobile != null && params.mobile != '')
          'mobile': params.mobile,
        if (params.identifier != null &&
            params.identifierType != null &&
            params.identifierType != '' &&
            params.identifier != '')
          'identifier': params.identifier,
        if (params.identifier != null &&
            params.identifierType != null &&
            params.identifierType != '' &&
            params.identifier != '')
          'identifierType': params.identifierType,
      };

      final response = await _dio.get(
        endPoint,
        queryParameters: queryParams,
      );
      log(response.data.toString());
      if (response.statusCode == 200) {
        return EncounterBriefModel.fromJson(response.data);
      } else {
        throw Exception(response.statusMessage ?? 'Error in searchEncounter');
      }
    });
  }
}
