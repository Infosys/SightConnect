import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';

class SaveTriageResponseUseCase
    implements UseCase<TriageResponseModel, TriageResponseModel> {
  final TriageRepository _repository;
  SaveTriageResponseUseCase(this._repository);
  @override
  Future<Either<Failure, TriageResponseModel>> call(
      TriageResponseModel params) async {
    final response =
        await _repository.saveTriageResponse(triageResponse: params);
    return response;
  }
}
