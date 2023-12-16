import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var saveTriageUseCase = Provider(
  (ref) => SaveTriageUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class SaveTriageUseCase
    implements UseCase<TriageResponseModel, SaveTriageParam> {
  final TriageRepository _repository;
  SaveTriageUseCase(this._repository);
  @override
  Future<Either<Failure, TriageResponseModel>> call(
    SaveTriageParam params,
  ) async {
    final response = await _repository.saveTriage(
      triage: params.triageResponse,
    );
    return response;
  }
}

class SaveTriageParam {
  final TriageResponseModel triageResponse;
  SaveTriageParam({required this.triageResponse});
}
