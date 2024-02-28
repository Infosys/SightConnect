import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getTriageCurrentStepUseCase = Provider(
  (ref) => GetTriageCurrentStepUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class GetTriageCurrentStepUseCase
    implements UseCase<int, GetTriageCurrentStepParam> {
  final TriageRepository _repository;
  GetTriageCurrentStepUseCase(this._repository);
  @override
  Future<Either<Failure, int>> call(GetTriageCurrentStepParam params) async {
    final response = await _repository.getTriageCurrentStep(
      params.patientID,
    );
    return response;
  }
}

class GetTriageCurrentStepParam {
  final String patientID;
  GetTriageCurrentStepParam(this.patientID);
}
