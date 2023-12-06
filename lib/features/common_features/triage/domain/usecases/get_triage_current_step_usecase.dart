import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';

class GetTriageCurrentStepUseCase implements UseCase<void, void> {
  final TriageRepository _repository;
  GetTriageCurrentStepUseCase(this._repository);
  @override
  Future<Either<Failure, void>> call(void params) async {
    final response = await _repository.getTriageCurrentStep();
    return response;
  }
}
