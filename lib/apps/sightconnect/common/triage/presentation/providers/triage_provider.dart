/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/usecases/get_assessment_usecase.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/usecases/get_questionnaire_response_locally_usecase.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/usecases/get_triage_eye_scan_response_locally_usecase.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/usecases/get_vision_acuity_tumbling_response_locally_usecase.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/usecases/save_triage_usecase.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/usecases/save_triage_usecase_for_event.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_member_selection/providers/triage_member_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/visual_acuity/data/local/tumbling_local_source.dart';
import 'package:eye_care_for_all/apps/sightconnect/common/visual_acuity/features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/services/app_info_service.dart';
import 'package:eye_care_for_all/services/failure.dart';
import 'package:eye_care_for_all/services/persistent_auth_service.dart';
import 'package:eye_care_for_all/services/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../features/optometritian/optometritian_dashboard/presentation/provider/optometritian_add_patient_provider.dart';
import '../../../../features/vision_guardian/vision_guardian_add_event/presentation/providers/vg_user_data_provider.dart';
import '../../../visual_acuity/features/distance_visual_acuity_tumbling/presentation/providers/distance_visual_acuity_test_provider.dart';
import '../../domain/repositories/triage_urgency_repository.dart';
import '../../domain/usecases/get_distance_visual_acuity_response_locally_usecase.dart';

var getTriageProvider = FutureProvider<DiagnosticReportTemplateFHIRModel>(
  (ref) async {
    var response = await ref.watch(getAssessmentUseCase).call(GetTriageParam());
    return response.fold((failure) {
      throw failure;
    }, (triageAssessment) {
      return triageAssessment;
    });
  },
);

var triageProvider = ChangeNotifierProvider(
  (ref) {
    return TriageProvider(
      ref.watch(saveTriageUseCase),
      ref.watch(getTriageEyeScanResponseLocallyUseCase),
      ref.watch(getQuestionnaireResponseLocallyUseCase),
      ref.watch(getVisionAcuityTumblingResponseLocallyUseCase),
      ref.watch(getDistanceVisualAcuityResponseLocallyUseCase),
      ref.watch(triageMemberProvider).testPatientId!,
      ref.watch(triageUrgencyRepositoryProvider),
      ref.watch(triageLocalSourceProvider),
      ref.watch(saveTriageUseCaseForEvent),
      ref.watch(vgUserDataProvider),
    );
  },
);

class TriageProvider extends ChangeNotifier {
  final SaveTriageUseCase _saveTriageUseCase;
  final SaveTriageUseCaseForEvent _saveTriageUseCaseForEvent;
  final VGUserDataProvider _vgUserDataProvider;

  final GetTriageEyeScanResponseLocallyUseCase
      _getTriageEyeScanResponseLocallyUseCase;
  final GetQuestionnaireResponseLocallyUseCase
      _getQuestionnaireResponseLocallyUseCase;
  final GetVisionAcuityTumblingResponseLocallyUseCase
      _getVisionAcuityTumblingResponseLocallyUseCase;
  final GetDistanceVisualAcuityResponseLocallyUseCase
      _getDistanceVisualAcuityResponseLocallyUseCase;
  final TriageUrgencyRepository _triageUrgencyRepository;
  final int _patientId;
  final TriageLocalSource _triageLocalSource;
  TriageMode _triageMode = TriageMode.STANDALONE;

  TriageProvider(
      this._saveTriageUseCase,
      this._getTriageEyeScanResponseLocallyUseCase,
      this._getQuestionnaireResponseLocallyUseCase,
      this._getVisionAcuityTumblingResponseLocallyUseCase,
      this._getDistanceVisualAcuityResponseLocallyUseCase,
      this._patientId,
      this._triageUrgencyRepository,
      this._triageLocalSource,
      this._saveTriageUseCaseForEvent,
      this._vgUserDataProvider);

