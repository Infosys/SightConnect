import 'dart:math';

import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_assessment_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TriageUrgencyRepository {
  TriageUrgency calculateTriageUrgency(
    TriageUrgency quessionnaireUrgency,
    TriageUrgency visualAcuityUrgency,
    TriageUrgency eyeScanUrgency,
  );
  TriageUrgency questionnaireUrgency(
    List<PostQuestionResponseModel> questionnaireResponse,
  );
  TriageUrgency visualAcuityUrgency(
    List<PostObservationsModel> visionAcuityResponse,
  );

  TriageUrgency eyeScanUrgency(
    List<PostImagingSelectionModel> eyeScanResponse,
  );
  int triageScore(TriageUrgency urgency);
}

var triageUrgencyRepositoryProvider = Provider<TriageUrgencyRepository>(
  (ref) => TriageUrgencyRepositoryImpl(),
);

class TriageUrgencyRepositoryImpl extends TriageUrgencyRepository {
  @override
  TriageUrgency calculateTriageUrgency(
    TriageUrgency quessionnaireUrgency,
    TriageUrgency visualAcuityUrgency,
    TriageUrgency eyeScanUrgency,
  ) {
    int score = triageScore(quessionnaireUrgency) +
        triageScore(visualAcuityUrgency) +
        triageScore(eyeScanUrgency);
    return _triageCompleteUrgency(score);
  }

  @override
  TriageUrgency questionnaireUrgency(
      List<PostQuestionResponseModel> questionnaireResponse) {
    int questionnaireScore = 1;
    for (var questions in questionnaireResponse) {
      for (var answer in questions.answer!) {
        questionnaireScore = max(questionnaireScore, answer.score!.toInt());
      }
    }

    return _triageUrgency(questionnaireScore);
  }

  @override
  TriageUrgency visualAcuityUrgency(
      List<PostObservationsModel> visionAcuityResponse) {
    int visionAcuityScore = 1;
    for (var observation in visionAcuityResponse) {
      visionAcuityScore = max(visionAcuityScore, observation.score!.toInt());
    }
    return _triageUrgency(visionAcuityScore);
  }

  @override
  TriageUrgency eyeScanUrgency(
      List<PostImagingSelectionModel> eyeScanResponse) {
    int eyeScanScore = 1;
    for (var observation in eyeScanResponse) {
      eyeScanScore = max(eyeScanScore, observation.score!.toInt());
    }
    return _triageUrgency(eyeScanScore);
  }

  @override
  TriageUrgency _triageCompleteUrgency(int urgency) {
    if (urgency > 5) {
      return TriageUrgency.EMERGENCY;
    } else if (urgency > 3) {
      return TriageUrgency.PRIORITY;
    } else {
      return TriageUrgency.ROUTINE;
    }
  }

  TriageUrgency _triageUrgency(int urgency) {
    switch (urgency) {
      case 3:
        return TriageUrgency.EMERGENCY;
      case 2:
        return TriageUrgency.PRIORITY;
      case 1:
        return TriageUrgency.ROUTINE;
      default:
        return TriageUrgency.ROUTINE;
    }
  }

  @override
  int triageScore(TriageUrgency urgency) {
    switch (urgency) {
      case TriageUrgency.EMERGENCY:
        return 3;
      case TriageUrgency.PRIORITY:
        return 2;
      case TriageUrgency.ROUTINE:
        return 1;
      default:
        return 1;
    }
  }
}
