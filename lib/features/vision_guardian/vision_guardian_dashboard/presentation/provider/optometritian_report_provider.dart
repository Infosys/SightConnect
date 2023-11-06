import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_eye_scan/provider/patient_triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/presentation/patient_triage_questionnaire/provider/patient_triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_visual_acuity_tumbling/presentation/providers/patient_visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var optometricianReportProvider = ChangeNotifierProvider.autoDispose(
  (ref) => OptometricianReportProvider(ref),
);

class OptometricianReportProvider extends ChangeNotifier {
  Ref ref;
  OptometricianReportProvider(this.ref) {
    getQuestionAnswered();
  }

  List<Map> _questionAnswered = [];

  getQuestionAnswered() {
    int currentPage = -1;
    List<Map<int, bool>> questionnaireResponse =
        ref.read(patientTriageQuestionnaireProvider).finalquestionnaireResponse;
    List<QuestionnaireSection> questionList =
        ref.read(patientTriageQuestionnaireProvider).questionnaireSections;

    for (var question in questionList) {
      for (var element in question.questionnaire!) {
        var tempList = [];
        currentPage++;
        for (var element in element.questions!) {
          if (questionnaireResponse[currentPage].keys.contains(element.code)) {
            tempList.add(element.statement);
          }
        }
        _questionAnswered
            .add({'question': element.description, 'answer': tempList});
      }
    }

    logger.d("Question Answered: $_questionAnswered");

    notifyListeners();
  }

  TriageUrgency calculateUrgency() {
    int questionnaireUrgency = ref
        .watch(patientTriageQuestionnaireProvider)
        .getTriageQuestionnaireUrgency();
    int eyeScanUrgency =
        ref.watch(patientTriageEyeScanProvider).getTriageEyeScanUrgency();

    int visionAcuityUrgency =
        ref.watch(tumblingTestProvider).getTumblingTestUrgency();

    logger.f({
      'questionnaireUrgency': questionnaireUrgency,
      'eyeScanUrgency': eyeScanUrgency,
      'visionAcuityUrgency': visionAcuityUrgency,
    });

    return _triageUrgency(
      (questionnaireUrgency + eyeScanUrgency + visionAcuityUrgency),
    );
  }

  TriageUrgency _triageUrgency(int urgency) {
    if (urgency > 5) {
      return TriageUrgency.EMERGENCY;
    } else if (urgency > 3) {
      return TriageUrgency.PRIORITY;
    } else {
      return TriageUrgency.ROUTINE;
    }
  }
}

enum TriageUrgency {
  EMERGENCY,
  PRIORITY,
  ROUTINE,
}
