import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/repositories/triage_repository.dart';
import 'package:eye_care_for_all/apps/sightconnect/helpers/usecases/usecase.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repositories/triage_repository_impl.dart';

var updateTriageUseCase = Provider(
  (ref) => UpdateTriageUseCase(
    ref.watch(triageRepositoryProvider),
  ),
);

class UpdateTriageUseCase
    implements UseCase<DiagnosticReportTemplateFHIRModel, UpdateTriageParam> {
  final TriageRepository _repository;
  UpdateTriageUseCase(this._repository);
  @override
  Future<Either<Failure, DiagnosticReportTemplateFHIRModel>> call(
    UpdateTriageParam params,
  ) async {
    final response =
        await _repository.updateAssessment(assessment: params.assessment);
    return response;
  }
}

class UpdateTriageParam {
  final DiagnosticReportTemplateFHIRModel assessment;
  UpdateTriageParam({required this.assessment});
}
