import 'package:dio/dio.dart';
import 'package:eye_care_for_all/main.dart';

class ServerException implements Exception {}

class CacheException implements Exception {}

class UnknownException implements Exception {}

class DioErrorHandler {
  static void handleDioError(DioException e) {
    if (e.error is Exception) {
      // Handle general exceptions
      logger.e('Exception: ${e.error}');
    } else if (e.response != null) {
      // Handle HTTP errors

      logger.e({
        "url": e.response!.data["path"],
        "title": e.response!.data["title"],
        "statusCode": e.response!.data["status"],
        "statusMessage": e.response!.statusMessage,
        "message": e.response!.data["message"],
        "path": e.response!.data["params"],
      });
    } else {
      // Handle connection errors
      logger.e('Connection error: ${e.message}');
    }
  }

  static String? getErrorMessage(Object e) {
    // check all type of error
    if (e is DioException) {
      if (e.error is Exception) {
        return e.error.toString();
      } else if (e.response != null) {
        return e.response!.data["message"];
      } else {
        return e.message;
      }
    } else {
      return e.toString();
    }
  }
}
