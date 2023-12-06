import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var saveTriageResponseUseCase = Provider(
  (ref) => SaveTriageResponseUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class SaveTriageResponseUseCase
    implements UseCase<TriageResponseModel, SaveTriageResponseParam> {
  final TriageRepository _repository;
  SaveTriageResponseUseCase(this._repository);
  @override
  Future<Either<Failure, TriageResponseModel>> call(
    SaveTriageResponseParam params,
  ) async {
    final response = await _repository.saveTriageResponse(
        triageResponse: params.triageResponse);
    return response;
  }
}

class SaveTriageResponseParam {
  final TriageResponseModel triageResponse;
  SaveTriageResponseParam({required this.triageResponse});
}
