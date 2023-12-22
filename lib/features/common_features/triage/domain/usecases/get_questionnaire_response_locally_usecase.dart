import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getQuestionnaireResponseLocallyUseCase = Provider(
  (ref) => GetQuestionnaireResponseLocallyUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class GetQuestionnaireResponseLocallyUseCase
    implements
        UseCase<List<PostTriageQuestionModel>,
            GetQuestionnaireResponseLocallyParam> {
  final TriageRepository _repository;
  GetQuestionnaireResponseLocallyUseCase(this._repository);
  @override
  Future<Either<Failure, List<PostTriageQuestionModel>>> call(
    GetQuestionnaireResponseLocallyParam params,
  ) async {
    final response = await _repository.getQuestionaireResponseLocally();
    return response;
  }
}

class GetQuestionnaireResponseLocallyParam {
  GetQuestionnaireResponseLocallyParam();
}
