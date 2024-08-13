import 'dart:io';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/constants/api_constant.dart';
import 'package:eye_care_for_all/shared/services/dio_service.dart';
import 'package:eye_care_for_all/shared/services/exceptions.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var fileMsServiceProvider =
    Provider((ref) => FileMsService(ref.read(dioProvider)));

class FileMsService {
  final Dio _dio;
  FileMsService(this._dio);
  Future<String> _getImage(String fileId) async {
    try {
      final url =
          "${ApiConstant.baseUrl}/services/filems/api/file/download/$fileId";
      logger.d(url);
      return url;
    } catch (e) {
      DioErrorHandler.handleDioError(e);
      throw ServerFailure(errorMessage: "GetImage: $e");
    }
  }

  Future<String> uploadImage(File file) async {
    const endpoint =
        "/services/filems/api/file/sync-upload?doc_type=PROFILE_PIC";

    // final fileName = file.path.split('/').last;

    var data = FormData.fromMap({
      'files': [
        await MultipartFile.fromFile(
          file.path,
        )
      ],
    });

    try {
      final response = await _dio.post(endpoint, data: data);
      logger.d({
        "uploadImage": response.data,
      });
      if (response.statusCode == 200) {
        final body = response.data;
        final fileId = body['id'];
        return _getImage(fileId);
      } else {
        throw ServerFailure(
            errorMessage: "UploadImage: ${response.statusMessage}");
      }
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Bad connection, image not uploaded",
          toastLength: Toast.LENGTH_LONG);
      DioErrorHandler.handleDioError(e);
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
