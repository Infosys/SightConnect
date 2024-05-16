import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/services/shared_preference.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/device_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../core/services/dio_service.dart';
import '../../../../../core/services/exceptions.dart';
import '../../../../../main.dart';

// TO DO : When Tenant and org data is updated on url, change the hardcoded data with dynamic data from sharedPreference

var vtDeviceDataProvider = FutureProvider((ref) {
  final Dio dio = ref.read(dioProvider);

  Future<List<DeviceModel>> getDeviceData(
      String role, String tenantId, String organizationId) async {
    String endpoint =
        '/services/assessments/api/device?userRole=$role&testCategory=TRIAGE&tenantId=$tenantId&organizationId=$organizationId';

    try {
      final response = await dio.get(endpoint);
      logger.f("device response is : ${response.data}");
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
