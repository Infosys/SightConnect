import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var saveTriageUseCase = Provider(
  (ref) => SaveTriageUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class SaveTriageUseCase implements UseCase<TriagePostModel, SaveTriageParam> {
  final TriageRepository _repository;
  SaveTriageUseCase(this._repository);
  @override
  Future<Either<Failure, TriagePostModel>> call(
    SaveTriageParam params,
  ) async {
    logger.d({"Triage Param": params.triagePostModel});
    final response = await _repository.saveTriageResponse(
      triageResponse: params.triagePostModel,
      patientID: params.patientID,
    );
    return response;
  }
}

class SaveTriageParam {
  final TriagePostModel triagePostModel;
  final String patientID;
  SaveTriageParam({required this.triagePostModel, required this.patientID});
}
