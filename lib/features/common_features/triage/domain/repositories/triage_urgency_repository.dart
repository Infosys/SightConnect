import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';

import '../models/enums/triage_enums.dart';

abstract class TriageUrgencyRepository {
  double totalTriageUrgency(
    double quessionnaireUrgency,
    double visualAcuityUrgency,
    double eyeScanUrgency,
  );
  TriageUrgency maxTotalUrgency(
    double quessionnaireUrgency,
    double visualAcuityUrgency,
    double eyeScanUrgency,
  );
  double questionnaireUrgency(
    List<PostTriageQuestionModel> questionnaireResponse,
  );
  double visualAcuityUrgency(
    List<PostTriageObservationsModel> visionAcuityResponse,
  );

  double eyeScanUrgency(
    List<PostTriageImagingSelectionModel> eyeScanResponse,
  );
  TriageUrgency mapScoreToUrgency(double score);
  double mapUrgencyToScore(TriageUrgency urgency);
}
