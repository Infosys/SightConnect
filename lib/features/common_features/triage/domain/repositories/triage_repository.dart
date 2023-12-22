import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart';

abstract class TriageRepository {
  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>> getTriage();
  Future<Either<Failure, TriageResponseModel>> saveTriage({
    required TriagePostModel triage,
  });

  Future<Either<Failure, TriageResponseModel>> updateTriage({
    required TriageUpdateModel triage,
  });
  Future<Either<Failure, void>> deleteTriage();
  Future<Either<Failure, int>> getTriageCurrentStep();


  Future<Either<Failure, TriagePostModel>> saveTriageResponse({
    required TriagePostModel triageResponse,
  });
  Future<Either<Failure, TriagePostModel>> getTriageResponse();

  Future<Either<Failure, void>> saveTriageQuestionnaireLocally({
    required List<PostTriageQuestionModel> triageQuestionnaireResponse,
  });
  Future<Either<Failure, void>> saveTriageVisualAcuityLocally({
    required List<PostTriageObservationsModel> triageVisualAcuity,
  });
  Future<Either<Failure, void>> saveTriageEyeScanLocally({
    required List<PostTriageImagingSelectionModel>  triageEyeScan,
  });
  Future<Either<Failure, List<PostTriageQuestionModel>>>
      getQuestionaireResponseLocally();
  Future<Either<Failure, List<PostTriageObservationsModel>>>
      getVisionAcuityTumblingResponseLocally();
  Future<Either<Failure, List<PostTriageImagingSelectionModel> >>
      getTriageEyeScanResponseLocally();
  Future<Either<Failure, void>> resetTriage();
}
