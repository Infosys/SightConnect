import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/models/triage_response_dto.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/remote/triage_remote_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_step.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/repositories/triage_urgency_repository.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/save_triage_usecase.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../main.dart';
import 'vision_technician_triage_provider.dart';

var preliminaryAssessmentProvider = Provider(
  (ref) => VTPreliminaryAssessmentProvider(
    ref.watch(triageRemoteSource),
    ref.watch(triageUrgencyRepositoryProvider),
    ref.watch(visionTechnicianTriageProvider),
  ),
);

class VTPreliminaryAssessmentProvider extends ChangeNotifier {
  // final int _patientId = 100101;
  // final SaveTriageUseCase _saveTriageUseCase;
  final TriageUrgencyRepository _triageUrgencyRepository;
  final VisionTechnicianTriageProvider _visionTechnicianTriageProvider;
  final TriageRemoteSource _triageRemoteSource;
  VTPreliminaryAssessmentProvider(this._triageRemoteSource,
      this._triageUrgencyRepository, this._visionTechnicianTriageProvider);

  Future<Either<Failure, TriageResponseDto>> saveTriage() async {
    List<PostImagingSelectionModel> imageSelection =
        _visionTechnicianTriageProvider.getTriageEyeScanResponse();
    List<PostObservationsModel> observations =
        _visionTechnicianTriageProvider.getVisionAcuityTumblingResponse();
    List<PostQuestionResponseModel> questionResponse =
        _visionTechnicianTriageProvider.getQuestionaireResponse();

    logger.d("questionResponse: $questionResponse");

    double questionnaireUrgency = _triageUrgencyRepository.questionnaireUrgency(
      questionResponse,
    );
    double visualAcuityUrgency = _triageUrgencyRepository.visualAcuityUrgency(
      observations,
    );
    double eyeScanUrgency = _triageUrgencyRepository.eyeScanUrgency(
      imageSelection,
    );
    double cummulativeScore = _triageUrgencyRepository.totalTriageUrgency(
      questionnaireUrgency,
      visualAcuityUrgency,
      eyeScanUrgency,
    );
    // int encounterId = 100001;
    // int organizationCode = 231000;
    // int assessmentCode = 30001;

    final triage = TriageResponseModel(
      patientId: 1511,
      encounterId: null,
      serviceType: ServiceType.OPTOMETRY,
      organizationCode: 0,
      performer: [
        const PerformerModel(
          role: PerformerRole.VISION_TECHNICIAN,
          identifier: 1601,
        )
      ],
      assessmentCode: 1501,
      assessmentVersion: "1.0",
      issued: DateTime.now(),
      userStartDate: DateTime.now(),
      source: Source.VT_APP,
      sourceVersion: "1.0",
      incompleteSection: [],
      cummulativeScore: 7,
      score: {
        // TriageStep.QUESTIONNAIRE: 3,//questionnaireUrgency,
        // TriageStep.OBSERVATION: 2,//visualAcuityUrgency,
        // TriageStep.IMAGE: 2,//eyeScanUrgency,
      },
      imagingSelection: [],
      observations: [],
      questionResponse: [
        // const PostQuestionResponseModel(linkId: 1451, score: 1, answers: [
        //   PostAnswerModel(
        //     value: "Yes",
        //     // answerCode: 1552,
        //     score: 1,
        //   ),
        // ]),
        // const PostQuestionResponseModel(
        //   linkId: 1452,
        //   score: 1,
        //   answers: [
        //     PostAnswerModel(
        //       value: "Yes",
        //       // answerCode: 2352,
        //       score: 1,
        //     ),
        //   ],
        // ),
      ],
    );

    TriageResponseDto response = await _triageRemoteSource.saveTriageVT(triage);

    return Right(response);
  }
}

enum Score{
  QUESTIONNAIRE,
  OBSERVATION,
  IMAGE
}