import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/roles/patient/patient_tumbling_test/models/triage_DTO.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TriageRemoteSource {
  Future<TriageDTO> saveTriage(TriageDTO triageDTO);
}

class TriageRemoteSourceImpl implements TriageRemoteSource {

  Dio _dio;

  TriageRemoteSourceImpl(this._dio);

  @override
  Future<TriageDTO> saveTriage(TriageDTO triageDTO) async {
    var endpoint = "/api/triage-report";
    try {
      var response = await _dio.post(
        endpoint,
        data: triageDTO.toJson()
      );

      return TriageDTO.fromJson(response.data);
    }
    catch(e){
      log(e.toString());
      return TriageDTO();
    }
  }

}

var triageRemoteSource = Provider<TriageRemoteSource>(
  (ref) => TriageRemoteSourceImpl(ref.read(dioProvider))
);