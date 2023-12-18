import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_update_model.dart';

import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repositories/triage_repository_impl.dart';

var updateTriageUseCase = Provider(
  (ref) => UpdateTriageUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class UpdateTriageUseCase
    implements UseCase<TriageResponseModel, UpdateTriageParam> {
  final TriageRepository _repository;
  UpdateTriageUseCase(this._repository);
  @override
  Future<Either<Failure, TriageResponseModel>> call(
    UpdateTriageParam params,
  ) async {
    final response = await _repository.updateTriage(triage: params.triage);
    return response;
  }
}

class UpdateTriageParam {
  final TriageUpdateModel triage;
  UpdateTriageParam({required this.triage});
}
