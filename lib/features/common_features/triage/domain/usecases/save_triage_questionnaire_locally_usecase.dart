import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';

class SaveTriageQuestionnaireLocallyUseCase
    implements UseCase<void, List<PostQuestionResponseModel>> {
  final TriageRepository _repository;
  SaveTriageQuestionnaireLocallyUseCase(this._repository);
  @override
  Future<Either<Failure, void>> call(
      List<PostQuestionResponseModel> params) async {
    final response = await _repository.saveTriageQuestionnaireLocally(
      triageQuestionnaireResponse: params,
    );
    return response;
  }
}
