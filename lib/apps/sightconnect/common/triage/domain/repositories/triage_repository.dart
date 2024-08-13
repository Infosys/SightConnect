import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_update_model.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';

abstract class TriageRepository {
  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>> getAssessment();
  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>> saveAssessment({
    required DiagnosticReportTemplateFHIRModel assessment,
  });

  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>> updateAssessment({
    required DiagnosticReportTemplateFHIRModel assessment,
  });
  Future<Either<Failure, void>> deleteAssessment();
  Future<Either<Failure, int>> getTriageCurrentStep();

  Future<Either<Failure, TriagePostModel>> saveTriageResponse({
    required TriagePostModel triageResponse,
  });

  Future<Either<Failure, TriagePostModel>> getTriageResponse();

  Future<Either<Failure, TriagePostModel>> updateTriageResponse({
    required TriageUpdateModel triageResponse,
  });

  Future<Either<Failure, void>> saveTriageQuestionnaireLocally({
    required List<PostTriageQuestionModel> triageQuestionnaireResponse,
  });
  Future<Either<Failure, void>> saveTriageVisualAcuityLocally({
    required List<PostTriageObservationsModel> triageVisualAcuity,
  });

  Future<Either<Failure, void>> saveTriageDistanceVisualAcuityLocally({
    required List<PostTriageObservationsModel> triageVisualAcuity,
  });

  Future<Either<Failure, void>> saveTriageEyeScanLocally({
    required List<PostTriageImagingSelectionModel> triageEyeScan,
  });
  Future<Either<Failure, List<PostTriageQuestionModel>>>
      getQuestionaireResponseLocally();
  Future<Either<Failure, List<PostTriageObservationsModel>>>
      getVisionAcuityTumblingResponseLocally();

  Future<Either<Failure, List<PostTriageObservationsModel>>>
      getTriageDistanceVisualAcuityResponseLocally();

  Future<Either<Failure, List<PostTriageImagingSelectionModel>>>
      getTriageEyeScanResponseLocally();
  Future<Either<Failure, void>> resetTriage();
  Future<Either<Failure, TriagePostModel>> saveTriageResponseForEvent({
    required TriagePostModel triageResponse,
    required String eventId,
  });
}
