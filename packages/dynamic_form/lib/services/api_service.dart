import 'package:dio/dio.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();
  Dio dio;

  // Private constructor
  ApiService._internal() : dio = Dio();

  // Factory constructor to return the same instance
  factory ApiService() {
    return _instance;
  }

  // Method to override Dio instance (if needed)
  void overrideDio(Dio? overrideDio) {
    // Ensure dio is not null before overriding
    if (overrideDio != null) {
      dio = overrideDio;
    }
  }

  static Future<List<String>> getOptions(
      {required String endPoint, String? query}) async {
    return Future.delayed(const Duration(seconds: 5), () {
      return [
        'Option 1',
        'Option 2',
        'Option 3',
        'Option 4',
        'Option 5',
      ];
    });

    // _instance.dio.get(endPoint).then((response) {
    //   final List<String> options = [];
    //   for (var option in response.data) {
    //     options.add(option);
    //   }
    //   return options;
    // });
  }
}
