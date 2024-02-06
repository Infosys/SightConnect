import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VTRegisterRemoteSource {
  Future<List<VisionGuardianEventPatientResponseModel>> getPatientByNumber(
      String mobileNo);
}

var vtRegisterRemoteSource = Provider<VTRegisterRemoteSource>(
    (ref) => VTRegisterRemoteSourceImpl(ref.watch(dioProvider)));

class VTRegisterRemoteSourceImpl implements VTRegisterRemoteSource {
  final Dio _dio;
  VTRegisterRemoteSourceImpl(this._dio);

  @override
  Future<List<VisionGuardianEventPatientResponseModel>> getPatientByNumber(
      String mobileNo) async {
    if (mobileNo.length != 10) throw "Invalid mobile number";

    var endPoint = '/services/orchestration/api/patients/filter';
    endPoint += '?queryText=$mobileNo';

    try {
      var response = await _dio.get(endPoint);

      List<VisionGuardianEventPatientResponseModel> data =
          (response.data as List)
              .map((e) => VisionGuardianEventPatientResponseModel.fromJson(
                  e["profile"]["patient"]))
              .toList();
      return data;
    } catch (e) {
      logger.d("Error in getPatientByNumber: $e");
      return [];
    }
  }
}
