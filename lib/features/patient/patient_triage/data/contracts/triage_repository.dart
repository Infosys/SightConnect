import 'package:eye_care_for_all/core/models/failure.dart';
import 'package:fpdart/fpdart.dart';

import '../models/triage.dart';

abstract class TriageRepository {
  Future<Either<Failure, Triage>> getTriage();
  Future<Either<Failure, Triage>> saveTriage({required Triage triage});
}
