import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_assessment_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_triage_report/data/repository/triage_offline_urgency_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var optometritianOfflineReportProvider =
    ChangeNotifierProvider<OptometritianOfflineReportProvider>((ref) {
  return OptometritianOfflineReportProvider(
    ref.watch(triageUrgencyRepositoryProvider),
    ref.watch(triageLocalSourceProvider),
  );
});

class OptometritianOfflineReportProvider extends ChangeNotifier {
  late final TriageUrgencyRepository _triageUrgencyRepository;
  late final TriageLocalSource _triageLocalSource;
  OptometritianOfflineReportProvider(
    this._triageUrgencyRepository,
    this._triageLocalSource,
  ) {
    getTriage();
    getTriageResponse();
  }

  List<QuestionnaireSectionsResponseModel> _questionnaireData = [];
  List<ObservationSetSectionResponseModel> _visionAcuityData = [];
  List<ObservationSetSectionResponseModel> _eyeScanData = [];

  List<PostQuestionResponseModel> _questionnaireResponse = [];
  List<PostObservationsModel> _visionAcuityResponse = [];
  List<PostImagingSelectionModel> _eyeScanResponse = [];

  Future<void> getTriage() async {
    TriageAssessmentModel triageResponse = await _triageLocalSource.getTriage();
    _questionnaireData =
        triageResponse.questionnaireSectionsResponseDTOList ?? [];
    _visionAcuityData =
        triageResponse.observationSetSectionResponseDTOList ?? [];
    _eyeScanData = triageResponse.observationSetSectionResponseDTOList ?? [];

    logger.f({
      "questionnaireData": _questionnaireData,
      "visionAcuityData": _visionAcuityData,
      "eyeScanData": _eyeScanData,
    });

    notifyListeners();
  }

  Future<void> getTriageResponse() async {
    TriageResponseModel triageResponse =
        await _triageLocalSource.getTriageResponse();
    _questionnaireResponse = triageResponse.questionResponse ?? [];
    _visionAcuityResponse = triageResponse.observations ?? [];
    _eyeScanResponse = triageResponse.imagingSelection ?? [];

    logger.f({
      "questionnaireData": _questionnaireData,
      "visionAcuityData": _visionAcuityData,
      "eyeScanData": _eyeScanData,
    });

    notifyListeners();
  }

  List<Map<String, dynamic>> getQuestionnaireResult() {
    List<Map<String, dynamic>> data = [];
    List<int> responseKeys = [];

    for (var element in _questionnaireResponse) {
      responseKeys.add(element.linkId!);
    }

    logger.f({
      "responseKeys": responseKeys,
      "questionnaireData": _questionnaireData,
    });

    for (QuestionnaireSectionsResponseModel quessionaireSection
        in _questionnaireData) {
      for (QuestionnaireResponseModel question
          in quessionaireSection.questionnaireResponseDTOList!) {
        List<String> selectedOptions = [];
        for (var option in question.questionResponseDTO!) {
          if (responseKeys.contains(option.id)) {
            selectedOptions.add(option.definition!);
          }
        }
        data.add({
          "question": question.description,
          "answer": selectedOptions,
        });
      }
    }

    logger.f({
      "questionnaireResult": data,
    });

    return data;
  }

  List<Map<String, dynamic>> getVisionAcquityResult() {
    List<Map<String, dynamic>> data = [];

    for (var element in _visionAcuityResponse) {
      data.add({
        "eye": element.value,
        "value": element.score.toString(),
        "color": _getChipUrgencyColor(element.score!),
      });
    }
    return data;
  }

  TriageUrgency calculateTriageUrgency() {
    return _triageUrgencyRepository.calculateTriageUrgency();
  }

  TriageUrgency getQuestionnaireUrgency() {
    return _triageUrgencyRepository.questionnaireUrgency();
  }

  TriageUrgency visualAcuityUrgency() {
    return _triageUrgencyRepository.visualAcuityUrgency();
  }
}

Color getColorOnUrgency(TriageUrgency urgency) {
  return switch (urgency) {
    TriageUrgency.EMERGENCY => AppColor.red,
    TriageUrgency.PRIORITY => AppColor.orange,
    TriageUrgency.ROUTINE => AppColor.green,
  };
}

String getUrgencyText(TriageUrgency urgency) {
  return switch (urgency) {
    TriageUrgency.EMERGENCY => "Urgent Consult",
    TriageUrgency.PRIORITY => "Early Consult",
    TriageUrgency.ROUTINE => "Regular Consult",
  };
}

Color _getChipUrgencyColor(double value) {
  if (value >= 1) {
    return AppColor.red;
  } else if (value >= 0.5) {
    return AppColor.orange;
  } else {
    return AppColor.green;
  }
}
