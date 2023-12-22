import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';

import '../../../../../core/services/failure.dart';

abstract class VTPreliminaryAssessmentRepository {
  Future<Either<Failure, TriageResponseModel>> saveTriage(
     );
}
