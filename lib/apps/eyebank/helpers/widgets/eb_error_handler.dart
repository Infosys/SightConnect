import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';
import 'package:eye_care_for_all/services/exceptions.dart';


class EyeBankErrorHandler {
  static Future<Either<EBFailure, T>> handle<T>(Future<T> Function() function) async {
    try {
      return Right(await function());
    } on DioException catch (e) {
      logger.e("DioException: ${e.message}");
      DioErrorHandler.handleDioError(e);
      return Left(EBServerFailure(errorMessage: e.message?? "Something went wrong", statusCode: e.response?.statusCode, detail: e.response?.data["detail"]??"dd"));
    } catch (e) {
      logger.e("Exception: $e");
      return Left(EBUnknownFailure(errorMessage: e.toString()));
    }
  }
}