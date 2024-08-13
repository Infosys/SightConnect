import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/usecases/usecase.dart';
import 'package:eye_care_for_all/shared/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var saveTriageQuestionnaireLocallyUseCaseProvider = Provider(
  (ref) => SaveTriageQuestionnaireLocallyUseCase(
    ref.read(triageRepositoryProvider),
  ),
);

class SaveTriageQuestionnaireLocallyUseCase
    implements UseCase<void, SaveTriageQuestionnaireLocallyParam> {
  final TriageRepository _repository;
  SaveTriageQuestionnaireLocallyUseCase(this._repository);
  @override
  Future<Either<Failure, void>> call(
    SaveTriageQuestionnaireLocallyParam params,
  ) async {
    final response = await _repository.saveTriageQuestionnaireLocally(
      triageQuestionnaireResponse: params.triageQuestionnaireResponse,
    );
    return response;
  }
}

class SaveTriageQuestionnaireLocallyParam {
  final List<PostTriageQuestionModel> triageQuestionnaireResponse;
  SaveTriageQuestionnaireLocallyParam({
    required this.triageQuestionnaireResponse,
  });
}
