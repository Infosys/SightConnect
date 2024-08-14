import 'package:eye_care_for_all/apps/eyebank/features/case_timeline/data/enums/enums.dart';

class EBTimeLineCaseModel {
  final DateTime initiateDate;
  final DateTime recentUpdatedTime;
  final EBCaseStatus status;
  final EBAssessmentName assessmentName;
  final String stageName;
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
      initiateDate: DateTime.parse(json['initiateDate'] as String),
      recentUpdatedTime: DateTime.parse(json['recentUpdatedTime'] as String),
      status: getStatus(json['status'] as String),
      assessmentName: getAssessmentStatus(json['assessmentName'] as String),
      stageName: json['stageName'] as String,
      subSteps: (json['subSteps'] as List<dynamic>?)
              ?.map((e) => EBTimeLineCaseModel.fromJson(e))
              .toList() ??
          [],
    );
  }
  static EBCaseStatus getStatus(String name) {
    return switch (name) {
      "PENDING" => EBCaseStatus.PENDING,
      "COMPLETED" => EBCaseStatus.COMPLETED,
      "IN_PROGRESS" => EBCaseStatus.IN_PROGRESS,
      _ => EBCaseStatus.UNKNOWN,
    };
  }

  static EBAssessmentName getAssessmentStatus(String name) {
    return switch (name) {
      "INTIMATION" => EBAssessmentName.INTIMATION,
      "PRELIMINARY_ASSESSMENT" => EBAssessmentName.PRELIMINARY_ASSESSMENT,
      "CORNEA_RECOVERY" => EBAssessmentName.CORNEA_RECOVERY,
      "SHIPPED_TO_EYEBANK" => EBAssessmentName.SHIPPED_TO_EYEBANK,
      "RECEIVED_AT_EYEBANK" => EBAssessmentName.RECEIVED_AT_EYEBANK,
      "SEROLOGY" => EBAssessmentName.SEROLOGY,
      "EVALUATION_OD" => EBAssessmentName.EVALUATION_OD,
      "EVALUATION_OS" => EBAssessmentName.EVALUATION_OS,
      "INVENTORY" => EBAssessmentName.INVENTORY,
      _ => EBAssessmentName.UNKNOWN,
    };
  }
}
