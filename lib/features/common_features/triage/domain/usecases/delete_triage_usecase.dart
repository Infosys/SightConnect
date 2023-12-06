import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var deleteTriageUseCase = Provider(
  (ref) => DeleteTriageUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class DeleteTriageUseCase implements UseCase<void, void> {
  final TriageRepository _repository;
  DeleteTriageUseCase(this._repository);
  @override
  Future<Either<Failure, void>> call(void params) async {
    final response = await _repository.deleteTriage();
    return response;
  }
}
