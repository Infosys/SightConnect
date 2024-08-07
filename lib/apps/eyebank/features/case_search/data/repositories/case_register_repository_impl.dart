import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_search/data/repositories/contracts/case_register_repository.dart';
import 'package:eye_care_for_all/apps/eyebank/helpers/models/search_case_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final caseRegisterRepositoryProvider = Provider<CaseRegisterRepository>((ref) {
  return CaseRegisterRepositoryImpl(ref.watch(dioProvider));
});

class CaseRegisterRepositoryImpl extends CaseRegisterRepository {
  final Dio _dio;

  CaseRegisterRepositoryImpl(this._dio);

  @override
  Future<Either<Failure, dynamic>> getA1Form(queryData) async {
    var endpoint = 'a1-form';
    try {
      var data =
          await _dio.get(endpoint, data: queryData, queryParameters: queryData);
      if (data.statusCode == 200) {
        return Right(data.data);
      } else {
        return Left(
          ServerFailure(
              errorMessage: data.statusMessage ?? 'Error in getA1Form'),
        );
      }
    } on DioException catch (e) {
      logger.e("Error in getA1Form");
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Error in getA1Form");
      rethrow;
    }
  }

  @override
  Future<Either<Failure, dynamic>> postA1Form(queryData) async {
    var endpoint = 'a1-form';
    try {
      var data = await _dio.post(endpoint,
          data: queryData, queryParameters: queryData);
      if (data.statusCode == 200) {
        return Right(data.data);
      } else {
        return Left(ServerFailure(
            errorMessage: data.statusMessage ?? 'Error in postA1Form'));
      }
    } on DioException catch (e) {
      logger.e("Error in postA1Form");
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Error in postA1Form");
      rethrow;
    }
  }

  @override
  Future<Either<Failure, dynamic>> getScreeningFilterData() async {
    var endpoint = 'screening-filter-data';
    try {
      var data = await _dio.get(endpoint);
      if (data.statusCode == 200) {
        return Right(data.data);
      } else {
        return Left(ServerFailure(
            errorMessage:
                data.statusMessage ?? 'Error in getScreeningFilterData'));
      }
    } on DioException catch (e) {
      logger.e("Error in getScreeningFilterData");
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Error in getScreeningFilterData");
      rethrow;
    }
  }

  @override
  Future<Either<Failure, SearchCaseModel>> searchTableData(
      String donorMobile, String caseId) async {
    var endpoint = 'search-table-data';
    try {
      var data = await _dio.get(endpoint,
          queryParameters: {'donorMobile': donorMobile, 'caseId': caseId});
      if (data.statusCode == 200) {
        var response = SearchCaseModel.fromJson(data.data);
        return Right(response);
      } else {
        return Left(ServerFailure(
            errorMessage: data.statusMessage ?? 'Error in searchTableData'));
      }
    } on DioException catch (e) {
      logger.e("Error in searchTableData");
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Error in searchTableData");
      rethrow;
    }
  }
}
