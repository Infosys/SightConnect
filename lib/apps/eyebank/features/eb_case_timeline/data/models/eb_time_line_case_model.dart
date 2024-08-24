// import 'package:eye_care_for_all/apps/eyebank/features/eb_case_timeline/domain/enums/eb_timline_enums.dart';

// class EBTimeLineCaseModel {
//   final DateTime initiateDate;
//   final DateTime recentUpdatedTime;
//   final EBCaseStatus status;
//   final EBAssessmentName assessmentName;
//   final String stageName;
//   final List<EBTimeLineCaseModel> subSteps;

//   EBTimeLineCaseModel({
//     required this.initiateDate,
//     required this.recentUpdatedTime,
//     required this.status,
//     required this.assessmentName,
//     required this.stageName,
//     this.subSteps = const [],
//   });

//   factory EBTimeLineCaseModel.fromJson(Map<String, dynamic> json) {
//     return EBTimeLineCaseModel(
//       initiateDate: DateTime.parse(json['initiateDate'] as String),
//       recentUpdatedTime: DateTime.parse(json['recentUpdatedTime'] as String),
//       status: getStatus(json['status'] as String),
//       assessmentName: getAssessmentStatus(json['assessmentName'] as String),
//       stageName: json['stageName'] as String,
//       subSteps: (json['subSteps'] as List<dynamic>?)
//               ?.map((e) => EBTimeLineCaseModel.fromJson(e))
//               .toList() ??
//           [],
//     );
//   }
//   static EBCaseStatus getStatus(String name) {
//     return switch (name) {
//       "PENDING" => EBCaseStatus.PENDING,
//       "COMPLETED" => EBCaseStatus.COMPLETED,
//       "IN_PROGRESS" => EBCaseStatus.IN_PROGRESS,
//       _ => EBCaseStatus.UNKNOWN,
//     };
//   }

//   static EBAssessmentName getAssessmentStatus(String name) {
//     return switch (name) {
//       "INTIMATION" => EBAssessmentName.INTIMATION,
//       "PRELIMINARY_SCREENING" => EBAssessmentName.PRELIMINARY_SCREENING,
//       "CORNEA_RECOVERY" => EBAssessmentName.CORNEA_RECOVERY,
//       "SHIPPED_TO_EYEBANK" => EBAssessmentName.SHIPPED_TO_EYEBANK,
//       "RECEIVED_TO_EYEBANK" => EBAssessmentName.RECEIVED_TO_EYEBANK,
//       "SEROLOGY" => EBAssessmentName.SEROLOGY,
//       "CORNEA_EVALUATION" => EBAssessmentName.CORNEA_EVALUATION,
//       "IN_INVENTORY" => EBAssessmentName.IN_INVENTORY,
// // ONLY FOR TESTING  -------------------------------------
//       "ISSUE_ACQUISITION" => EBAssessmentName.ISSUE_ACQUISITION,
//       "ADVERSE_REACTION_REPORT" => EBAssessmentName.ADVERSE_REACTION_REPORT,
//       "DOCTOR_ASSESSMENT" => EBAssessmentName.DOCTOR_ASSESSMENT,
// // ONLY FOR TESTING-------------------------------------

//       _ => EBAssessmentName.UNKNOWN,
//     };
//   }
// }
