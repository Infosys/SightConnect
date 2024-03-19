import 'package:dartz/dartz.dart';
import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/patient_instruction.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/status.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/enums/vt_close_assessment_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/source/vt_care_plan_remote_source.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/care_plan_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/main.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/model/care_plan_post_model.dart';

var carePlanViewModelProvider = ChangeNotifierProvider(
  (ref) => CarePlanViewModel(
    ref.read(carePlanProvider),
    ref.watch(preliminaryAssessmentHelperProvider),
    ref.watch(globalVTProvider).userId,
    ref.watch(vtCarePlanRemoteSourceProvider),
  ),
);

class CarePlanViewModel extends ChangeNotifier {
  final VTCarePlanRemoteSource _vtCarePlanRemoteSource;
  final CarePlanProvider _carePlanProvider;

  final PreliminaryAssessmentHelperNotifier
      _preliminaryAssessmentHelperProvider;
  final int? _vtId;

  CarePlanViewModel(
    this._carePlanProvider,
    this._preliminaryAssessmentHelperProvider,
    this._vtId,
    this._vtCarePlanRemoteSource,
  );

  Future<Either<Failure, CarePlanPostModel>> saveCarePlan({
    required int organizationCode,
    required int tenantCode,
    required int reportId,
    required int encounterId,
  }) async {
    final PatientInstruction? patientInstruction =
        _carePlanProvider.patientInstruction;

    int? visionCenterId =
        _preliminaryAssessmentHelperProvider.selectedVisionCenter?.id;
    logger.d("visionCenterId from careplan : $visionCenterId");

    final CarePlanPostModel carePlan = CarePlanPostModel(
      reports: [
        ReportModel(id: reportId),
      ],
      encounterId: encounterId,
      organizationCode: organizationCode,
      tenantCode: tenantCode,
      note: _preliminaryAssessmentHelperProvider.remarksController.text,
      performer: [
        PerformerModel(
          role: Role.VISION_TECHNICIAN,
          identifier: _vtId,
        ),
      ],
      serviceRequest: [
        ServiceRequestModel(
          note: _preliminaryAssessmentHelperProvider.remarksController.text,
          patientInstruction: patientInstruction,
          bodySite: BodySite.BOTH_EYES,
          identifier: visionCenterId, //vision center id
          priority: _preliminaryAssessmentHelperProvider.selectedSeverity,
        ),
      ],
      startDate: DateTime.now().subtract(const Duration(minutes: 1)),
      goal: [
        GoalModel(
          statusReason: "Create by VT",
          achievementStatus: Status.IN_PROGRESS,
          startDate: DateTime.now().subtract(const Duration(minutes: 1)),
          target: [
            const TargetModel(detailString: "TREATMENT_TO_BE_PROVIDED"),
          ],
        ),
      ],
    );
    logger.d("CarePlanPostModel");
    logger.d(carePlan.toJson());

    var response = await _vtCarePlanRemoteSource.saveCarePlan(
      carePlan: carePlan,
    );

    return response;
  }
}
