import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

class CloudService {
  static const String baseUrl = "https://healthconnect.infosysapps.com";

  final dio = Dio(
    BaseOptions(baseUrl: baseUrl),
  );

  Future<String> _getFile(String fileId, String source) async {
    try {
      final url =
          "$baseUrl/services/filems/api/file/download/$fileId?source=$source";
      Log.d({"url": url});
      return url;
    } catch (e) {
      Log.e(e);
      rethrow;
    }
  }

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
}
