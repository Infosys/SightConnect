import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var optometricianReportProvider = ChangeNotifierProvider.autoDispose(
  (ref) => OptometricianReportProvider(ref),
);

class OptometricianReportProvider extends ChangeNotifier {
  Ref ref;
  OptometricianReportProvider(this.ref) : super() {
    logger.i('OptometricianReportProvider initialized');
  }

  TriageUrgency calculateUrgency() {
    int questionnaireUrgency =
        ref.watch(triageQuestionnaireProvider).getTriageQuestionnaireUrgency();
    int eyeScanUrgency =
        ref.watch(triageEyeScanProvider).getTriageEyeScanUrgency();

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
