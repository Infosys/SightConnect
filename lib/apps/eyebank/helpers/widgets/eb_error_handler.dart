import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/eb_failure.dart';

class EyeBankErrorHandler {
  static Future<Either<EBFailure, T>> handle<T>(
      Future<T> Function() function) async {
    try {
      return Right(await function());
    } on DioException catch (e) {
      logger.e("DioException: ${e.message}");
      _printDioError(e);
      return Left(
        EBServerFailure(
          errorMessage: e.message ?? "Something went wrong",
          statusCode: e.response?.statusCode,
          errorObject: EBErrorObject(
            type: e.response?.data["type"],
            title: e.response?.data["title"],
            status: e.response?.statusCode,
            detail: e.response?.data["detail"],
            instance: e.response?.data["instance"],
            message: e.response?.data["message"],
            params: e.response?.data["params"],
            path: e.response?.data["path"],
          ),
        ),
      );
    } on TimeoutException catch (e) {
      logger.e("TimeoutException: $e");
      return Left(EBUnknownFailure(
          errorMessage: "The request timed out. Please try again later."));
    } on SocketException catch (e) {
      logger.e("SocketException: $e");
      return Left(EBUnknownFailure(
          errorMessage:
              "No internet connection. Please check your network settings."));
    } catch (e) {
      logger.e("Exception: $e");
      return Left(EBUnknownFailure(errorMessage: e.toString()));
    }
  }

  static void _printDioError(Object e) {
    if (e is DioException) {
      logger.e(e.stackTrace);
      if (e.response != null) {
        logger.e(e.response!.data);
      }
      logger.e({
        "uri": e.requestOptions.uri.toString(),
        "statusCode": e.response?.statusCode,
        "statusMessage": e.response?.statusMessage,
        "error": e.error,
      });
    } else if (e is Exception) {
      logger.e('Exception: ${e.toString()}');
    } else {
      logger.e('error: ${e.toString()}');
    }
  }
}