  Future<Either<Failure, TriagePostModel>> saveTriage(int currentStep) async {
    List<PostTriageImagingSelectionModel> imageSelection =
        await _getTriageEyeScanResponseLocallyUseCase
            .call(GetTriageEyeScanResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

    List<PostTriageObservationsModel> shortDistanceVisualAcuity =
        await _getVisionAcuityTumblingResponseLocallyUseCase
            .call(GetVisionAcuityTumblingResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

    List<PostTriageObservationsModel> distanceVisualAcuity =
        await _getDistanceVisualAcuityResponseLocallyUseCase
            .call(GetDistanceVisualAcuityResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

    List<PostTriageObservationsModel> observations = [
      ...shortDistanceVisualAcuity,
      ...distanceVisualAcuity
    ];

    List<PostTriageQuestionModel> questionResponse =
        await _getQuestionnaireResponseLocallyUseCase
            .call(GetQuestionnaireResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

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
    //inject assesment
    DiagnosticReportTemplateFHIRModel assessment =
        await _triageLocalSource.getAssessment();
    TriagePostModel triagePostModel = TriagePostModel(
      patientId: _patientId,
      serviceType: ServiceType.OPTOMETRY,
      tenantCode: SharedPreferenceService.getTenantId,
      organizationCode: SharedPreferenceService.getOrganizationId,
      performer: getPerformer(),
      assessmentCode: assessment.id, //from questionnaire MS
      assessmentVersion: assessment.version, //questionnaire MS
      cummulativeScore: triageUrgency.toInt(),
      score: [
        //from questionnaire MS
        {"QUESTIONNAIRE": quessionnaireUrgency},
        {"OBSERVATION": visualAcuityUrgency},
        {"IMAGE": eyeScanUrgency}
      ],
      userStartDate:
          DateTime.now().subtract(const Duration(seconds: 2)).toUtc(),
      issued: DateTime.now().subtract(const Duration(seconds: 2)).toUtc(),
      /* "${starttime.toIso8601String()}Z" */

      source: getSource(),
      sourceVersion: AppInfoService.appVersion,
      incompleteSection: _getInclompleteSection(currentStep),
      imagingSelection: _removeInvalidImagingSelection(imageSelection),
      observations: observations,
      questionResponse: questionResponse,
    );

    // This is for invalid image from file ms
    if (currentStep > 2 && !_checkIsimagingSelectionValid(imageSelection)) {
      triagePostModel = triagePostModel.copyWith(
        incompleteSection: [
          const PostIncompleteTestModel(
            testName: TestType.IMAGE,
          )
        ],
      );
    }

    logger.d({"triage model to be saved": triagePostModel.toJson()});

    try {
      Either<Failure, TriagePostModel> response = await _saveTriageUseCase.call(
        SaveTriageParam(triagePostModel: triagePostModel),
      );
      logger.d({"triage model saved": response});
      _triageLocalSource.resetTriage();

      return response;
    } catch (e) {
      rethrow;
    }
  }

  bool _checkIsimagingSelectionValid(
    List<PostTriageImagingSelectionModel> imageSelection,
  ) {
    for (var element in imageSelection) {
      if (element.fileId == null) {
        return false;
      }
    }
    return true;
  }

  List<PostTriageImagingSelectionModel> _removeInvalidImagingSelection(
    List<PostTriageImagingSelectionModel> imageSelection,
  ) {
    imageSelection.removeWhere((element) => element.fileId == null);
    return imageSelection;
  }

  ///////////////////  SAVE TRIAGE FOR EVENT  //////////////////////

  Future<Either<Failure, TriagePostModel>> saveTriageForEvent(
    int currentStep,
    String eventId,
  ) async {
    logger
        .f("event id in triage provider: $eventId, current step: $currentStep");
    List<PostTriageImagingSelectionModel> imageSelection =
        await _getTriageEyeScanResponseLocallyUseCase
            .call(GetTriageEyeScanResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

    List<PostTriageObservationsModel> shortDistanceVisualAcuity =
        await _getVisionAcuityTumblingResponseLocallyUseCase
            .call(GetVisionAcuityTumblingResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

    List<PostTriageObservationsModel> distanceVisualAcuity =
        await _getDistanceVisualAcuityResponseLocallyUseCase
            .call(GetDistanceVisualAcuityResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

    List<PostTriageObservationsModel> observations = [
      ...shortDistanceVisualAcuity,
      ...distanceVisualAcuity
    ];

    List<PostTriageQuestionModel> questionResponse =
        await _getQuestionnaireResponseLocallyUseCase
            .call(GetQuestionnaireResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

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
    //inject assesment
    DiagnosticReportTemplateFHIRModel assessment =
        await _triageLocalSource.getAssessment();
    TriagePostModel triagePostModel = TriagePostModel(
      patientId: _patientId,
      serviceType: ServiceType.OPTOMETRY,
      tenantCode: SharedPreferenceService.getTenantId,
      organizationCode: SharedPreferenceService.getOrganizationId,
      performer: getPerformer(),
      assessmentCode: assessment.id, //from questionnaire MS
      assessmentVersion: assessment.version, //questionnaire MS
      cummulativeScore: triageUrgency.toInt(),
      score: [
        //from questionnaire MS
        {"QUESTIONNAIRE": quessionnaireUrgency},
        {"OBSERVATION": visualAcuityUrgency},
        {"IMAGE": eyeScanUrgency}
      ],
      userStartDate:
          DateTime.now().subtract(const Duration(seconds: 2)).toUtc(),
      issued: DateTime.now().subtract(const Duration(seconds: 2)).toUtc(),

      source: getSource(),
      sourceVersion: AppInfoService.appVersion,
      incompleteSection: _getInclompleteSection(currentStep),
      imagingSelection: _removeInvalidImagingSelection(imageSelection),
      observations: observations,
      questionResponse: questionResponse,
    );

    // This is for invalid image from file ms
    if (currentStep > 2 && !_checkIsimagingSelectionValid(imageSelection)) {
      triagePostModel = triagePostModel.copyWith(
        incompleteSection: [
          const PostIncompleteTestModel(
            testName: TestType.IMAGE,
          )
        ],
      );
    }

    logger.d({"triage model for event to be saved": triagePostModel.toJson()});

    try {
      Either<Failure, TriagePostModel> response =
          await _saveTriageUseCaseForEvent.call(
        SaveTriageParamForEvent(
          triagePostModel: triagePostModel,
          eventId: eventId,
        ),
      );
      logger.d({"triage model for event saved": response});
      _triageLocalSource.resetTriage();

      return response;
    } catch (e) {
      rethrow;
    }
  }

  TriageMode get triageMode => _triageMode;

  setTriageMode(TriageMode triageMode) {
    logger.f({
      "triageMode for event in triage provider ": triageMode,
    });
    _triageMode = triageMode;
    notifyListeners();
  }

  List<PostIncompleteTestModel> _getInclompleteSection(int currentStep) {
    List<PostIncompleteTestModel> incompleteSection = [];

    if (currentStep == 0) {
      incompleteSection.add(const PostIncompleteTestModel(
        testName: TestType.QUESTIONNAIRE,
      ));
      incompleteSection.add(const PostIncompleteTestModel(
        testName: TestType.OBSERVATION,
      ));
      incompleteSection.add(const PostIncompleteTestModel(
        testName: TestType.IMAGE,
      ));
    }
    if (currentStep == 1) {
      incompleteSection.add(const PostIncompleteTestModel(
        testName: TestType.OBSERVATION,
      ));
      incompleteSection.add(const PostIncompleteTestModel(
        testName: TestType.IMAGE,
      ));
    }
    if (currentStep == 2) {
      incompleteSection.add(const PostIncompleteTestModel(
        testName: TestType.IMAGE,
      ));
    }

    return incompleteSection;
  }

  List<Performer> getPerformer() {
    logger.d({
      "PersistentAuthStateService.authState.roles":
          PersistentAuthStateService.authState.activeRole
    });
    if (PersistentAuthStateService.authState.activeRole!
        .contains("VISION_GUARDIAN")) {
      return [
        Performer(
          role: PerformerRole.VISION_GUARDIAN,
          identifier:
              int.tryParse(PersistentAuthStateService.authState.userId!),
        ),
      ];
    } else if (PersistentAuthStateService.authState.activeRole ==
        "ROLE_VOLUNTEER") {
      return [
        Performer(
          role: PerformerRole.VOLUNTEER,
          identifier: _vgUserDataProvider.userId,
        ),
      ];
    } else {
      return [
        Performer(
          role: PerformerRole.PATIENT,
          identifier: _patientId,
        ),
      ];
    }
  }

  Source getSource() {
    if (PersistentAuthStateService.authState.activeRole!
        .contains("VISION_GUARDIAN")) {
      return Source.VG_APP;
    } else {
      return Source.PATIENT_APP;
    }
  }
}

var resetProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TriageReset(ref),
);

class TriageReset extends ChangeNotifier {
  final Ref ref;
  TriageReset(this.ref);

  void reset() {
    logger.d("TriageReset called");
    ref.invalidate(triageQuestionnaireProvider);
    ref.invalidate(triageEyeScanProvider);
    ref.invalidate(distanceTumblingTestProvider);
    ref.invalidate(tumblingLocalSource);
    ref.read(tumblingTestProvider).reset();
    ref.read(triageStepperProvider).reset();
    ref.invalidate(optometritianAddPatientProvider);

    notifyListeners();
  }
}

enum TriageMode {
  STANDALONE,
  EVENT,
}
