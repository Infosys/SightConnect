import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/enums/enums.dart';

class EBTimeLineCaseModel {
  final DateTime initiateDate;
  final DateTime recentUpdatedTime;
  final EBCaseStatus status;
  final EBAssessmentName assessmentName;
  final CaseTimeLineSteps stageName;

  EBTimeLineCaseModel({
    required this.initiateDate,
    required this.recentUpdatedTime,
    required this.status,
    required this.assessmentName,
    required this.stageName,
  });
}
