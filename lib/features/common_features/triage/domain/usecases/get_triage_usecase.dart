import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/usecases/usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_repository_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var getTriageUseCase = Provider(
  (ref) => GetTriageUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class GetTriageUseCase
    implements UseCase<DiagnosticReportTemplateFHIRModel, GetTriageParam> {
  final TriageRepository _repository;
  GetTriageUseCase(this._repository);
  @override
  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>> call(
    GetTriageParam params,
  ) async {
    final response = await _repository.getTriage();
    return response;
  }
}

class GetTriageParam {}
