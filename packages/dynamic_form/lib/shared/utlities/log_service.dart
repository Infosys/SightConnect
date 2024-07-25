import 'package:logger/logger.dart';

class Log {
  Log._internal();

  static final Log _instance = Log._internal();

  factory Log() {
    return _instance;
  }

  final Logger logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
  );

  void d(String message) {
    logger.d(message);
  }

  void e(String message) {
    logger.e(message);
  }

  void i(String message) {
    logger.i(message);
  }
}
