import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/enums/enums.dart';
import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/models/eb_time_line_case_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ebCaseTimeLineProvider = FutureProvider.family((ref, caseID) async {
  return Future.delayed(const Duration(seconds: 1), () {
    List<EBTimeLineCaseModel> timeline = [
      EBTimeLineCaseModel(
        initiateDate: DateTime.now(),
        recentUpdatedTime: DateTime.now(),
        status: EBCaseStatus.COMPLETED,
        assessmentName: EBAssessmentName.TEMPLATE,
        stageName: CaseTimeLineSteps.INTIMATION,
      ),
      EBTimeLineCaseModel(
        initiateDate: DateTime.now(),
        recentUpdatedTime: DateTime.now(),
        status: EBCaseStatus.COMPLETED,
        assessmentName: EBAssessmentName.TEMPLATE,
        stageName: CaseTimeLineSteps.PRELIMINARY_ASSESSMENT,
      ),
      EBTimeLineCaseModel(
        initiateDate: DateTime.now(),
        recentUpdatedTime: DateTime.now(),
        status: EBCaseStatus.COMPLETED,
        assessmentName: EBAssessmentName.TEMPLATE,
        stageName: CaseTimeLineSteps.CORNEA_RECOVERY,
      ),
      EBTimeLineCaseModel(
        initiateDate: DateTime.now(),
        recentUpdatedTime: DateTime.now(),
        status: EBCaseStatus.IN_PROGRESS,
        assessmentName: EBAssessmentName.TEMPLATE,
        stageName: CaseTimeLineSteps.SHIPPED_TO_EYEBANK,
      ),
      EBTimeLineCaseModel(
        initiateDate: DateTime.now(),
        recentUpdatedTime: DateTime.now(),
        status: EBCaseStatus.PENDING,
        assessmentName: EBAssessmentName.TEMPLATE,
        stageName: CaseTimeLineSteps.RECEIVED_AT_EYEBANK,
      ),
      EBTimeLineCaseModel(
        initiateDate: DateTime.now(),
        recentUpdatedTime: DateTime.now(),
        status: EBCaseStatus.PENDING,
        assessmentName: EBAssessmentName.TEMPLATE,
        stageName: CaseTimeLineSteps.SEROLOGY,
      ),
      EBTimeLineCaseModel(
        initiateDate: DateTime.now(),
        recentUpdatedTime: DateTime.now(),
        status: EBCaseStatus.PENDING,
        assessmentName: EBAssessmentName.TEMPLATE,
        stageName: CaseTimeLineSteps.EVALUATION_OD,
      ),
      EBTimeLineCaseModel(
        initiateDate: DateTime.now(),
        recentUpdatedTime: DateTime.now(),
        status: EBCaseStatus.PENDING,
        assessmentName: EBAssessmentName.TEMPLATE,
        stageName: CaseTimeLineSteps.EVALUATION_OS,
      ),
      EBTimeLineCaseModel(
        initiateDate: DateTime.now(),
        recentUpdatedTime: DateTime.now(),
        status: EBCaseStatus.PENDING,
        assessmentName: EBAssessmentName.TEMPLATE,
        stageName: CaseTimeLineSteps.INVENTORY,
      ),
    ];
    return timeline;
  });
});


// INTIMATION, PRELIMINARY_ASSESSMENT, CORNEA_RECOVERY, SHIPPED TO EYEBANK, RECEIVED AT EYEBANK, SEROLOGY, EVALUATION OD , EVALUATION OS , INVENTORY 