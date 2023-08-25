import 'dart:developer';
import 'package:camera/camera.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../core/services/dio_service.dart';
import '../contract/patient_eye_scan_repository.dart';


var patientEyeScanRepository = Provider<PatientEyeScanRepository>((ref) {
  return PatientEyeScanRepositoryImpl(ref.watch(dioProvider));
});

class PatientEyeScanRepositoryImpl extends PatientEyeScanRepository {

  Dio _dio;

  PatientEyeScanRepositoryImpl(this._dio);


  @override
  getCataractPrediction({required XFile? eyeImage}) async {
    // String fileName = eyeImage.path.split('/').last;
    // final bytes = await eyeImage.readAsBytes();
    // FormData formData = FormData.fromMap({
    //   "file": MultipartFile.fromBytes(bytes, filename: fileName),
    // });
    // final formData =
    //     FormData.fromMap({'file': MultipartFile.fromBytes(bytes as List<int>)});
    String fileName = eyeImage!.path.split('/').last;
    FormData formData = FormData.fromMap({
      "file": MultipartFile.fromBytes(await eyeImage.readAsBytes(),
          filename: fileName),
    });
    String url = "http://testbed.surveymaster.in:8088/predict/";

    log("model post call initiated");
    log(url);
    try {
      var response = await _dio.post<Map<String, dynamic>>(
        url,
        data: formData,
        options: Options(
            contentType: "multipart/form-data",
            receiveTimeout: Duration(seconds: 7),
            sendTimeout: Duration(seconds: 5)),
      );
      log("post called ended");
      log(response.data.toString());
      return response.data;
    } on Exception catch (e) {
      if (e == DioExceptionType.sendTimeout ||
          e == DioExceptionType.receiveTimeout) {
        log("Connection  Timeout Exception");
        return null;
      }
      log(e.toString());
    }
  }
}
