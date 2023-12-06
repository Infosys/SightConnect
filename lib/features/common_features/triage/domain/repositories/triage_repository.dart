import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_assessment_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';

abstract class TriageRepository {
  Future<Either<Failure, TriageAssessmentModel>> getTriage();
  Future<Either<Failure, TriageResponseModel>> saveTriage({
    required TriageResponseModel triage,
  });
  Future<Either<Failure, int>> getTriageCurrentStep();
}
