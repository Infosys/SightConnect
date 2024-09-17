import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

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
  }
  // _instance.dio.get(endPoint).then((response) {
  //   final List<String> options = [];
  //   for (var option in response.data) {
  //     options.add(option);
  //   }
  //   return options;
  // });

  Future<String> uploadImage(PlatformFile file, [bool useBytes = false]) async {
    const endpoint = "/services/filems/api/file/sync-upload?doc_type=EYEBANK";

    MultipartFile multipartFile;

    if (kIsWeb || useBytes) {
      multipartFile = MultipartFile.fromBytes(
        file.bytes!,
        filename: file.name,
      );
    } else {
      multipartFile = await MultipartFile.fromFile(
        file.path!,
        filename: file.name,
      );
    }

    final data = FormData.fromMap({
      'files': [multipartFile],
    });

    try {
      final response = await dio.post(endpoint, data: data);
      Log.d({"uploadFile": response.data});
      if (response.statusCode == 200) {
        final body = response.data;
        log(body.toString());
        final fileId = body['id'];
        final sourceName = body['sourceName'];

        return _getFile(fileId, sourceName);
      } else {
        throw Exception("Failed to upload file");
      }
    } catch (e) {
      Log.e(e);
      rethrow;
    }
  }

  Future<String> _getFile(String fileId, String source) async {
    try {
      final url =
          "${dio.options.baseUrl}/services/filems/api/file/download/$fileId?source=$source";
      Log.d({"url": url});
      return url;
    } catch (e) {
      Log.e(e);
      rethrow;
    }
  }
}
