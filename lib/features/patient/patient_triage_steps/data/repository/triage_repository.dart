import 'package:eye_care_for_all/core/models/failure.dart';
import 'package:eye_care_for_all/features/patient/patient_triage_steps/data/model/triage.dart';
import 'package:fpdart/fpdart.dart';

abstract class TriageRepository {
  Future<Either<Failure, Triage>> getTriage();
  Future<Either<Failure, Triage>> saveTriage({required Triage triage});
}
