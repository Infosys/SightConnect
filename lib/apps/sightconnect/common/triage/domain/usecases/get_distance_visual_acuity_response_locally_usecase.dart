import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../shared/services/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repositories/triage_repository_impl.dart';
import '../models/triage_post_model.dart';
import '../repositories/triage_repository.dart';

var getDistanceVisualAcuityResponseLocallyUseCase = Provider(
  (ref) => GetDistanceVisualAcuityResponseLocallyUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class GetDistanceVisualAcuityResponseLocallyUseCase
    implements
        UseCase<List<PostTriageObservationsModel>,
            GetDistanceVisualAcuityResponseLocallyParam> {
  final TriageRepository _repository;
  GetDistanceVisualAcuityResponseLocallyUseCase(this._repository);
  @override
  Future<Either<Failure, List<PostTriageObservationsModel>>> call(
    GetDistanceVisualAcuityResponseLocallyParam params,
  ) async {
    final response =
        await _repository.getTriageDistanceVisualAcuityResponseLocally();
    return response;
  }
}

class GetDistanceVisualAcuityResponseLocallyParam {
  GetDistanceVisualAcuityResponseLocallyParam();
}
