import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/usecases/usecase.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var deleteTriageUseCase = Provider(
  (ref) => DeleteTriageUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class DeleteTriageUseCase implements UseCase<void, DeleteTriageParam> {
  final TriageRepository _repository;
  DeleteTriageUseCase(this._repository);
  @override
  Future<Either<Failure, void>> call(DeleteTriageParam params) async {
    final response = await _repository.deleteAssessment();
    return response;
  }
}

class DeleteTriageParam {}
