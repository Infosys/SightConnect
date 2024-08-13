import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/usecases/usecase.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getTriageResponseUseCase = Provider(
  (ref) => GetTriageResponseUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class GetTriageResponseUseCase
    implements UseCase<TriagePostModel, GetTriageResponseParam> {
  final TriageRepository _repository;
  GetTriageResponseUseCase(this._repository);
  @override
  Future<Either<Failure, TriagePostModel>> call(
    GetTriageResponseParam params,
  ) async {
    final response = await _repository.getTriageResponse();
    return response;
  }
}

class GetTriageResponseParam {}
