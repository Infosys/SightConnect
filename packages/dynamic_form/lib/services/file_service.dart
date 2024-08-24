import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';

class CloudService {
  final Dio _dio;
  final String baseUrl = "https://healthconnect.infosysapps.com";
  CloudService(this._dio);
  Future<String> _getImage(String fileId) async {
    try {
      final url = "$baseUrl/services/filems/api/file/download/$fileId";
      Log.d({"url": url});
      return url;
    } catch (e) {
      Log.e(e);
      rethrow;
    }
  }

  Future<String> uploadImage(File file) async {
    const endpoint =
        "/services/filems/api/file/sync-upload?doc_type=PROFILE_PIC";

    var data = FormData.fromMap({
      'files': [
        await MultipartFile.fromFile(
          file.path,
        )
      ],
    });

    try {
      final response = await _dio.post(endpoint, data: data);
      Log.d({"uploadImage": response.data});
      if (response.statusCode == 200) {
        final body = response.data;
        final fileId = body['id'];
        return _getImage(fileId);
      } else {
        throw Exception("Failed to upload image");
      }
    } catch (e) {
      Log.e(e);
      rethrow;
    }
  }

  Map<String, String> parseUrl(String url) {
    Map<String, String> mp = {};
    String baseUrl = "";
    String endpoint = "";
    String fileId = "";
    int slashcount = 0;
    for (int i = 0; i < url.length; i++) {
      if (url[i] == '/') {
        slashcount++;
      }
      if (slashcount < 3) {
        baseUrl += url[i];
      } else {
        endpoint += url[i];
      }
    }

    for (int i = endpoint.length - 1; i >= 0; i--) {
      if (endpoint[i] == '/') {
        break;
      }

      fileId += endpoint[i];
    }
    fileId = _reverseFileId(fileId);

    mp["baseUrl"] = baseUrl;
    mp["endPoint"] = endpoint;
    mp["fileId"] = fileId;

    return mp;
  }

  String _reverseFileId(String input) {
    String reversed = '';
    for (int i = input.length - 1; i >= 0; i--) {
      reversed += input[i];
    }
    return reversed;
  }
}
