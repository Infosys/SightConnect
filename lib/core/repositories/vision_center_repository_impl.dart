import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/models/vision_center_model.dart';
import 'package:eye_care_for_all/core/repositories/vision_center_repository.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionCenterRepositoryProvider = Provider<VisionCenterRepository>((ref) {
  return VisionCenterRepositoryImpl(ref.read(dioProvider));
});

class VisionCenterRepositoryImpl extends VisionCenterRepository {
  final Dio dio;
  VisionCenterRepositoryImpl(this.dio);
  @override
  Future<List<OrganizationResponseModel>> getVisionCenters({
    double? latitude,
    double? longitude,
  }) async {
    if (latitude == null || longitude == null) {
      throw Exception("Latitude and longitude cannot be null");
    }
    logger.f("latitude: $latitude, longitude: $longitude");
    final endpoint =
        "/services/orchestration/api/v2/organizations/search?latitude=$latitude&longitude=$longitude";

    try {
      final response = await dio.get<List<dynamic>>(endpoint);
      //log response.data.facilityInformation.facilityAddressDetail for each response object looped
      for (var element in response.data!) {
        logger.f(element['facilityInformation']['facilityAddressDetails']
            .toString());
      }
      return response.data!
          .map((json) => OrganizationResponseModel.fromJson(json))
          .toList();
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<OrganizationResponseModel> getVisionCenterById(
      int? organizationProfileId) async {
    if (organizationProfileId == null) {
      throw Exception("OrganizationProfileId cannot be null");
    }
    final endpoint =
        "/services/orchestration/api/v2/organizations?organizationId=$organizationProfileId";

    try {
      final response = await dio.get<Map<String, dynamic>>(endpoint);
      return OrganizationResponseModel.fromJson(response.data!);
    } on DioException catch (e) {
      DioErrorHandler.handleDioError(e);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
