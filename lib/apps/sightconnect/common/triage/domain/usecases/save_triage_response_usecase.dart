import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/usecases/usecase.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var saveTriageResponseUseCase = Provider(
  (ref) => SaveTriageResponseUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class SaveTriageResponseUseCase
    implements UseCase<TriagePostModel, SaveTriageResponseParam> {
  final TriageRepository _repository;
  SaveTriageResponseUseCase(this._repository);
  @override
  Future<Either<Failure, TriagePostModel>> call(
    SaveTriageResponseParam params,
  ) async {
    final response = await _repository.saveTriageResponse(
        triageResponse: params.triageResponse);
    return response;
  }
}

class SaveTriageResponseParam {
  final TriagePostModel triageResponse;
  SaveTriageResponseParam({required this.triageResponse});
}
