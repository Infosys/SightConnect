import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getTriageEyeScanResponseLocallyUseCase = Provider(
  (ref) => GetTriageEyeScanResponseLocallyUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class GetTriageEyeScanResponseLocallyUseCase
    implements
        UseCase<List<PostImagingSelectionModel>,
            GetTriageEyeScanResponseLocallyParam> {
  final TriageRepository _repository;
  GetTriageEyeScanResponseLocallyUseCase(this._repository);
  @override
  Future<Either<Failure, List<PostImagingSelectionModel>>> call(
    GetTriageEyeScanResponseLocallyParam params,
  ) async {
    final response = await _repository.getTriageEyeScanResponseLocally();
    return response;
  }
}

class GetTriageEyeScanResponseLocallyParam {
  GetTriageEyeScanResponseLocallyParam();
}
