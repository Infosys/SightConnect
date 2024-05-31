// ignore_for_file: unused_import

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/core/services/app_info_service.dart';
import 'package:eye_care_for_all/core/services/exceptions.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/core/services/shared_preference.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/repositories/triage_urgency_impl.dart';
import 'package:eye_care_for_all/features/common_features/triage/data/source/local/triage_local_source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/usecases/save_triage_usecase.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/providers/triage_stepper_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_eye_scan/provider/triage_eye_scan_provider.dart';
import 'package:eye_care_for_all/features/common_features/triage/presentation/triage_questionnaire/provider/triage_questionnaire_provider.dart';
import 'package:eye_care_for_all/features/common_features/visual_acuity/features/visual_acuity_tumbling/presentation/providers/visual_acuity_test_provider.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/repository/triage_report_repository_impl.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/data/contracts/availability_repository.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_mark_my_availability/domain/repositories/availability_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/care_plan_post_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/device_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/ivr_caller_details_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/source/vt_ivr_caller_details_remote_source.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/care_plan_view_model_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/vision_technician_triage_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_profile/data/model/vt_profile_model.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common_features/triage/domain/models/enums/observation_code.dart';
import '../../../../common_features/triage/domain/repositories/triage_urgency_repository.dart';
import '../../data/enums/post_equipments_enum.dart';
import '../../data/model/post_equipment_observation_dto.dart';
import '../../data/source/vt_post_eqipment_details_source.dart';

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
        ref.watch(postEquipmentDetailsProvider),
        ref.watch(availabilityRepository));
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
  final PostEquipmentDetailsSource _postEquipmentDetailsSource;
  final AvailabilityRepository _availabilityRepository;
  bool _isLoading = false;

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
    this._postEquipmentDetailsSource,
    this._availabilityRepository,
  );

  Future<Either<Failure, TriagePostModel>> saveTriage(
    VTPatientDto patientDetails,
  ) async {
    _preliminaryAssessmentHelperProvider.setLoading(true);
    if (_preliminaryAssessmentHelperProvider.onIvrCall) {
      final IVRCallerDetailsModel callerDetails = IVRCallerDetailsModel(
        agentMobile: _vtProfile?.officialMobile,
        callerId: patientDetails.id.toString(),
        callerName: patientDetails.name,
        callerNumber: patientDetails.mobile,
      );
      try {
        await _callerDetailsRemoteSource.saveCallerDetails(callerDetails);
      } catch (e) {
        logger.e("Error saving caller details: $e");
        _preliminaryAssessmentHelperProvider.setLoading(false);
        return Left(ServerFailure(errorMessage: "Not on IVR Call"));
      }
    }

    List<PostTriageObservationsModel> observations =
        _visionTechnicianTriageProvider.getVisionAcuityTumblingResponse();
    logger.d("observation called");

    logger.d("triageUrgency called");

    bool triagePosted = _preliminaryAssessmentHelperProvider.triagePosted;
    bool carePlanPosted = _preliminaryAssessmentHelperProvider.carePlanPosted;
    bool isTest = _preliminaryAssessmentHelperProvider.isTest;

    if (!triagePosted) {
      logger.f("inside Triage Posted, triagePostedValue = $triagePosted");
      List<PostTriageImagingSelectionModel> imageSelection =
          await _visionTechnicianTriageProvider.getTriageEyeScanResponse();
      logger.d("image selection called");
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
      try {
        DiagnosticReportTemplateFHIRModel assessment =
            _visionTechnicianTriageProvider.assessment;

        TriagePostModel triagePostModel = TriagePostModel(
          patientId: patientDetails.id,
          serviceType: ServiceType.OPTOMETRY,
          tenantCode: SharedPreferenceService.getTenantIdVt,
          organizationCode: SharedPreferenceService.getOrganizationIdVt,
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
          sourceVersion: AppInfoService.appVersion,
          incompleteSection: [],
          imagingSelection: _preliminaryAssessmentHelperProvider.onIvrCall
              ? []
              : imageSelection,
          observations: _preliminaryAssessmentHelperProvider.onIvrCall
              ? []
              : observations,
          questionResponse: questionResponse,
        );
        logger.d(triagePostModel.toJson());
        logger.f(
            " ${DateTime.now().subtract(const Duration(seconds: 2)).toString()} ------ ${DateTime.now().subtract(const Duration(seconds: 2)).toUtc()}");
        Either<Failure, TriagePostModel> response =
            await _saveTriageUseCase.call(
          SaveTriageParam(triagePostModel: triagePostModel),
        );

        final triageResponse = response.fold((error) {
          throw ServerFailure(errorMessage: error.errorMessage);
        }, (result) {
          logger.d("triage response $result");
          return result;
        });
        _preliminaryAssessmentHelperProvider.setTriageResponse(triageResponse);
        _preliminaryAssessmentHelperProvider.setTriagePosted(true);
        logger.f("triage posted");
      } on Exception catch (e) {
        _preliminaryAssessmentHelperProvider.setLoading(false);

        _preliminaryAssessmentHelperProvider.setTriagePosted(false);
        Fluttertoast.showToast(
            msg: "An error occurred while saving triage: $e");
        logger.e("Error saving triage: $e");
        DioErrorHandler.handleDioError(e);
        return Left(ServerFailure(
            errorMessage: "An error occurred while saving triage"));
      }
    }

/////////////////// first try catch and in finally we set the triageCompleted to true

    try {
      int? reportId = _preliminaryAssessmentHelperProvider.triagePostModel.id;
      int? encounterId =
          _preliminaryAssessmentHelperProvider.triagePostModel.encounter!.id!;
      int? organizationCode = SharedPreferenceService.getOrganizationId;
      int? tenantCode = SharedPreferenceService.getTenantId;
      Either<Failure, CarePlanPostModel>? carePlanResponse;

      carePlanResponse = await _carePlanViewModelProvider.saveCarePlan(
        organizationCode: organizationCode!,
        tenantCode: tenantCode!,
        reportId: reportId!,
        encounterId: encounterId,
      );

      carePlanResponse.fold((error) {
        throw ServerFailure(errorMessage: error.errorMessage);
      }, (result) {
        _preliminaryAssessmentHelperProvider.setCarePlanResponse(result);
      });
      _preliminaryAssessmentHelperProvider.setCarePlanPosted(true);
      logger.f("care plan posted");
    } on Exception catch (e) {
      _preliminaryAssessmentHelperProvider.setLoading(false);

      _preliminaryAssessmentHelperProvider.setCarePlanPosted(false);
      Fluttertoast.showToast(
          msg: "An error occurred while saving care plan: $e");
      logger.e("Error saving care plan: $e");
      DioErrorHandler.handleDioError(e);
      return Left(ServerFailure(
          errorMessage: "An error occurred while saving care plan"));
    }

    try {
      DiagnosticReportTemplateFHIRModel assessment =
          _visionTechnicianTriageProvider.assessment;
      int? leftEyeIndentifier;
      int? rightEyeIndentifier;
      int? bothEyeIndentifier;

      for (var element in assessment.observations!.observationDefinition!) {
        if (element.code == ObservationCode.LOGMAR_NEAR) {
          if (element.bodySite == BodySite.LEFT_EYE) {
            leftEyeIndentifier = element.id;
          }
          if (element.bodySite == BodySite.RIGHT_EYE) {
            rightEyeIndentifier = element.id;
          }
          if (element.bodySite == BodySite.BOTH_EYES) {
            bothEyeIndentifier = element.id;
          }
        }
      }

      String? leftEyeValue;
      String? rightEyeValue;
      String? bothEyeValue;
      for (var observation in observations) {
        logger.f("observation is : $observation");
        if (observation.identifier == leftEyeIndentifier) {
          leftEyeValue = observation.value;
        }
        if (observation.identifier == rightEyeIndentifier) {
          rightEyeValue = observation.value;
        }
        if (observation.identifier == bothEyeIndentifier) {
          bothEyeValue = observation.value;
        }
      }

      logger.f(
          "left eye value: $leftEyeValue, right eye value: $rightEyeValue, both eye value: $bothEyeValue, left eye identifier: $leftEyeIndentifier, right eye identifier: $rightEyeIndentifier, both eye identifier: $bothEyeIndentifier");

      DeviceModel? selectedEquipment =
          _preliminaryAssessmentHelperProvider.selectedEquipment;

      logger.f("selected equipment: $selectedEquipment");

      List<EquipmentObservationValue> equipmentObservationValues = [
        EquipmentObservationValue(
          identifier: selectedEquipment.identifier.toString(),
          observationCategory: ObservationCategory.DEVICE,
          name: selectedEquipment.displayName,
          readings: [leftEyeValue!],
          readingType: ReadingType.UNIT,
          specimenType: SpecimenType.LEFT_EYE,
          performer: _vtProfile?.id,
        ),
        EquipmentObservationValue(
          identifier: selectedEquipment.identifier.toString(),
          observationCategory: ObservationCategory.DEVICE,
          name: selectedEquipment.displayName,
          readings: [rightEyeValue!],
          readingType: ReadingType.UNIT,
          specimenType: SpecimenType.RIGHT_EYE,
          performer: _vtProfile?.id,
        ),
        EquipmentObservationValue(
          identifier: selectedEquipment.identifier.toString(),
          observationCategory: ObservationCategory.DEVICE,
          name: selectedEquipment.displayName,
          readings: [bothEyeValue!],
          readingType: ReadingType.UNIT,
          specimenType: SpecimenType.BOTH_EYE,
          performer: _vtProfile?.id,
        ),
      ];

      logger.f("equipment observation values: $equipmentObservationValues");

      PostEquipmentObservationDto postEquipmentObservationDto =
          PostEquipmentObservationDto(
              drId: _preliminaryAssessmentHelperProvider.triagePostModel.id,
              encounterId: _preliminaryAssessmentHelperProvider
                  .triagePostModel.encounter!.id,
              equipmentObservationValues: equipmentObservationValues);

      await _postEquipmentDetailsSource
          .postEquipmentDetails(postEquipmentObservationDto);

      logger.f("equipment observation values posted");
    } on Error catch (e) {
      Fluttertoast.showToast(msg: "Error saving equipment details: $e");
      logger.e("Error saving equipment details: $e");
      DioErrorHandler.handleDioError(e);
    }

    _preliminaryAssessmentHelperProvider.setLoading(false);

    return right(_preliminaryAssessmentHelperProvider.triageResponse!);
  }

  Future<Either<Failure, bool>> isIVRCallActive(
    VTPatientDto patientDetails,
  ) async {
    try {
      _isLoading = true;
      notifyListeners();
      final IVRCallerDetailsModel callerDetails = IVRCallerDetailsModel(
        agentMobile: _vtProfile?.officialMobile,
        callerId: patientDetails.id.toString(),
        callerName: patientDetails.name,
        callerNumber: patientDetails.mobile,
      );
      await _callerDetailsRemoteSource.saveCallerDetails(callerDetails);
      return const Right(true);
    } catch (e) {
      logger.e("Error saving caller details: $e");
      _preliminaryAssessmentHelperProvider.setLoading(false);
      return Left(ServerFailure(errorMessage: "Not on IVR Call"));
    } finally {
      _isLoading = false;
    }
  }

  Future<bool> markVtStatus({
    required bool isAvailable,
  }) async {
    return _availabilityRepository.postMarkMyAvailability(
      isAvailable,
      _vtProfile?.id,
      _vtProfile?.officialMobile,
    );
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
