import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_step.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_urgency_repository.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/save_triage_usecase.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var preliminaryAssessmentProvider = Provider(
  (ref) => VTPreliminaryAssessmentProvider(
      ref.watch(saveTriageUseCase), ref.watch(triageUrgencyRepositoryProvider)),
);

class VTPreliminaryAssessmentProvider extends ChangeNotifier {
  final int _patientId = 100101;
  final SaveTriageUseCase _saveTriageUseCase;
  final TriageUrgencyRepository _triageUrgencyRepository;
  VTPreliminaryAssessmentProvider(
      this._saveTriageUseCase, this._triageUrgencyRepository);

  Future<Either<Failure, TriageResponseModel>> saveTriage() async {
    List<PostImagingSelectionModel> imageSelection = [];
    List<PostObservationsModel> observations = [];
    List<PostQuestionResponseModel> questionResponse = [];
    double cummulativeScore = 0.0;
    double quessionnaireUrgency = 0.0;
    double visualAcuityUrgency = 0.0;
    double eyeScanUrgency = 0.0;
    int encounterId = 100001;
    int organizationCode = 231000;
    int assessmentCode = 30001;

    final triage = TriageResponseModel(
      patientId: _patientId,
      encounterId: encounterId,
      serviceType: 'OPTOMETRY',
      organizationCode: organizationCode,
      performer: [
        const PerformerModel(
          role: PerformerRole.VISION_TECHNICIAN,
          identifier: 200102,
        )
      ],
      assessmentCode: assessmentCode,
      assessmentVersion: "v1",
      cummulativeScore: cummulativeScore,
      score: {
        TriageStep.QUESTIONNAIRE: quessionnaireUrgency,
        TriageStep.OBSERVATION: visualAcuityUrgency,
        TriageStep.IMAGING: eyeScanUrgency,
      },
      issued: DateTime.now(),
      userStartDate: DateTime.now(),
      source: Source.VT_APP,
      sourceVersion: "v1",
      incompleteSection: [],
      imagingSelection: imageSelection,
      observations: observations,
      questionResponse: questionResponse,
    );
    Either<Failure, TriageResponseModel> response =
        await _saveTriageUseCase.call(
      SaveTriageParam(triageResponse: triage),
    );

    return response;
  }
}
