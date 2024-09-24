import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_response_model.dart';

import '../../../../../../../services/failure.dart';

abstract class VTPreliminaryAssessmentRepository {
  Future<Either<Failure, TriageResponseModel>> saveTriage();
}
