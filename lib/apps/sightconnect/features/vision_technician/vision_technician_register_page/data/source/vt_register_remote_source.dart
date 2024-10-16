/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_guardian/vision_guardian_add_event/data/model/vg_event_patient_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/dio_service.dart';
import 'package:eye_care_for_all/services/exceptions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class VTRegisterRemoteSource {
  Future<List<VisionGuardianEventPatientResponseModel>> getPatientByNumber(
    String mobileNo,
  );
}

var vtRegisterRemoteSource = Provider<VTRegisterRemoteSource>(
  (ref) => VTRegisterRemoteSourceImpl(
    ref.watch(dioProvider),
  ),
);

class VTRegisterRemoteSourceImpl implements VTRegisterRemoteSource {
  final Dio _dio;
  VTRegisterRemoteSourceImpl(this._dio);

  @override
  Future<List<VisionGuardianEventPatientResponseModel>> getPatientByNumber(
      String mobileNo) async {
    if (mobileNo.length != 10) throw "Invalid mobile number";
    var endPoint = '/services/orchestration/api/v2/patients/filter';
    endPoint += '?queryText=$mobileNo';
    try {
      var response = await _dio.get<List<dynamic>>(endPoint);

      return (response.data as List)
          .map((e) => VisionGuardianEventPatientResponseModel.fromJson(
              e["profile"]["patient"]))
          .toList();
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      logger.d("Error in getPatientByNumber: $e");
      return [];
    }
  }
}
