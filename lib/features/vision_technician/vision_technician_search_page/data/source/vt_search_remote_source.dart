import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VTSearchRemoteSource {
  Future<List<VTPatientDto>> getPatientProfile(String query);
}

var vtSearchRemoteSource = Provider<VTSearchRemoteSource>(
    (ref) => VTSearchRemoteSourceImpl(ref.watch(dioProvider)));

class VTSearchRemoteSourceImpl implements VTSearchRemoteSource {
  final Dio _dio;
  VTSearchRemoteSourceImpl(this._dio);

  @override
  Future<List<VTPatientDto>> getPatientProfile(String query) async {
    if (query.length < 3) throw "List is empty";

    var endPoint =
        '/services/orchestration/api/v2/patients/triage-reports?queryText=$query';

    logger.d("endpoint for search $endPoint");

    return _dio.get(endPoint).then((value) {
      List<VTPatientDto> list = [];

      value.data.forEach((element) {
        list.add(VTPatientDto.fromJson(element));
      });
      logger.d("List of patients: $list");
      return list;
    });
  }
}
