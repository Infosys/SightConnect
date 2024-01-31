import 'package:camera/camera.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../core/services/dio_service.dart';
import '../../../../../main.dart';
import '../contract/patient_eye_scan_repository.dart';

var patientEyeScanRepository = Provider<PatientEyeScanRepository>((ref) {
  return PatientEyeScanRepositoryImpl(ref.watch(dioProvider));
});

class PatientEyeScanRepositoryImpl extends PatientEyeScanRepository {
  final Dio _dio;

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
    String url = "http://4.240.107.201:8000/predict/";

    logger.d("model post call initiated");
    logger.d(url);
    try {
      var response = await _dio.post<Map<String, dynamic>>(
        url,
        data: formData,
        options: Options(
            contentType: "multipart/form-data",
            receiveTimeout: const Duration(seconds: 7),
            sendTimeout: const Duration(seconds: 5)),
      );
      logger.d("post called ended");
      logger.d(response.data.toString());
      return response.data;
    } on Exception catch (e) {
      if (e == DioExceptionType.sendTimeout ||
          e == DioExceptionType.receiveTimeout) {
        logger.d("Connection  Timeout Exception");
        return null;
      }
      logger.d(e.toString());
    }
  }


}
