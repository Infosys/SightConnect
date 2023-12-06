import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_triage_response_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getTriageResponseUseCase = Provider(
  (ref) => GetTriageResponseUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class SaveTriageQuestionnaireLocallyUseCase
    implements UseCase<void, SaveTriageQuestionnaireLocallyParam> {
  final TriageRepository _repository;
  SaveTriageQuestionnaireLocallyUseCase(this._repository);
  @override
  Future<Either<Failure, void>> call(
      SaveTriageQuestionnaireLocallyParam params) async {
    final response = await _repository.saveTriageQuestionnaireLocally(
      triageQuestionnaireResponse: params.triageQuestionnaireResponse,
    );
    return response;
  }
}

class SaveTriageQuestionnaireLocallyParam {
  final List<PostQuestionResponseModel> triageQuestionnaireResponse;
  SaveTriageQuestionnaireLocallyParam({
    required this.triageQuestionnaireResponse,
  });
}
