import '../models/enums/triage_enums.dart';
import '../models/triage_response_model.dart';

abstract class TriageUrgencyRepository {
  double totalTriageUrgency(
    double quessionnaireUrgency,
    double visualAcuityUrgency,
    double eyeScanUrgency,
  );
  double questionnaireUrgency(
    List<PostQuestionResponseModel> questionnaireResponse,
  );
  double visualAcuityUrgency(
    List<PostObservationsModel> visionAcuityResponse,
  );

  double eyeScanUrgency(
    List<PostImagingSelectionModel> eyeScanResponse,
  );
  TriageUrgency mapScoreToUrgency(double score);
  double mapUrgencyToScore(TriageUrgency urgency);
}
