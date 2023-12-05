import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';

import '../models/triage_assessment_model.dart';

class GetTriageUseCase implements UseCase<TriageAssessmentModel, void> {
  final TriageRepository _repository;
  GetTriageUseCase(this._repository);
  @override
  Future<Either<Failure, TriageAssessmentModel>> call(void params) async {
    final response = await _repository.getTriage();
    return response;
  }
}
