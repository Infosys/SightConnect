import 'package:eye_care_for_all/features/common_features/triage/data/enums/triage_enums.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TriageUrgencyRepository {
  TriageUrgency calculateTriageUrgency();
  TriageUrgency questionnaireUrgency();
  TriageUrgency visualAcuityUrgency();
}

var triageUrgencyRepositoryProvider = Provider<TriageUrgencyRepository>(
  (ref) => TriageUrgencyRepositoryImpl(),
);

class TriageUrgencyRepositoryImpl extends TriageUrgencyRepository {
  @override
  TriageUrgency calculateTriageUrgency() {
    return _triageUrgency(1);
  }

  @override
  TriageUrgency questionnaireUrgency() {
    return _triageUrgency(1);
  }

  @override
  TriageUrgency visualAcuityUrgency() {
    return _triageUrgency(1);
  }

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
}
