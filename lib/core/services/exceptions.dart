import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class ServerException implements Exception {}

class CacheException implements Exception {}

class UnknownException implements Exception {}

class DioErrorHandler {
  static final Logger _logger = Logger();

  static void handleDioError(DioException e) {
    if (e.error is Exception) {
      // Handle general exceptions
      print('Exception: ${e.error}');
    } else if (e.response != null) {
      // Handle HTTP errors

      print({
        "url": e.response!.data["path"],
        "title": e.response!.data["title"],
        "statusCode": e.response!.data["status"],
        "statusMessage": e.response!.statusMessage,
        "message": e.response!.data["message"],
        "path": e.response!.data["params"],
      });
    } else {
      // Handle connection errors
      print('Connection error: ${e.message}');
    }
  }
}
