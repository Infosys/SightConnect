import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_assessment_model.dart';

import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repositories/triage_repository_impl.dart';

var updateTriageUseCase = Provider(
  (ref) => UpdateTriageUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class UpdateTriageUseCase
    implements UseCase<TriageAssessmentModel, UpdateTriageParam> {
  final TriageRepository _repository;
  UpdateTriageUseCase(this._repository);
  @override
  Future<Either<Failure, TriageAssessmentModel>> call(
      UpdateTriageParam params) async {
    final response = await _repository.updateTriage(triage: params.triage);
    return response;
  }
}

class UpdateTriageParam {
  final TriageAssessmentModel triage;
  UpdateTriageParam({required this.triage});
}
