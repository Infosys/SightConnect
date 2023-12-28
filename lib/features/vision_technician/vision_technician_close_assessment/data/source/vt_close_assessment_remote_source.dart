import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/models/vt_close_assessment_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VTCloseAssessmentRemoteSource {
  void submitCloseAssessmentInfo(CloseAssessmentDto patientDetails);
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
  void submitCloseAssessmentInfo(CloseAssessmentDto patientDetails) async {
    String endPoint =
        '/services/triage/api/triage/${patientDetails.encounterId}/close';

    logger.d(endPoint);
    logger.d(patientDetails.toJson().toString());

    try {
      var response = await _dio.patch(endPoint, data: patientDetails.toJson());
      logger.d("this is the response ${response.toString()}");
    } on DioError catch (e) {
      logger.d("this is the error ${e.message}");
      if (e.response != null) {
        logger.d("Error response: ${e.response.toString()}");
      }
    } catch (e) {
      logger.d("Unknown error: ${e.toString()}");
    }

    // _dio.patch(endPoint, data: patientDetails.toJson()).then((value) {
    //   if (value.statusCode! < 500) {
    //     logger.d("from if $value");
    //   }

    //   logger.d(value.statusMessage);
    // });
  }
}
