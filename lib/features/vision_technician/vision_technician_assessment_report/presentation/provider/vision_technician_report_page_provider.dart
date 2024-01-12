import 'package:eye_care_for_all/core/models/vision_center_model.dart';
import 'package:eye_care_for_all/core/repositories/vision_center_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var visionTechnicianReportPageProvider = FutureProvider.autoDispose.family<OrganizationResponseModel, int>((ref, visionCenterId) {
  return ref.watch(visionCenterRepositoryProvider).getVisionCenterById(visionCenterId);
});

class VisionTechnicianReportPageProvider extends ChangeNotifier {
  
}