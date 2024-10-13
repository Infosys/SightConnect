/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dio/dio.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/vision_technician/vision_technician_preliminary_assessment/data/model/device_model.dart';
import 'package:eye_care_for_all/services/shared_preference.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../main.dart';
import '../../../../../../../services/dio_service.dart';
import '../../../../../../../services/exceptions.dart';

// TO DO : When Tenant and org data is updated on url, change the hardcoded data with dynamic data from sharedPreference

var vtDeviceDataProvider = FutureProvider((ref) {
  final Dio dio = ref.read(dioProvider);

  Future<List<DeviceModel>> getDeviceData(
      String role, String tenantId, String organizationId) async {
    String endpoint =
        '/services/assessments/api/device?userRole=$role&testCategory=TRIAGE&tenantId=$tenantId&organizationId=$organizationId';

    try {
      final response = await dio.get(endpoint);
      logger.d("device response is : ${response.data}");
      final deviceList = (response.data as List)
          .map((device) => DeviceModel.fromJson(device))
          .toList();

      return deviceList;
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      throw ServerException();
    } catch (e) {
      logger.e("Error in fetching data ${e.toString()}");
      throw UnknownException();
    }
  }

  return getDeviceData(
      "VISION_TECHNICIAN",
      SharedPreferenceService.getTenantIdVt.toString(),
      SharedPreferenceService.getOrganizationIdVt.toString());
});
