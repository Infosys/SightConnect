import 'dart:io';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/app_environment.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

var fileMsServiceProvider =
    Provider((ref) => FileMsService(ref.read(dioProvider)));

class FileMsService {
  final Dio _dio;
  FileMsService(this._dio);
  Future<String> _getImage(String fileId) async {
    try {
      return "${AppEnv.baseUrl}/services/filems/api/file/download/$fileId";
    } catch (e) {
      throw ServerFailure(errorMessage: "GetImage: $e");
    }
  }

  Future<String> uploadImage(File file) async {
    const endpoint =
        "/services/filems/api/file/sync-upload?doc_type=PROFILE_PIC";

    final fileName = const Uuid().v1();

    var data = FormData.fromMap({
      'files': [await MultipartFile.fromFile(file.path, filename: fileName)],
      'specData': 'abc@gmail.com'
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
      rethrow;
    }
  }

  // //create a method which will take file as input and the file is below 16mb then return the file else degrade the quality of the image and return the file
  // Future<File> compressImage(File file) async {
  //   //check the size of the file
  //   final size = await file.length();
  //   if (size <= 16000000) {
  //     return file;
  //   } else {
  //     //degrade the quality of the image

  //     return file;
  //   }
  // }
}
