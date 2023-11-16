import 'package:eye_care_for_all/features/common_features/triage/data/contracts/triage_urgency_repository.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/enums/triage_enums.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var triageUrgencyRepositoryProvider = Provider<TriageUrgencyRepository>(
  (ref) => TriageUrgencyRepositoryImpl(
    ref.watch(triageQuestionnaireProvider),
    ref.watch(triageEyeScanProvider),
    ref.watch(tumblingTestProvider),
  ),
);

class TriageUrgencyRepositoryImpl extends TriageUrgencyRepository {
  TriageQuestionnaireProvider triageQuestionnaireProvider;
  TriageEyeScanProvider triageEyeScanProvider;
  int maxUrgency = 5;
  VisualAcuityTestProvider tumblingTestProvider;

  TriageUrgencyRepositoryImpl(
    this.triageQuestionnaireProvider,
    this.triageEyeScanProvider,
    this.tumblingTestProvider,
  );
  @override
  TriageUrgency calculateTriageUrgency() {
    int questionnaireUrgency =
        triageQuestionnaireProvider.getTriageQuestionnaireUrgency();
    int eyeScanUrgency = triageEyeScanProvider.getTriageEyeScanUrgency();
    int visionAcuityUrgency = tumblingTestProvider.getTumblingTestUrgency();

    logger.f({
      'questionnaireUrgency': questionnaireUrgency,
      'eyeScanUrgency': eyeScanUrgency,
      'visionAcuityUrgency': visionAcuityUrgency,
    });

    return _triageUrgency(
      (questionnaireUrgency + eyeScanUrgency + visionAcuityUrgency),
    );
  }

  @override
  QuestionnaireUrgency questionnaireUrgency() {
    int questionnaireUrgency =
        triageQuestionnaireProvider.getTriageQuestionnaireUrgency();
    logger.d(
        "Questionnaire Urgency frooooooooooooooooom IMPL: $questionnaireUrgency");
    if (questionnaireUrgency >= 3) {
      return QuestionnaireUrgency.EMERGENCY;
    } else if (questionnaireUrgency >= 2) {
      return QuestionnaireUrgency.PRIORITY;
    } else {
      return QuestionnaireUrgency.ROUTINE;
    }
  }

  @override
  VisualAcuityUrgency visualAcuityUrgency() {
    int visionAcuityUrgency = tumblingTestProvider.getTumblingTestUrgency();
    logger.d(
        "Vision Acuity Urgency frooooooooooooooooom IMPL: $visionAcuityUrgency");
    if (visionAcuityUrgency >= 3) {
      return VisualAcuityUrgency.EMERGENCY;
    } else if (visionAcuityUrgency >= 2) {
      return VisualAcuityUrgency.PRIORITY;
    } else {
      return VisualAcuityUrgency.ROUTINE;
    }
  }

  TriageUrgency _triageUrgency(int urgency) {
    if (urgency > maxUrgency) {
      return TriageUrgency.EMERGENCY;
    } else if (urgency > 3) {
      return TriageUrgency.PRIORITY;
    } else {
      return TriageUrgency.ROUTINE;
    }
  }
}
