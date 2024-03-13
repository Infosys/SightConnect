import 'package:dartz/dartz.dart';

import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/core/services/app_info_service.dart';
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

var vtTriageSaveProvider = ChangeNotifierProvider.autoDispose(
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
  // ignore: unused_field
  final TriageLocalSource _triageLocalSource;
  final VisionTechnicianTriageProvider _visionTechnicianTriageProvider;
  final CarePlanViewModel _carePlanViewModelProvider;
  final PreliminaryAssessmentHelperNotifier
      _preliminaryAssessmentHelperProvider;
  final VTIVRCallerDetailsRemoteSource _callerDetailsRemoteSource;
  final bool _isLoading = false;

  bool get isLoading => _isLoading;

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
    VTPatientDto patientDetails,
  ) async {
    _preliminaryAssessmentHelperProvider.setLoading(true);
    if (_preliminaryAssessmentHelperProvider.onIvrCall) {
      logger.d("on ivr called");
      final IVRCallerDetailsModel callerDetails = IVRCallerDetailsModel(
        agentMobile: _vtProfile?.officialMobile,
        callerId: patientDetails.id.toString(),
        callerName: patientDetails.name,
        callerNumber: patientDetails.mobile,
      );

      try {
        await _callerDetailsRemoteSource.saveCallerDetails(callerDetails);
      } catch (e) {
        _preliminaryAssessmentHelperProvider.setLoading(false);
        return Left(ServerFailure(errorMessage: "Not on IVR Call"));
      }
    }

    List<PostTriageImagingSelectionModel> imageSelection =
        await _visionTechnicianTriageProvider.getTriageEyeScanResponse();
    logger.d("image selection called");
    List<PostTriageObservationsModel> observations =
        _visionTechnicianTriageProvider.getVisionAcuityTumblingResponse();
    logger.d("observation called");
    List<PostTriageQuestionModel> questionResponse =
        _visionTechnicianTriageProvider.getQuestionaireResponse();
    logger.d("question response called");
    final questionnaireUrgency =
        _triageUrgencyRepository.questionnaireUrgency(questionResponse);
    logger.d("questionnaireUrgency called");
    final visualAcuityUrgency =
        _triageUrgencyRepository.visualAcuityUrgency(observations);
    logger.d("visualAcuityUrgency called");
    final eyeScanUrgency =
        _triageUrgencyRepository.eyeScanUrgency(imageSelection);
    logger.d("eyeScanUrgency called ");
    final triageUrgency = _triageUrgencyRepository.totalTriageUrgency(
      questionnaireUrgency,
      visualAcuityUrgency,
      eyeScanUrgency,
    );
    logger.d("triageUrgency called");

    DiagnosticReportTemplateFHIRModel assessment =
        _visionTechnicianTriageProvider.assessment;

    TriagePostModel triagePostModel = TriagePostModel(
      patientId: patientDetails.id,
      serviceType: ServiceType.OPTOMETRY,
      tenantCode: assessment.tenantCode,
      performer: [
        Performer(
          role: PerformerRole.VISION_TECHNICIAN,
          identifier: _vtProfile?.id,
        )
      ],
      assessmentCode: assessment.id,
      assessmentVersion: assessment.version,
      cummulativeScore: triageUrgency.toInt(),
      score: [
        {"QUESTIONNAIRE": questionnaireUrgency},
        {"OBSERVATION": visualAcuityUrgency},
        {"IMAGE": eyeScanUrgency}
      ],
      userStartDate:
          DateTime.now().subtract(const Duration(seconds: 2)).toUtc(),
      issued: DateTime.now().subtract(const Duration(seconds: 2)).toUtc(),
      source: Source.VT_APP,
      sourceVersion: AppInfoService.version,
      incompleteSection: [],
      imagingSelection:
          _preliminaryAssessmentHelperProvider.onIvrCall ? [] : imageSelection,
      observations:
          _preliminaryAssessmentHelperProvider.onIvrCall ? [] : observations,
      questionResponse: questionResponse,
    );

    try {
      Either<Failure, TriagePostModel> response = await _saveTriageUseCase.call(
        SaveTriageParam(triagePostModel: triagePostModel),
      );

      final triageResponse = response.fold((error) {
        throw error;
      }, (result) {
        logger.d("triage response $result");
        return result;
      });

      _preliminaryAssessmentHelperProvider.setTriageResponse(triageResponse);

      int? reportId = triageResponse.id;
      int? encounterId = triageResponse.encounter?.id;
      int? organizationCode = assessment.organizationCode;
      int? tenantCode = assessment.tenantCode;
      Either<Failure, CarePlanPostModel>? carePlanResponse;

      if (organizationCode != null) {
        carePlanResponse = await _carePlanViewModelProvider.saveCarePlan(
          organizationCode: organizationCode,
          tenantCode: tenantCode!,
          reportId: reportId!,
          encounterId: encounterId!,
        );

        carePlanResponse.fold((error) {
          throw error;
        }, (result) {
          _preliminaryAssessmentHelperProvider.setCarePlanResponse(result);
        });
      }
      _preliminaryAssessmentHelperProvider.setLoading(false);
      return response;
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    } finally {
      _preliminaryAssessmentHelperProvider.setLoading(false);
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
    ref.invalidate(triageQuestionnaireProvider);
    ref.invalidate(triageEyeScanProvider);
    ref.read(tumblingTestProvider).reset();
    ref.read(triageStepperProvider).reset();
    notifyListeners();
  }
}
