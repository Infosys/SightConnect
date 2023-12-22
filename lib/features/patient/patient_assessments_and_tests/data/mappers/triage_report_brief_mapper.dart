import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';

class AssessmentReportMapper {
  static TriageReportBriefEntity toEntity(TriageDetailedReportModel model) {
    return TriageReportBriefEntity(
      questionResultDescription: model.questionResultDescription ?? "NA",
      observationResultDescription: model.observationResultDescription ?? "NA",
      mediaResultDescription: model.mediaResultDescription ?? "NA",
      triageResultID: model.diagnosticReportId!,
      priority: (model.carePlans == null || model.carePlans!.isEmpty)
          ? RequestPriority.ROUTINE
          : model.carePlans!.first.activities!.first.plannedActivityReference!
              .serviceRequest!.priority,
      reportTag: 'NA',
      triageResultType: 'Eye Assesment',
      triageResultSource: model.source,
      assessmentID: model.assessmentCode!,
      triageResultStartDate: model.userStartDate!,
      triageResultDescription: model.diagnosticReportDescription ?? "NA",
      isUpdateEnabled: model.updateEndTime!.isAfter(DateTime.now()) &&
          model.status != DiagnosticReportStatus.CANCELLED,
    );
  }
}
