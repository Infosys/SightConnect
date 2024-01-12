import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_patient_response_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vgEyeAssessmentRemoteSource = Provider(
  (ref) => VgEyeAssessmentRemoteSourceImpl(
    ref.read(dioProvider),
  ),
);

abstract class VgEyeAssessmentRemoteSource {
  Future<List<VisionGuardianPatientResponseModel>> getVgEyeAssessmentReports(
      {required int practitionerId, required String category});
}

class VgEyeAssessmentRemoteSourceImpl implements VgEyeAssessmentRemoteSource {
  final Dio _dio;

  VgEyeAssessmentRemoteSourceImpl(this._dio);

  @override
  Future<List<VisionGuardianPatientResponseModel>> getVgEyeAssessmentReports(
      {required int practitionerId, required String category}) async {
    var endpoint =
        "/services/orchestration/api/patients/triage-reports/practitioners/$practitionerId";

    try {
      final response =
          await _dio.get(endpoint, queryParameters: {"category": category});

      if (response.statusCode! >= 200 && response.statusCode! < 210) {
        return (response.data as List)
            .map((e) => VisionGuardianPatientResponseModel.fromJson(e))
            .toList();
      } else {
        throw ServerException();
      }
    } catch (error) {
      rethrow;
    }
  }
}
