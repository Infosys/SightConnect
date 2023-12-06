import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_assessment_model.dart';

import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';

class UpdateTriageUseCase
    implements UseCase<TriageAssessmentModel, TriageAssessmentModel> {
  final TriageRepository _repository;
  UpdateTriageUseCase(this._repository);
  @override
  Future<Either<Failure, TriageAssessmentModel>> call(
      TriageAssessmentModel params) async {
    final response = await _repository.updateTriage(triage: params);
    return response;
  }
}
