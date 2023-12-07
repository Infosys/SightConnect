import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var saveTriageEyeScanLocallyUseCase = Provider(
  (ref) => SaveTriageEyeScanLocallyUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class SaveTriageEyeScanLocallyUseCase
    implements UseCase<void, SaveTriageEyeScanLocallyParam> {
  final TriageRepository _repository;
  SaveTriageEyeScanLocallyUseCase(this._repository);
  @override
  Future<Either<Failure, void>> call(
    SaveTriageEyeScanLocallyParam params,
  ) async {
    final response = await _repository.saveTriageEyeScanLocally(
      triageEyeScan: params.postImagingSelectionModel,
    );
    return response;
  }
}

class SaveTriageEyeScanLocallyParam {
  final List<PostImagingSelectionModel> postImagingSelectionModel;
  SaveTriageEyeScanLocallyParam({
    required this.postImagingSelectionModel,
  });
}
