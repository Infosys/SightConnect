import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/global_language_provider.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_questionnaire_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_triage_eye_scan_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_assessment_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/get_vision_acuity_tumbling_response_locally_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/save_triage_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_member_selection/providers/triage_member_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/repositories/triage_urgency_repository.dart';

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
      ref.watch(triageMemberProvider).testPatientId!,
      ref.watch(triageUrgencyRepositoryProvider),
      ref.watch(triageLocalSourceProvider),
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
  final TriageLocalSource _triageLocalSource;

  TriageProvider(
    this._saveTriageUseCase,
    this._getTriageEyeScanResponseLocallyUseCase,
    this._getQuestionnaireResponseLocallyUseCase,
    this._getVisionAcuityTumblingResponseLocallyUseCase,
    this._patientId,
    this._triageUrgencyRepository,
    this._triageLocalSource,
  );

  Future<Either<Failure, TriagePostModel>> saveTriage(int currentStep) async {
    List<PostTriageImagingSelectionModel> imageSelection =
        await _getTriageEyeScanResponseLocallyUseCase
            .call(GetTriageEyeScanResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

    List<PostTriageObservationsModel> observations =
        await _getVisionAcuityTumblingResponseLocallyUseCase
            .call(GetVisionAcuityTumblingResponseLocallyParam())
            .then((value) => value.fold((l) => [], (r) => r));

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
      organizationCode: assessment.organizationCode,
      performer: [
        Performer(
          role: PerformerRole.PATIENT,
          identifier: _patientId,
        )
      ],
      assessmentCode: assessment.id, //from questionnaire MS
      assessmentVersion: assessment.version, //questionnaire MS
      cummulativeScore: triageUrgency.toInt(),
      score: [
        //from questionnaire MS
        {"QUESTIONNAIRE": quessionnaireUrgency},
        {"OBSERVATION": visualAcuityUrgency},
        {"IMAGE": eyeScanUrgency}
      ],
      userStartDate: DateTime.now().subtract(const Duration(seconds: 2)),
      issued: DateTime.now().subtract(const Duration(seconds: 2)),

      source: Source.PATIENT_APP,
      sourceVersion: AppText.appVersion,
      incompleteSection: _getInclompleteSection(currentStep),
      imagingSelection: imageSelection,
      observations: observations,
      questionResponse: questionResponse,
    );

    logger.d({"triage model to be saved": triagePostModel});

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
