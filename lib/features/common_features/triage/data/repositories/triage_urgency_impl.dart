import 'dart:math';

import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/repositories/triage_urgency_repository.dart';

var triageUrgencyRepositoryProvider = Provider<TriageUrgencyRepository>(
  (ref) => TriageUrgencyRepositoryImpl(),
);

class TriageUrgencyRepositoryImpl extends TriageUrgencyRepository {
  @override
  double questionnaireUrgency(
      List<PostTriageQuestionModel> questionnaireResponse) {
    double questionnaireUrgency = 1;
    int totalScore=0;
    for (var questions in questionnaireResponse) {
      for (var answer in questions.answers!) {
        //TODO: logic changeded
       // questionnaireScore = max(questionnaireScore, answer.score!);
        totalScore+=answer.score!.toInt();
      }
    }
    if(totalScore>=5){
      questionnaireUrgency=3;
    }
    else if(totalScore>=3){
      questionnaireUrgency=2;
    }
    else{
      questionnaireUrgency=1;
    }
    return questionnaireUrgency;
  }

  @override
  double visualAcuityUrgency(
      List<PostTriageObservationsModel> visionAcuityResponse) {
    double visionAcuityScore = 0;
    double visualAcuityUrgency=1;

    for (var observation in visionAcuityResponse) {
      visionAcuityScore +=  observation.score!;
    }
    if(visionAcuityScore>=5){
      visualAcuityUrgency=3;
    }
    else if(visionAcuityScore>=3){
      visualAcuityUrgency=2;
    }
    else{
      visualAcuityUrgency=1;
    }
    return visualAcuityUrgency;
  }

  @override
  double eyeScanUrgency(List<PostTriageImagingSelectionModel> eyeScanResponse) {
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
