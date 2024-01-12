// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'vg_patient_response_model.freezed.dart';
// part 'vg_patient_response_model.g.dart';

// @freezed
// class VisionGuardianEventPatientResponseModel {
//   int encounterId;
//   int organizationCode;
//   String serviceType;
//   String encounterStatus;
//   String remarks;
//   EncounterPeriod encounterPeriod;
//   int diagnosticReportId;
//   int assessmentCode;
//   String assessmentVersion;
//   String category;
//   String code;
//   DateTime issued;
//   DateTime userStartDate;
//   String source;
//   String status;
//   int subject;
//   String observationSeverity;
//   String questionResponseSeverity;
//   String mediaSeverity;
//   String cumulativeSeverity;
//   String sourceVersion;
//   int performerId;
//   String performerRole;
//   List<dynamic> incompleteTests;
 
//   VisionGuardianEventPatientResponseModel({
//     required this.encounterId,
//     this.organizationCode,
//     this.serviceType,
//     this.encounterStatus,
//     this.remarks,
//     this.encounterPeriod,
//     this.diagnosticReportId,
//     this.assessmentCode,
//     this.assessmentVersion,
//     this.category,
//     this.code,
//     this.issued,
//     this.userStartDate,
//     this.source,
//     this.status,
//     this.subject,
//     this.observationSeverity,
//     this.questionResponseSeverity,
//     this.mediaSeverity,
//     this.cumulativeSeverity,
//     this.sourceVersion,
//     this.performerId,
//     this.performerRole,
//     this.incompleteTests,
//   });
 
//   factory VisionGuardianEventPatientResponseModel.fromJson(Map<String, dynamic> json) {
//     return VisionGuardianEventPatientResponseModel(
//       encounterId: json['encounterId'],
//       organizationCode: json['organizationCode'],
//       serviceType: json['serviceType'],
//       encounterStatus: json['encounterStatus'],
//       remarks: json['remarks'],
//       encounterPeriod: EncounterPeriod.fromJson(json['encounterPeriod']),
//       diagnosticReportId: json['diagnosticReportId'],
//       assessmentCode: json['assessmentCode'],
//       assessmentVersion: json['assessmentVersion'],
//       category: json['category'],
//       code: json['code'],
//       issued: DateTime.parse(json['issued']),
//       userStartDate: DateTime.parse(json['userStartDate']),
//       source: json['source'],
//       status: json['status'],
//       subject: json['subject'],
//       observationSeverity: json['observationSeverity'],
//       questionResponseSeverity: json['questionResponseSeverity'],
//       mediaSeverity: json['mediaSeverity'],
//       cumulativeSeverity: json['cumulativeSeverity'],
//       sourceVersion: json['sourceVersion'],
//       performerId: json['performerId'],
//       performerRole: json['performerRole'],
//       incompleteTests: json['incompleteTests'],
//     );
//   }
// }
 
// class EncounterPeriod {
//   int id;
//   DateTime start;
//   DateTime end;
 
//   EncounterPeriod({
//     this.id,
//     this.start,
//     this.end,
//   });
 
//   factory EncounterPeriod.fromJson(Map<String, dynamic> json) {
//     return EncounterPeriod(
//       id: json['id'],
//       start: DateTime.parse(json['start']),
//       end: json['end'] != null ? DateTime.parse(json['end']) : null,
//     );
//   }
// }
