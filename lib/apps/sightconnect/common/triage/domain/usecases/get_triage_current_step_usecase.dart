import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/usecases/usecase.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';
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
    final response = await _repository.getTriageCurrentStep();
    return response;
  }
}

class GetTriageCurrentStepParam {}
