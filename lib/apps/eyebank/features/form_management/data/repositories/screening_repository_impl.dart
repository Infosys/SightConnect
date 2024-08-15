import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/eyebank/features/form_management/data/repositories/contracts/screening_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var screeningRepositoryProvider = Provider<ScreeningRepository>((ref) {
  return ScreeningRepositoryImpl(
    ref.read(dioProvider),
  );
});

class ScreeningRepositoryImpl extends ScreeningRepository {
  final Dio _dio;
  ScreeningRepositoryImpl(this._dio);

  @override
  Future<Either<Failure, dynamic>> getA2toA5Form(queryData) async {
    var endpoint = 'a2-to-a5-form';
    try {
      var data =
          await _dio.get(endpoint, data: queryData, queryParameters: queryData);
      if (data.statusCode == 200) {
        return Right(data.data);
      } else {
        return Left(ServerFailure(
            errorMessage: data.statusMessage ?? 'Error in getA2toA5Form'));
      }
    } on DioException catch (e) {
      logger.e("Error in getA2toA5Form");
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Error in getA2toA5Form");
      rethrow;
    }
  }

  @override
  Future<Either<Failure, dynamic>> postA2toA5Data(queryData) async {
    var endpoint = 'a2-to-a5-form';
    try {
      var data = await _dio.post(endpoint,
          data: queryData, queryParameters: queryData);
      if (data.statusCode == 200) {
        return Right(data.data);
      } else {
        return Left(ServerFailure(
            errorMessage: data.statusMessage ?? 'Error in postA2toA5Data'));
      }
    } on DioException catch (e) {
      logger.e("Error in postA2toA5Data");
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Error in postA2toA5Data");
      rethrow;
    }
  }

  @override
  Future<Either<Failure, dynamic>> getPersistedResponse(queryData) async {
    var endpoint = 'persisted-response';
    try {
      var data =
          await _dio.get(endpoint, data: queryData, queryParameters: queryData);
      if (data.statusCode == 200) {
        return Right(data.data);
      } else {
        return Left(ServerFailure(
            errorMessage:
                data.statusMessage ?? 'Error in getPersistedResponse'));
      }
    } on DioException catch (e) {
      logger.e("Error in getPersistedResponse");
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Error in getPersistedResponse");
      rethrow;
    }
  }

  @override
  Future<Either<Failure, dynamic>> postCloseCase(queryData) async {
    var endpoint = 'close-case';
    try {
      var data = await _dio.post(endpoint,
          data: queryData, queryParameters: queryData);
      if (data.statusCode == 200) {
        return Right(data.data);
      } else {
        return Left(ServerFailure(
            errorMessage: data.statusMessage ?? 'Error in postCloseCase'));
      }
    } on DioException catch (e) {
      logger.e("Error in postCloseCase");
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.e("Error in postCloseCase");
      rethrow;
    }
  }
}
