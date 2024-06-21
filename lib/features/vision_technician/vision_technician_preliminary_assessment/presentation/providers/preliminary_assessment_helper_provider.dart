import 'package:eye_care_for_all/core/models/vision_center_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/care_plan_post_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/device_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../main.dart';

final preliminaryAssessmentHelperProvider =
    ChangeNotifierProvider<PreliminaryAssessmentHelperNotifier>(
  (ref) => PreliminaryAssessmentHelperNotifier(ref),
);

class PreliminaryAssessmentHelperNotifier extends ChangeNotifier {
  Ref ref;
  final TextEditingController recommendationController =
      TextEditingController();
  final TextEditingController eyeRelatedProblemotherController =
      TextEditingController();
  final TextEditingController eyeSightProblemotherController =
      TextEditingController();
  final TextEditingController remarksController = TextEditingController();
  final TextEditingController otherQuestionsController =
      TextEditingController();
  final TextEditingController _equipmentController = TextEditingController();

  bool onIvrCall = false;
  bool recommendationSelected = false;
  bool visionCenterSelected = false;
  bool imagesSubmitted = false;
  bool eyeSightProblemSelected = false;
  bool eyeRelatedProblemSelected = false;
  bool visualAcuityRightEyeValueEntered = false;
  bool visualAcuityLeftEyeValueEntered = false;
  bool visualAcuityBothEyeValueEntered = false;
  bool isLoading = false;
  bool _triagePosted = false;
  bool _carePlanPosted = false;
  bool _isTest = true;
  CarePlanPostModel? carePlanResponse;
  TriagePostModel? triageResponse;
  TriagePriority selectedSeverity = TriagePriority.ROUTINE;
  OrganizationResponseModel? _selectedVisionCenter;
  String _readingUnit = 'LOGMAR';
  DeviceModel _selectedEquipment = const DeviceModel(
      displayName: 'LOGMAR',
      deviceObservation:
          DeviceObservation(rangeMin: "0.000", rangeMax: "1.000"));
  List<DeviceModel>? _equipmentsData;
  PreliminaryAssessmentHelperNotifier(this.ref);

  String get readingUnit => _readingUnit;
  DeviceModel get selectedEquipment => _selectedEquipment;
  List<DeviceModel>? get equipmentsData => _equipmentsData;
  bool get triagePosted => _triagePosted;
  bool get carePlanPosted => _carePlanPosted;
  bool get isTest => _isTest;
  TriagePostModel get triagePostModel => triageResponse!;
  CarePlanPostModel get carePlanPostModel => carePlanResponse!;

  void setTriagePosted(bool value) {
    _triagePosted = value;
    logger.f("triage posted value = $_triagePosted");
    notifyListeners();
  }

  void setCarePlanPosted(bool value) {
    _carePlanPosted = value;
    logger.f("careplan posted value = $_carePlanPosted");
    notifyListeners();
  }

  void setTest(bool value) {
    _isTest = value;
    logger.f("set test posted value = $_isTest");
    notifyListeners();
  }

  void setEquipmentsData(List<DeviceModel> equipmentsData) {
    _equipmentsData = equipmentsData;
    notifyListeners();
  }

  void setSelectedEquipment() {
    _selectedEquipment = equipmentsData!
        .firstWhere((element) => element.displayName == _readingUnit);
    notifyListeners();
  }

  void setReadingUnit(String value) {
    _readingUnit = value;
    logger.d("Reading unit set to $_readingUnit");
    notifyListeners();
    setSelectedEquipment();
    notifyListeners();
  }

  void setEquipment(String value) {
    _equipmentController.text = value;
    notifyListeners();
  }

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
