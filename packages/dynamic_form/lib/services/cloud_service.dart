import 'package:dio/dio.dart';
import 'package:dynamic_form/shared/utlities/log_service.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

class CloudService {
  static const String baseUrl = "https://healthconnect.infosysapps.com";

  final dio = Dio(
    BaseOptions(baseUrl: baseUrl),
  );

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

  Future<String> uploadImage(PlatformFile file) async {
    const endpoint =
        "/services/filems/api/file/sync-upload?doc_type=PROFILE_PIC";

    MultipartFile multipartFile;
    if (kIsWeb) {
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
