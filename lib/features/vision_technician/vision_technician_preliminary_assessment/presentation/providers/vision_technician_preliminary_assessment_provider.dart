import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
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
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/triage/domain/repositories/triage_urgency_repository.dart';

var vtTriageProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    return VtTriageProvider(
      ref.watch(saveTriageUseCase),
      9627849182,
      ref.watch(triageUrgencyRepositoryProvider),
      ref.watch(triageLocalSourceProvider),
      ref.watch(visionTechnicianTriageProvider),
    );
  },
);

class VtTriageProvider extends ChangeNotifier {
  final SaveTriageUseCase _saveTriageUseCase;

  final TriageUrgencyRepository _triageUrgencyRepository;
  final int _patientId;
  final TriageLocalSource _triageLocalSource;
  final VisionTechnicianTriageProvider _visionTechnicianTriageProvider;

 VtTriageProvider(
      this._saveTriageUseCase,
      this._patientId,
      this._triageUrgencyRepository,
      this._triageLocalSource,
      this._visionTechnicianTriageProvider);

 

  Future<Either<Failure, TriagePostModel>> saveTriage() async {

     List<PostTriageImagingSelectionModel> imageSelection =
      _visionTechnicianTriageProvider.getTriageEyeScanResponse();

  List<PostTriageObservationsModel> observations =
      _visionTechnicianTriageProvider.getVisionAcuityTumblingResponse();

  List<PostTriageQuestionModel> questionResponse =
      _visionTechnicianTriageProvider.getQuestionaireResponse();

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
          role: PerformerRole.VISION_TECHNICIAN,
          identifier: _patientId,
        )
      ],
      assessmentCode: assessment.id, //from questionnaire MS
      assessmentVersion: assessment.version, //questionnaire MS
      cummulativeScore: triageUrgency.toInt(),
      score: [
        {"QUESTIONNAIRE": 0},
        {"OBSERVATION": 0},
        {"IMAGE": 0}
      ],
      userStartDate: DateTime.now(),
      issued: DateTime.now(),

      source: Source.VT_APP,
      sourceVersion: AppText.appVersion,
      incompleteSection: [],
      imagingSelection: imageSelection,
      observations: observations,
      questionResponse: questionResponse,
    );

    logger.f({"triage model to be saved": triagePostModel});

    Either<Failure, TriagePostModel> response = await _saveTriageUseCase.call(
      SaveTriageParam(triagePostModel: triagePostModel),
    );
    logger.f({"triage model saved": response});
    return response;
  }

//   List<PostIncompleteTestModel> _getInclompleteSection(int currentStep) {
//     List<PostIncompleteTestModel> incompleteSection = [];

//     if (currentStep == 0) {
//       incompleteSection.add(const PostIncompleteTestModel(
//         testName: TestType.QUESTIONNAIRE,
//       ));
//       incompleteSection.add(const PostIncompleteTestModel(
//         testName: TestType.OBSERVATION,
//       ));
//       incompleteSection.add(const PostIncompleteTestModel(
//         testName: TestType.IMAGE,
//       ));
//     }
//     if (currentStep == 1) {
//       incompleteSection.add(const PostIncompleteTestModel(
//         testName: TestType.OBSERVATION,
//       ));
//       incompleteSection.add(const PostIncompleteTestModel(
//         testName: TestType.IMAGE,
//       ));
//     }
//     if (currentStep == 2) {
//       incompleteSection.add(const PostIncompleteTestModel(
//         testName: TestType.IMAGE,
//       ));
//     }

//     return incompleteSection;
//   }
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
