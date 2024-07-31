import 'package:eye_care_for_all/apps/sightconnect/core/models/vision_center_model.dart';

abstract class VisionCenterRepository {
  Future<List<OrganizationResponseModel>> getVisionCenters({
    double? latitude,
    double? longitude,
  });
  Future<OrganizationResponseModel> getVisionCenterById(
      int? organizationProfileId);
}
