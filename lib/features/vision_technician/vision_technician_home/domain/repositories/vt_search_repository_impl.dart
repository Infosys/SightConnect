import 'package:dio/dio.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/services/dio_service.dart';

abstract class VTPatientSearchRepository {
  Future<List<VTPatientDto>> getPatientProfile(String data);
}

var vtPatientSearchRepositoryProvider = Provider<VTPatientSearchRepository>(
  (ref) => VTPatientSearchRepositoryImpl(
    ref.watch(dioProvider),
  ),
);

class VTPatientSearchRepositoryImpl implements VTPatientSearchRepository {
  final Dio _dio;
  VTPatientSearchRepositoryImpl(this._dio);

  @override
  Future<List<VTPatientDto>> getPatientProfile(String query) async {
    
    if (query.length < 4) throw "List is empty";

    var endPoint = '/services/orchestration/api/patients/triage-reports?queryText=$query';

    return _dio.get(endPoint).then((value) {
      List<VTPatientDto> list = [];

      value.data.forEach((element) {
        list.add(VTPatientDto.fromJson(element));
      });
      return list;
    });
  }
}

bool isNumeric(String str) {
  return double.tryParse(str) != null;
}
