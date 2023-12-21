import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/gaol_outcome.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/contracts/vt_close_assessment_reposirtory.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/enums/vt_close_assessment_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/models/vt_close_assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/domain/repositories/vt_close_assessment_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

var vtCloseAssessmentViewModelProvider =
    ChangeNotifierProvider<VTCloseAssessmentViewModel>(
  (ref) => VTCloseAssessmentViewModel(
    vtCloseAssessmentHelperNotifier: ref.read(vtCloseAssessmentHelperProvider),
    vtCloseAssessmentRepository: ref.read(vtCloseAssessmentRepository),
  ),
);

class VTCloseAssessmentViewModel extends ChangeNotifier {
  final VTCloseAssessmentHelperNotifier vtCloseAssessmentHelperNotifier;
  final VTCloseAssessmentRepository vtCloseAssessmentRepository;
  VTCloseAssessmentViewModel({required this.vtCloseAssessmentHelperNotifier, required this.vtCloseAssessmentRepository,});

  void submitCloseAssessmentInfo() {

    CloseAssessmentDto _patientDetails = CloseAssessmentDto(
      encounterId: 33300000001,
      diagnosticReportId: 33200000001,
      organizationCode: 88000004,
      performer: [
        const Performer(role: Role.VISION_TECHNICIAN, identifier: 9627849171)
      ],
      carePlanId: 1401,
      goalId: 1501,
      goalAction: GoalAction.UPDATE,
      statusReason: "----",
      achievementStatus: AchievementStatus.ACHIEVED,
      statusDate: DateTime.parse("2023-12-15T14:00:36.126Z"),
      outcomes: [
        // Outcome(action: Action.ADD, goalOutcome: GoalOutcome.GLASSES_PRESCRIBED)
      ],
      note: vtCloseAssessmentHelperNotifier.recommendationsController.text,
      mrn: "PAT1234",
    );

    vtCloseAssessmentRepository.submitCloseAssessmentInfo(_patientDetails);
    // _vtCloseAssessmentHelperNotifier.oralMedication;
  }
}