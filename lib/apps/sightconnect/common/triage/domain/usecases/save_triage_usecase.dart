import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/core/usecases/usecase.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var saveTriageUseCase = Provider(
  (ref) => SaveTriageUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class SaveTriageUseCase implements UseCase<TriagePostModel, SaveTriageParam> {
  final TriageRepository _repository;
  SaveTriageUseCase(this._repository);
  @override
  Future<Either<Failure, TriagePostModel>> call(
    SaveTriageParam params,
  ) async {
    logger.d({"Triage Param": params.triagePostModel});
    final response = await _repository.saveTriageResponse(
      triageResponse: params.triagePostModel,
    );
    return response;
  }
}

class SaveTriageParam {
  final TriagePostModel triagePostModel;
  SaveTriageParam({required this.triagePostModel});
}
