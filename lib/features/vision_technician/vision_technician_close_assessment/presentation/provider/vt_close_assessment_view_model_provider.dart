import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/contracts/vt_close_assessment_reposirtory.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/enums/vt_close_assessment_enums.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/data/models/vt_close_assessment_model.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/domain/repositories/vt_close_assessment_repository_impl.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_close_assessment/presentation/provider/vt_close_assessment_helper_provider.dart';
import 'package:eye_care_for_all/features/vision_technician/vision_technician_home/data/models/vt_patient_model.dart';
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
  VTCloseAssessmentViewModel({
    required this.vtCloseAssessmentHelperNotifier,
    required this.vtCloseAssessmentRepository,
  });

  void submitCloseAssessmentInfo(VTPatientDto patientDetails) {
    List<Outcome> listOfOutcomes = [];

    // if (vtCloseAssessmentHelperNotifier.spectacles) {
    //   listOfOutcomes.add(const Outcome(
    //     action: ActionOutcome.ADD,
    //     goalOutcome: GoalOutCome.GLASSES_PRESCRIBED,
    //   ));
    // }

    // if (vtCloseAssessmentHelperNotifier.cataractSurgery) {
    //   listOfOutcomes.add(const Outcome(
    //     action: ActionOutcome.ADD,
    //     goalOutcome: GoalOutCome.CATARACT_SURGERY_PRESCRIBED,
    //   ));
    // }

    // if (vtCloseAssessmentHelperNotifier.eyeDrops) {
    //   listOfOutcomes.add(const Outcome(
    //     action: ActionOutcome.ADD,
    //     goalOutcome: GoalOutCome.EYE_DROPS_PRESCRIBED,
    //   ));
    // }

    // if (vtCloseAssessmentHelperNotifier.oralMedication) {
    //   listOfOutcomes.add(const Outcome(
    //     action: ActionOutcome.ADD,
    //     goalOutcome: GoalOutCome.ORAL_MEDICATION_PRESCRIBED,
    //   ));
    // }

    // String dateTime = DateTime().

    CloseAssessmentDto patientDetails0 = CloseAssessmentDto(
      encounterId: 33300000023, //from care plan response,
      diagnosticReportId: 33200000051, //from care plan response
      organizationCode: 1001, //from care plan response
      performer: [
        const Performer(role: Role.VISION_TECHNICIAN, identifier: 1601)
      ],
      carePlanId: 13513, //from care plan response
      goalId: 13613, //from care plan
      goalAction: GoalAction.UPDATE,
      statusReason: "don't know",
      achievementStatus: AchievementStatus.ACHIEVED,
      statusDate: DateTime.now(),
      outcomes: listOfOutcomes,
      note: vtCloseAssessmentHelperNotifier.recommendationsController.text,
      mrn: vtCloseAssessmentHelperNotifier.mrCodeController.text,
    );

    vtCloseAssessmentRepository.submitCloseAssessmentInfo(patientDetails0);
    // _vtCloseAssessmentHelperNotifier.oralMedication;
  }

  DateTime covertDateTimeToDateTimeZone(DateTime date) {
    String dateStr = "${date.toString()}Z";

    return DateTime.parse(dateStr);
  }
}
