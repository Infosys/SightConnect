import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/models/failure.dart';
import 'package:eye_care_for_all/features/patient/patient_triage/data/models/triage_response.dart';

abstract class TriageRepository {
  Future<Either<Failure, TriageResponse>> getTriage();
  Future<Either<Failure, TriageResponse>> saveTriage({
    required TriageResponse triage,
  });
}
