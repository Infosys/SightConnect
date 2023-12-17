import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/triage_step.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_response_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_questionnaire_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_triage_eye_scan_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_triage_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_vision_acuity_tumbling_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/save_triage_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/repositories/triage_urgency_repository.dart';

var getTriageProvider =
    FutureProvider.autoDispose<DiagnosticReportTemplateFHIRModel>(
  (ref) async {
    var response = await ref.read(getTriageUseCase).call(GetTriageParam());
    return response.fold((failure) {
      throw failure;
    }, (triageAssessment) {
      return triageAssessment;
    });
  },
);

var triageProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    return TriageProvider(
      ref.watch(saveTriageUseCase),
      ref.watch(getTriageEyeScanResponseLocallyUseCase),
      ref.watch(getQuestionnaireResponseLocallyUseCase),
      ref.watch(getVisionAcuityTumblingResponseLocallyUseCase),
      99000001,
      ref.watch(triageUrgencyRepositoryProvider),
    );
  },
);

class TriageProvider extends ChangeNotifier {
  final SaveTriageUseCase _saveTriageUseCase;
  final GetTriageEyeScanResponseLocallyUseCase
      _getTriageEyeScanResponseLocallyUseCase;
  final GetQuestionnaireResponseLocallyUseCase
      _getQuestionnaireResponseLocallyUseCase;
  final GetVisionAcuityTumblingResponseLocallyUseCase
      _getVisionAcuityTumblingResponseLocallyUseCase;
  final TriageUrgencyRepository _triageUrgencyRepository;
  final int _patientId;

  TriageProvider(
    this._saveTriageUseCase,
    this._getTriageEyeScanResponseLocallyUseCase,
    this._getQuestionnaireResponseLocallyUseCase,
    this._getVisionAcuityTumblingResponseLocallyUseCase,
    this._patientId,
    this._triageUrgencyRepository,
  );

  Future<Either<Failure, TriageResponseModel>> saveTriage() async {
    List<PostImagingSelectionModel> imageSelection =
        await _getTriageEyeScanResponseLocallyUseCase
            .call(GetTriageEyeScanResponseLocallyParam())
            .then(
              (value) => value.fold((l) => [], (r) => r),
            );

    List<PostObservationsModel> observations =
        await _getVisionAcuityTumblingResponseLocallyUseCase
            .call(GetVisionAcuityTumblingResponseLocallyParam())
            .then(
              (value) => value.fold((l) => [], (r) => r),
            );

    List<PostQuestionResponseModel> questionResponse =
        await _getQuestionnaireResponseLocallyUseCase
            .call(
              GetQuestionnaireResponseLocallyParam(),
            )
            .then(
              (value) => value.fold((l) => [], (r) => r),
            );
    final quessionnaireUrgency =
        _triageUrgencyRepository.questionnaireUrgency(questionResponse);
    final visualAcuityUrgency =
        _triageUrgencyRepository.visualAcuityUrgency(observations);
    final eyeScanUrgency =
        _triageUrgencyRepository.eyeScanUrgency(imageSelection);
    final triageUrgency = _triageUrgencyRepository.totalTriageUrgency(
      quessionnaireUrgency,
      visualAcuityUrgency,
      eyeScanUrgency,
    );

    final triage = TriageResponseModel(
      patientId: _patientId,
      encounterId: 100001,
      serviceType: 'OPTOMETRY',
      organizationCode: 231000,
      performer: [
        const PerformerModel(
          role: PerformerRole.MEDICAL_DOCTOR,
          identifier: 200102,
        )
      ],
      assessmentCode: 30001,
      assessmentVersion: "v1",
      cummulativeScore: triageUrgency,
      score: {
        TriageStep.QUESTIONNAIRE: quessionnaireUrgency,
        TriageStep.OBSERVATION: visualAcuityUrgency,
        TriageStep.IMAGING: eyeScanUrgency,
      },
      issued: DateTime.now(),
      userStartDate: DateTime.now(),
      source: Source.PATIENT_APP,
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

var resetProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TriageReset(ref),
);

class TriageReset extends ChangeNotifier {
  final Ref ref;
  TriageReset(this.ref);

  void reset() {
    ref.invalidate(triageQuestionnaireProvider);
    ref.invalidate(triageEyeScanProvider);
    ref.read(tumblingTestProvider).reset();
    ref.read(triageStepperProvider).reset();
    notifyListeners();
  }
}
