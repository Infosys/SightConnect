// class TriageResultPageMapper {
//   static TriageReportBriefEntity toEntity(TriageDetailedReportModel model) {
//     return TriageReportBriefEntity(
//       questionResultDescription: model.questionResultDescription ?? "NA",
//       observationResultDescription: model.observationResultDescription ?? "NA",
//       mediaResultDescription: model.mediaResultDescription ?? "NA",
//       triageResultID: model.diagnosticReportId!,
//       priority: (model.carePlans == null || model.carePlans!.isEmpty)
//           ? RequestPriority.PENDING
//           : model.carePlans!.first.activities!.first.plannedActivityReference!
//               .serviceRequest!.priority,
//       reportTag: 'NA',
//       triageResultType: 'Eye Assesment',
//       triageResultSource: model.source,
//       assessmentID: model.assessmentCode!,
//       triageResultStartDate: model.userStartDate!,
//       triageResultDescription: model.diagnosticReportDescription ?? "NA",
//       isUpdateEnabled: model.updateEndTime!.isAfter(DateTime.now()) &&
//           model.status != DiagnosticReportStatus.CANCELLED,
//     );
//   }
// }


// class TriageDetailedResultEntity {

// }