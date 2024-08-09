import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/enums/enums.dart';

class EBTimeLineCaseModel {
  final DateTime initiateDate;
  final DateTime recentUpdatedTime;
  final EBCaseStatus status;
  final EBAssessmentName assessmentName;
  final CaseTimeLineSteps stageName;
  final List<EBTimeLineCaseModel> subSteps;

  EBTimeLineCaseModel({
    required this.initiateDate,
    required this.recentUpdatedTime,
    required this.status,
    required this.assessmentName,
    required this.stageName,
    this.subSteps = const [],
  });

  factory EBTimeLineCaseModel.fromJson(Map<String, dynamic> json) {
    return EBTimeLineCaseModel(
      initiateDate: DateTime.parse(json['initiateDate']),
      recentUpdatedTime: DateTime.parse(json['recentUpdatedTime']),
      status: EBCaseStatus.values.firstWhere(
        (element) => element.toString().split('.').last == json['status'],
        orElse: () => EBCaseStatus.PENDING, // Default value if not found
      ),
      assessmentName: EBAssessmentName.values.firstWhere(
        (element) =>
            element.toString().split('.').last == json['assessmentName'],
        orElse: () => EBAssessmentName.TEMPLATE, // Default value if not found
      ),
      stageName: CaseTimeLineSteps.values.firstWhere(
        (element) => element.toString().split('.').last == json['stageName'],
        orElse: () =>
            CaseTimeLineSteps.INTIMATION, // Default value if not found
      ),
      subSteps: json['subSteps'] != null
          ? List<EBTimeLineCaseModel>.from(
              json['subSteps'].map((x) => EBTimeLineCaseModel.fromJson(x)))
          : [],
    );
  }
}
