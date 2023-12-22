import 'dart:math';

import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/repositories/triage_urgency_repository.dart';

var triageUrgencyRepositoryProvider = Provider<TriageUrgencyRepository>(
  (ref) => TriageUrgencyRepositoryImpl(),
);

class TriageUrgencyRepositoryImpl extends TriageUrgencyRepository {
  @override
  double questionnaireUrgency(
      List<PostQuestionResponseModel> questionnaireResponse) {
    double questionnaireScore = 1;
    for (var questions in questionnaireResponse) {
      for (var answer in questions.answers!) {
        questionnaireScore = max(questionnaireScore, answer.score!);
      }
    }

    return questionnaireScore;
  }

  @override
  double visualAcuityUrgency(List<PostObservationsModel> visionAcuityResponse) {
    double visionAcuityScore = 1;
    for (var observation in visionAcuityResponse) {
      visionAcuityScore = max(visionAcuityScore, observation.score!);
    }
    return visionAcuityScore;
  }

  @override
  double eyeScanUrgency(List<PostImagingSelectionModel> eyeScanResponse) {
    double eyeScanScore = 1;
    for (var observation in eyeScanResponse) {
      eyeScanScore = max(eyeScanScore, observation.score!);
    }
    return eyeScanScore;
  }

  @override
  TriageUrgency mapScoreToUrgency(double score) {
    return switch (score) {
      3 => TriageUrgency.EMERGENCY,
      2 => TriageUrgency.PRIORITY,
      1 => TriageUrgency.ROUTINE,
      _ => TriageUrgency.ROUTINE,
    };
  }

  @override
  double mapUrgencyToScore(TriageUrgency urgency) {
    return switch (urgency) {
      TriageUrgency.EMERGENCY => 3.0,
      TriageUrgency.PRIORITY => 2.0,
      TriageUrgency.ROUTINE => 1.0,
    };
  }

  @override
  double totalTriageUrgency(double quessionnaireUrgency,
      double visualAcuityUrgency, double eyeScanUrgency) {
    return quessionnaireUrgency + visualAcuityUrgency + eyeScanUrgency;
  }
}
