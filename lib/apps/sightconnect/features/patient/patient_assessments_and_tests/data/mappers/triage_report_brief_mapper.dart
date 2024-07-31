import 'package:eye_care_for_all/apps/sightconnect/common/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/diagnostic_report_status.dart';

class AssessmentReportMapper {
  static TriageReportBriefEntity toEntity(TriageDetailedReportModel model) {
    return TriageReportBriefEntity(
      encounterId: model.encounterId!,
      encounterStatus: model.encounterStatus,
      questionResultDescription: model.questionResultDescription ?? "",
      observationResultDescription: model.observationResultDescription ?? "",
      mediaResultDescription: model.mediaResultDescription ?? "",
      triageResultID: model.diagnosticReportId!,
      overallSeverity: model.cumulativeSeverity,
      reportTag: '',
      triageResultType: 'Eye Assesment',
      triageResultSource: model.source,
      assessmentID: model.assessmentCode!,
      triageResultStartDate: model.userStartDate!,
      triageResultDescription: model.diagnosticReportDescription ?? "",
      isUpdateEnabled: model.updateEndTime!.isAfter(DateTime.now()) &&
          model.status != DiagnosticReportStatus.CANCELLED &&
          model.performerRole == PerformerRole.PATIENT,
      status: model.status,
    );
  }
}
