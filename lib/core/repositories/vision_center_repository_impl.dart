import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/models/vision_center_model.dart';
import 'package:eye_care_for_all/core/repositories/vision_center_repository.dart';
import 'package:eye_care_for_all/core/services/dio_service.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionCenterRepositoryProvider = Provider<VisionCenterRepository>((ref) {
  return VisionCenterRepositoryImpl(ref.read(dioProvider));
});

class VisionCenterRepositoryImpl extends VisionCenterRepository {
  final Dio dio;
  VisionCenterRepositoryImpl(this.dio);
  @override
  Future<List<OrganizationResponseModel>> getVisionCenters(
      {required double latitude, required double longitude}) async {
    final endpoint =
        "/services/orchestration/api/organizations/search?latitude=$latitude&longitude=$longitude";

    try {
      final response = await dio.get<List<dynamic>>(endpoint);

      return response.data!
          .map((json) => OrganizationResponseModel.fromJson(json))
          .toList();
    } catch (e) {
      logger.e(e);
      return [];
    }
  }
}
