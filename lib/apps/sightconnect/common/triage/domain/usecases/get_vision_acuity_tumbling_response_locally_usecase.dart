import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/usecases/usecase.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getVisionAcuityTumblingResponseLocallyUseCase = Provider(
  (ref) => GetVisionAcuityTumblingResponseLocallyUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class GetVisionAcuityTumblingResponseLocallyUseCase
    implements
        UseCase<List<PostTriageObservationsModel>,
            GetVisionAcuityTumblingResponseLocallyParam> {
  final TriageRepository _repository;
  GetVisionAcuityTumblingResponseLocallyUseCase(this._repository);
  @override
  Future<Either<Failure, List<PostTriageObservationsModel>>> call(
    GetVisionAcuityTumblingResponseLocallyParam params,
  ) async {
    final response = await _repository.getVisionAcuityTumblingResponseLocally();
    return response;
  }
}

class GetVisionAcuityTumblingResponseLocallyParam {
  GetVisionAcuityTumblingResponseLocallyParam();
}
