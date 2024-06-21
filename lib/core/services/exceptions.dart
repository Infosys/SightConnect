import 'package:dio/dio.dart';
import 'package:eye_care_for_all/main.dart';

class ServerException implements Exception {}

class CacheException implements Exception {}

class UnknownException implements Exception {}

class DioErrorHandler {
  static void handleDioError(Object e) {
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

  static String getErrorMessage(Object e) {
    // check all type of error
    if (e is DioException) {
      if (e.error is Exception) {
        return e.error.toString();
      } else if (e.response != null) {
        return e.response!.data["message"].toString();
      } else {
        return e.message ?? "Something went wrong";
      }
    } else {
      return e.toString();
    }
  }
}
