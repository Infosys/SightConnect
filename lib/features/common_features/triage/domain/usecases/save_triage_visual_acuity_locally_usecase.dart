import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var saveTriageVisualAcuityLocallyUseCase = Provider(
  (ref) => SaveTriageVisualAcuityLocallyUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class SaveTriageVisualAcuityLocallyUseCase
    implements UseCase<void, SaveTriageVisualAcuityLocallyParam> {
  final TriageRepository _repository;
  SaveTriageVisualAcuityLocallyUseCase(this._repository);
  @override
  Future<Either<Failure, void>> call(
    SaveTriageVisualAcuityLocallyParam params,
  ) async {
    final response = await _repository.saveTriageVisualAcuityLocally(
      triageVisualAcuity: params.observations,
    );
    return response;
  }
}

class SaveTriageVisualAcuityLocallyParam {
  final List<PostObservationsModel> observations;
  SaveTriageVisualAcuityLocallyParam({
    required this.observations,
  });
}
