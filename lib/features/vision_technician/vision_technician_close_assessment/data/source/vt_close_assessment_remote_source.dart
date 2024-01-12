import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/models/vt_close_assessment_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VTCloseAssessmentRemoteSource {
  Future<String> submitCloseAssessmentInfo(CloseAssessmentDto patientDetails);
}

var vtCloseAssessmentRemoteSource =
    Provider((ref) => VTCloseAssessmentRemoteSourceImpl(
          ref.read(dioProvider),
        ));

class VTCloseAssessmentRemoteSourceImpl
    implements VTCloseAssessmentRemoteSource {
  final Dio _dio;
  VTCloseAssessmentRemoteSourceImpl(this._dio);

  @override
  Future<String> submitCloseAssessmentInfo(
      CloseAssessmentDto closeAssessmentDto) async {
    String endPoint =
        '/services/triage/api/triage/${closeAssessmentDto.encounterId}/close';

    logger.d(
        "close assessment response to be saved ${closeAssessmentDto.toJson()}");

    try {
      var response =
          await _dio.patch(endPoint, data: closeAssessmentDto.toJson());
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 210) {
        logger.d("response from close assessment ${response.toString()}");
        return "success";
      }else{
        return "failure";
      }

    } on DioException catch (e) {
      logger.d("this is the error ${e.message}");
      if (e.response != null) {
        logger.d("Error response: ${e.response.toString()}");
      }
      return "failure";
    } catch (e) {
      logger.d("Unknown error: ${e.toString()}");
      return "failure";
    }

  }
}
