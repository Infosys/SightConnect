import 'package:eye_care_for_all/core/models/vision_center_model.dart';

abstract class VisionCenterRepository {
  Future<List<OrganizationResponseModel>> getVisionCenters({
    required double latitude,
    required double longitude,
  });
}
