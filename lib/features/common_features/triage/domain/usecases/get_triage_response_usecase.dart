import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getTriageResponseUseCase = Provider(
  (ref) => GetTriageResponseUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class GetTriageResponseUseCase
    implements UseCase<TriageResponseModel, GetTriageResponseParam> {
  final TriageRepository _repository;
  GetTriageResponseUseCase(this._repository);
  @override
  Future<Either<Failure, TriageResponseModel>> call(
    GetTriageResponseParam params,
  ) async {
    final response = await _repository.getTriageResponse();
    return response;
  }
}

class GetTriageResponseParam {}
