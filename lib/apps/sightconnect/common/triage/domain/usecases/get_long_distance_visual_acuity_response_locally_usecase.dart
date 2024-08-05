import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/usecases/usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../services/failure.dart';
import '../../data/repositories/triage_repository_impl.dart';

var getLongDistanceVisualAcuityResponseLocallyUseCase = Provider(
  (ref) => GetLongDistanceVisualAcuityResponseLocallyUsecase(
    ref.watch(triageRepositoryProvider),
  ),
);

class GetLongDistanceVisualAcuityResponseLocallyUsecase
    implements
        UseCase<List<PostTriageObservationsModel>,
            GetLongDistanceVisualAcuityResponseLocallyParam> {
  final TriageRepository _repository;
  GetLongDistanceVisualAcuityResponseLocallyUsecase(this._repository);
  @override
  Future<Either<Failure, List<PostTriageObservationsModel>>> call(
    GetLongDistanceVisualAcuityResponseLocallyParam params,
  ) async {
    final response =
        await _repository.getTriageDistanceVisualAcuityResponseLocally();
    return response;
  }
}

class GetLongDistanceVisualAcuityResponseLocallyParam {
  GetLongDistanceVisualAcuityResponseLocallyParam();
}
