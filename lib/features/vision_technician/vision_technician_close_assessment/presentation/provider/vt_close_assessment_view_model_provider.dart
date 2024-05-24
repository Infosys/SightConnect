import 'package:eye_care_for_all/core/providers/global_vt_provider.dart';
import 'package:eye_care_for_all/core/services/failure.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_post_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/contracts/vt_close_assessment_reposirtory.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/enums/vt_close_assessment_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/models/vt_close_assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/domain/repositories/vt_close_assessment_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/data/model/care_plan_post_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_preliminary_assessment/presentation/providers/preliminary_assessment_helper_provider.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtCloseAssessmentViewModelProvider =
    ChangeNotifierProvider<VTCloseAssessmentViewModel>(
  (ref) => VTCloseAssessmentViewModel(
    vtCloseAssessmentHelperNotifier: ref.read(vtCloseAssessmentHelperProvider),
    vtCloseAssessmentRepository: ref.read(vtCloseAssessmentRepository),
    preliminaryAssessmentHelperProvider:
        ref.watch(preliminaryAssessmentHelperProvider),
    globalVTProvider: ref.watch(globalVTProvider),
  ),
);

class VTCloseAssessmentViewModel extends ChangeNotifier {
  final VTCloseAssessmentHelperNotifier vtCloseAssessmentHelperNotifier;
  final VTCloseAssessmentRepository vtCloseAssessmentRepository;
  final PreliminaryAssessmentHelperNotifier preliminaryAssessmentHelperProvider;
  final GlobalVTProvider globalVTProvider;
  VTCloseAssessmentViewModel({
    required this.vtCloseAssessmentHelperNotifier,
    required this.vtCloseAssessmentRepository,
    required this.preliminaryAssessmentHelperProvider,
    required this.globalVTProvider,
  });

  Future<void> submitCloseAssessmentInfo() async {
    try {
      List<Outcome> listOfOutcomes = [];
      Set<GoalOutCome> selectedGoalOutComeList =
          vtCloseAssessmentHelperNotifier.selectedGoalOutComeList;

      for (var element in selectedGoalOutComeList) {
        listOfOutcomes.add(Outcome(
          action: ActionOutcome.ADD,
          goalOutcome: element,
        ));
      }

      logger.d("List of Outcomes: $listOfOutcomes");

      TriagePostModel? triageResponse =
          preliminaryAssessmentHelperProvider.triageResponse;

      CarePlanPostModel? carePlanResponse =
          preliminaryAssessmentHelperProvider.carePlanResponse;

      CloseAssessmentDto patientDetails = CloseAssessmentDto(
        encounterId: triageResponse?.encounter?.id,
        diagnosticReportId: triageResponse?.id, //from care plan response
        organizationCode:
            carePlanResponse?.organizationCode, //from care plan response
        tenantCode: carePlanResponse?.tenantCode, //from care plan response
        performer: [
          PerformerDto(
            role: Role.VISION_TECHNICIAN,
            identifier: globalVTProvider.userId,
          ),
        ],
        carePlanId: carePlanResponse?.id, //from care plan response
        goalId: carePlanResponse?.goal?[0].id, //from care plan
        goalAction: GoalAction.UPDATE,
        achievementStatus: AchievementStatus.ACHIEVED,
        statusDate: DateTime.now().subtract(const Duration(seconds: 2)).toUtc(),
        outcomes: listOfOutcomes,
        note: vtCloseAssessmentHelperNotifier.recommendationsController.text,
        mrn: vtCloseAssessmentHelperNotifier.mrCodeController.text,
      );

      logger.d(patientDetails.toJson());

      await vtCloseAssessmentRepository
          .submitCloseAssessmentInfo(patientDetails);
    } on ServerFailure catch (e) {
      logger.e(e);
      rethrow;
    } catch (e) {
      logger.e(e);
      throw ServerFailure(errorMessage: "Failed to close assessment");
    }
  }
}
