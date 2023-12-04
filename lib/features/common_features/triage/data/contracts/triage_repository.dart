import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/assessment_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_model.dart';

abstract class TriageRepository {
  Future<Either<Failure, AssessmentResponseModel>> getTriage();
  Future<Either<Failure, TriageModel>> saveTriage({
    required TriageModel triage,
  });
  
}
