import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getVisionAcuityTumblingResponseLocallyUseCase = Provider(
  (ref) => GetVisionAcuityTumblingResponseLocallyUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class GetVisionAcuityTumblingResponseLocallyUseCase
    implements
        UseCase<List<PostObservationsModel>,
            GetVisionAcuityTumblingResponseLocallyParam> {
  final TriageRepository _repository;
  GetVisionAcuityTumblingResponseLocallyUseCase(this._repository);
  @override
  Future<Either<Failure, List<PostObservationsModel>>> call(
    GetVisionAcuityTumblingResponseLocallyParam params,
  ) async {
    final response = await _repository.getVisionAcuityTumblingResponseLocally();
    return response;
  }
}

class GetVisionAcuityTumblingResponseLocallyParam {
  List<PostObservationsModel> observations;
  GetVisionAcuityTumblingResponseLocallyParam({
    required this.observations,
  });
}
