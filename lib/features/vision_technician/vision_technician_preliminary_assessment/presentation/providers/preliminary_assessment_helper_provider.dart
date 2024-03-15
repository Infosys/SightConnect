import 'package:eye_care_for_all/core/models/vision_center_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/care_plan_post_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final preliminaryAssessmentHelperProvider =
    ChangeNotifierProvider<PreliminaryAssessmentHelperNotifier>(
  (ref) => PreliminaryAssessmentHelperNotifier(ref),
);

class PreliminaryAssessmentHelperNotifier extends ChangeNotifier {
  Ref ref;
  final recommendationController = TextEditingController();
  final eyeRelatedProblemotherController = TextEditingController();
  final eyeSightProblemotherController = TextEditingController();
  final remarksController = TextEditingController();
  final otherQuestionsController = TextEditingController();
  bool onIvrCall = true;
  bool recommendationSelected = false;
  bool visionCenterSelected = false;
  bool imagesSubmitted = false;
  bool eyeSightProblemSelected = false;
  bool eyeRelatedProblemSelected = false;
  bool visualAcuityRightEyeValueEntered = false;
  bool visualAcuityLeftEyeValueEntered = false;
  bool visualAcuityBothEyeValueEntered = false;
  bool isLoading = false;
  CarePlanPostModel? carePlanResponse;
  TriagePostModel? triageResponse;
  TriagePriority selectedSeverity = TriagePriority.ROUTINE;
  OrganizationResponseModel? _selectedVisionCenter;
  PreliminaryAssessmentHelperNotifier(this.ref);

  void setOtherQuestions(String value) {
    otherQuestionsController.text = value;
    notifyListeners();
  }

  void setSeverity(TriagePriority value) {
    selectedSeverity = value;
    notifyListeners();
  }

  OrganizationResponseModel? get selectedVisionCenter => _selectedVisionCenter;

  void toggleIvrCall(bool value) {
    onIvrCall = value;
    notifyListeners();
  }

  void setRecommendationSelected() {
    recommendationSelected = true;
    notifyListeners();
  }

  void setImagesSubmitted() {
    imagesSubmitted = true;
    notifyListeners();
  }

  void setEyeSightProblemSelected(bool value) {
    eyeSightProblemSelected = value;
    notifyListeners();
  }

  void setEyeRelatedProblemSelected(bool value) {
    eyeRelatedProblemSelected = value;
    notifyListeners();
  }

  void setSelectedVisionCenter(OrganizationResponseModel? visionCenter) {
    visionCenterSelected = true;
    _selectedVisionCenter = visionCenter;
    notifyListeners();
  }

  bool isSelectVisionCenter(OrganizationResponseModel? visionCenter) {
    return _selectedVisionCenter == visionCenter;
  }

  void setVisualAcuityRightEyeValueEntered(bool value) {
    visualAcuityRightEyeValueEntered = value;
    notifyListeners();
  }

  void setVisualAcuityLeftEyeValueEntered(bool value) {
    visualAcuityLeftEyeValueEntered = value;
    notifyListeners();
  }

  void setVisualAcuityBothEyeValueEntered(bool value) {
    visualAcuityBothEyeValueEntered = value;
    notifyListeners();
  }

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void setTriageResponse(TriagePostModel? value) {
    triageResponse = value;
    notifyListeners();
  }

  void setCarePlanResponse(CarePlanPostModel? value) {
    carePlanResponse = value;
    notifyListeners();
  }

  bool canSubmit() {
    var canSubmit = recommendationSelected &&
        visionCenterSelected &&
        (onIvrCall ||
            (visualAcuityRightEyeValueEntered &&
                visualAcuityLeftEyeValueEntered &&
                visualAcuityBothEyeValueEntered &&
                imagesSubmitted));
    return canSubmit;
  }
}
