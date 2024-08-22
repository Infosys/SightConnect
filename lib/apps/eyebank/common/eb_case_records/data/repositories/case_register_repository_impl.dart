import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/models/encounter_brief_model.dart';
import 'package:eye_care_for_all/apps/eyebank/common/eb_case_records/data/repositories/contracts/case_register_repository.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/widgets/eb_error_handler.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    // FAKER Data
    //REMOVE THIS FOR PRODUCTION
    // return Future.value(
    //     Right(EncounterBriefModel.fromJson(Faker.dummyEncounterBrief)));

    return EyeBankErrorHandler.handle(() async {
      final endPoint =
          "/services/eyebank/api/encounters?page=${params.page}&size=${params.size}";
      // final parameters = {
      //   // 'encounterStage': params.encounterStage,
      //   // 'startDate': params.startDate,
      //   // 'endDate': params.endDate,
      //   'pageable': {
      //     "page": params.page,
      //     "size": params.size,
      //   }
      // };
      final response = await _dio.get(
        endPoint,
        // queryParameters: parameters,
      );

      if (response.statusCode == 200) {
        log(EncounterBriefModel.fromJson(response.data).toString());
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
      const endPoint = '/services/eyebank/api/encounters/search';

      final response = await _dio.get(
        endPoint,
        queryParameters: {
          'mobile': params.mobile,
          // 'identifier': params.identifier,
          // 'identifierType': params.identifierType,
          'pageable': {
            "page": params.page,
            "size": params.size,
          }
        },
      );
      log(response.data.toString());
      if (response.statusCode == 200) {
        return EncounterBriefModel.fromJson(response.data);
      } else {
        throw Exception(response.statusMessage ?? 'Error in searchEncounter');
      }
    });
  }

  // @override
  // Future<Either<EBFailure, dynamic>> postA1Form(queryData) async {
  //   return EyeBankErrorHandler.handle(() async {
  //     var endPoint =
  //         '/services/orchestration/api/v2/patients/triage-reports?queryText=${queryData}';
  //     var data = await _dio.get(endPoint);
  //     if (data.statusCode == 200) {
  //       return data.data;
  //     } else {
  //       throw Exception(data.statusMessage ?? 'Error in getA1Form');
  //     }
  //   });
  // }

  // @override
  // Future<Either<Failure, dynamic>> getScreeningFilterData() async {
  //   var endpoint = 'screening-filter-data';
  //   try {
  //     var data = await _dio.get(endpoint);
  //     if (data.statusCode == 200) {
  //       return Right(data.data);
  //     } else {
  //       return Left(ServerFailure(
  //           errorMessage:
  //               data.statusMessage ?? 'Error in getScreeningFilterData'));
  //     }
  //   } on DioException catch (e) {
  //     logger.e("Error in getScreeningFilterData");
  //     DioErrorHandler.handleDioError(e);
  //     rethrow;
  //   } catch (e) {
  //     logger.e("Error in getScreeningFilterData");
  //     rethrow;
  //   }
  // }

  // @override
  // Future<Either<Failure, EncounterBriefModel>> searchTableData(
  //     String donorMobile, String caseId) async {
  //   var endpoint = 'search-table-data';
  //   try {
  //     var data = await _dio.get(endpoint,
  //         queryParameters: {'donorMobile': donorMobile, 'caseId': caseId});
  //     if (data.statusCode == 200) {
  //       var response = EncounterBriefModel.fromJson(data.data);
  //       return Right(response);
  //     } else {
  //       return Left(ServerFailure(
  //           errorMessage: data.statusMessage ?? 'Error in searchTableData'));
  //     }
  //   } on DioException catch (e) {
  //     logger.e("Error in searchTableData");
  //     DioErrorHandler.handleDioError(e);
  //     rethrow;
  //   } catch (e) {
  //     logger.e("Error in searchTableData");
  //     rethrow;
  //   }
  // }
}
