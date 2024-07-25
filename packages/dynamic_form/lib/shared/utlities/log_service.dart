import 'package:logger/logger.dart';

class Log {
  Log._internal();

  static final Log _instance = Log._internal();

  factory Log() {
    return _instance;
  }

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
  );

  static void d(dynamic message) {
    _logger.d(message);
  }

  static void e(dynamic message) {
    _logger.e(message);
  }

  static void f(dynamic message) {
    _logger.f(message);
  }

  static void i(dynamic message) {
    _logger.i(message);
  }
}
