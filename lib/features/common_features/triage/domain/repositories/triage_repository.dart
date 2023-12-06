import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_assessment_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';

abstract class TriageRepository {
  Future<Either<Failure, TriageAssessmentModel>> getTriage();
  Future<Either<Failure, TriageResponseModel>> saveTriage({
    required TriageResponseModel triage,
  });
  Future<Either<Failure, TriageAssessmentModel>> updateTriage({
    required TriageAssessmentModel triage,
  });
  Future<Either<Failure, void>> deleteTriage();
  Future<Either<Failure, int>> getTriageCurrentStep();

  Future<Either<Failure, TriageResponseModel>> saveFinalTriageResponse({
    required TriageResponseModel triageResponse,
  });
  Future<Either<Failure, TriageResponseModel>> getFinalTriageResponse();

  Future<Either<Failure, void>> saveTriageQuestionnaireLocally({
    required List<PostQuestionResponseModel> triageQuestionnaireResponse,
  });
  Future<Either<Failure, void>> saveTriageVisualAcuityLocally({
    required List<PostObservationsModel> triageVisualAcuity,
  });
  Future<Either<Failure, void>> saveTriageEyeScanLocally({
    required List<PostImagingSelectionModel> triageEyeScan,
  });
  Future<Either<Failure, List<PostQuestionResponseModel>>>
      getQuestionaireResponseLocally();
  Future<Either<Failure, List<PostObservationsModel>>>
      getVisionAcuityTumblingResponseLocally();
  Future<Either<Failure, List<PostImagingSelectionModel>>>
      getTriageEyeScanResponseLocally();
  Future<Either<Failure, void>> resetTriage();
}
