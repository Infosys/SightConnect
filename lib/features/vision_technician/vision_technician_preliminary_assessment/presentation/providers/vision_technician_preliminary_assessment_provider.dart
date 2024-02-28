import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/constants/app_text.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/save_triage_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/care_plan_post_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/ivr_caller_details_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/source/vt_ivr_caller_details_remote_source.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/care_plan_view_model_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../common_features/triage/domain/repositories/triage_urgency_repository.dart';

var vtTriageProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    return VtTriageProvider(
      ref.watch(saveTriageUseCase),
      ref.watch(getVTProfileProvider).asData?.value,
      ref.watch(triageUrgencyRepositoryProvider),
      ref.watch(triageLocalSourceProvider),
      ref.watch(visionTechnicianTriageProvider),
      ref.watch(carePlanViewModelProvider),
      ref.watch(preliminaryAssessmentHelperProvider),
      ref.watch(vtIVRCallerDetailsRemoteSourceProvider),
    );
  },
);

class VtTriageProvider extends ChangeNotifier {
  final SaveTriageUseCase _saveTriageUseCase;
  final TriageUrgencyRepository _triageUrgencyRepository;
  final VtProfileModel? _vtProfile;
  final TriageLocalSource _triageLocalSource;
  final VisionTechnicianTriageProvider _visionTechnicianTriageProvider;
  final CarePlanViewModel _carePlanViewModelProvider;
  final PreliminaryAssessmentHelperNotifier
      _preliminaryAssessmentHelperProvider;
  final VTIVRCallerDetailsRemoteSource _callerDetailsRemoteSource;

  VtTriageProvider(
    this._saveTriageUseCase,
    this._vtProfile,
    this._triageUrgencyRepository,
    this._triageLocalSource,
    this._visionTechnicianTriageProvider,
    this._carePlanViewModelProvider,
    this._preliminaryAssessmentHelperProvider,
    this._callerDetailsRemoteSource,
  );

  Future<Either<Failure, TriagePostModel>> saveTriage(
      VTPatientDto patientDetails) async {
    if (_preliminaryAssessmentHelperProvider.onIvrCall) {
      logger.d("on ivr called");

      final IVRCallerDetailsModel callerDetails = IVRCallerDetailsModel(
        agentMobile: _vtProfile?.officialMobile,
        callerId: patientDetails.id.toString(),
        callerName: patientDetails.name,
        callerNumber: patientDetails.mobile,
      );
      String ivrResponse =
          await _callerDetailsRemoteSource.saveCallerDetails(callerDetails);
      logger.d("ivr response $ivrResponse");
      if (ivrResponse == "error") {
        return Left(ServerFailure(errorMessage: "Not on IVR Call Please"));
      }
    }

    logger.d("save triage called");

    List<PostTriageImagingSelectionModel> imageSelection =
        await _visionTechnicianTriageProvider.getTriageEyeScanResponse();
    logger.d("image selection called $imageSelection");
    List<PostTriageObservationsModel> observations =
        _visionTechnicianTriageProvider.getVisionAcuityTumblingResponse();
    logger.d("observation called $observations");
    List<PostTriageQuestionModel> questionResponse =
        _visionTechnicianTriageProvider.getQuestionaireResponse();
    logger.d("question response called $questionResponse");
    final quessionnaireUrgency =
        _triageUrgencyRepository.questionnaireUrgency(questionResponse);
    logger.d("quessionnaireUrgency called $quessionnaireUrgency");
    final visualAcuityUrgency =
        _triageUrgencyRepository.visualAcuityUrgency(observations);
    logger.d("visualAcuityUrgency called $visualAcuityUrgency");
    final eyeScanUrgency =
        _triageUrgencyRepository.eyeScanUrgency(imageSelection);
    logger.d("eyeScanUrgency called $eyeScanUrgency");
    final triageUrgency = _triageUrgencyRepository.totalTriageUrgency(
      quessionnaireUrgency,
      visualAcuityUrgency,
      eyeScanUrgency,
    );
    logger.d("triageUrgency called $triageUrgency");
    //inject assesment
    DiagnosticReportTemplateFHIRModel assessment =
        _visionTechnicianTriageProvider.assessment;

    TriagePostModel triagePostModel = TriagePostModel(
      patientId: patientDetails.id,
      serviceType: ServiceType.OPTOMETRY,
      organizationCode: assessment.organizationCode,
      performer: [
        Performer(
          role: PerformerRole.VISION_TECHNICIAN,
          identifier: _vtProfile?.id,
        )
      ],
      assessmentCode: assessment.id, //from questionnaire MS
      assessmentVersion: assessment.version, //questionnaire MS
      cummulativeScore: triageUrgency.toInt(),
      score: [
        {"QUESTIONNAIRE": quessionnaireUrgency},
        {"OBSERVATION": visualAcuityUrgency},
        {"IMAGE": eyeScanUrgency}
      ],
      userStartDate: DateTime.now(),
      issued: DateTime.now(),
      source: Source.VT_APP,
      sourceVersion: AppText.appVersion,
      incompleteSection: [],
      imagingSelection:
          _preliminaryAssessmentHelperProvider.onIvrCall ? [] : imageSelection,
      observations:
          _preliminaryAssessmentHelperProvider.onIvrCall ? [] : observations,
      questionResponse: questionResponse,
    );

    logger.d({"triage model to be saved ": triagePostModel.toJson()});

    _preliminaryAssessmentHelperProvider.setLoading(true);

    Either<Failure, TriagePostModel> response = await _saveTriageUseCase.call(
      SaveTriageParam(
        triagePostModel: triagePostModel,
        patientID: '${patientDetails.id}',
      ),
    );

    TriagePostModel? triageResponse = response.fold((error) {
      logger.d({"triage post error": error});
      return;
    }, (result) {
      return result;
    });

    logger.d({"triage response new": triageResponse});
    _preliminaryAssessmentHelperProvider.setTriageResponse(triageResponse);

    int? reportId = triageResponse?.id;
    int? encounterId = triageResponse?.encounter?.id;
    int? organizationCode = assessment.organizationCode;
    Either<Failure, CarePlanPostModel>? carePlanResponse;

    if (organizationCode != null && reportId != null && encounterId != null) {
      carePlanResponse = await _carePlanViewModelProvider.saveCarePlan(
          organizationCode, reportId, encounterId);
      logger.d("lets see the care plan response $carePlanResponse");

      carePlanResponse.fold((error) {
        return;
      }, (result) {
        _preliminaryAssessmentHelperProvider.setCarePlanResponse(result);
      });
    }

    _preliminaryAssessmentHelperProvider.setLoading(false);

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
