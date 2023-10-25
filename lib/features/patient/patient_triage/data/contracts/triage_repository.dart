import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_assessment.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_response.dart';

abstract class TriageRepository {
  Future<Either<Failure, TriageAssessment>> getTriage();
  Future<Either<Failure, TriageResponse>> saveTriage({
    required TriageResponse triage,
  });
}
