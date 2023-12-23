import 'package:eye_care_for_all/core/models/vision_center_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var preliminaryAssessmentHelperProvider =
    ChangeNotifierProvider<PreliminaryAssessmentHelperNotifier>(
  (ref) => PreliminaryAssessmentHelperNotifier(ref),
);

class PreliminaryAssessmentHelperNotifier extends ChangeNotifier {
  Ref ref;
  var recommendationController = TextEditingController();
  var eyeRelatedProblemotherController = TextEditingController();
  var eyeSightProblemotherController = TextEditingController();
  var remarksController = TextEditingController();

  OrganizationResponseModel? _selectedVisionCenter;
  PreliminaryAssessmentHelperNotifier(this.ref);

  OrganizationResponseModel? get selectedVisionCenter => _selectedVisionCenter;

  void setSelectedVisionCenter(OrganizationResponseModel? visionCenter) {
    _selectedVisionCenter = visionCenter;
    notifyListeners();
  }

  bool isSelectVisionCenter(OrganizationResponseModel? visionCenter) {
    return _selectedVisionCenter == visionCenter;
  }
}
