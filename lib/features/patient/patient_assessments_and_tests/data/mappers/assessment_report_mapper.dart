import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_detailed_report_entity.dart';

class AssessmentReportMapper {
  static TriageResultBriefCardEntiry toEntity(TriageDetailedReportModel model) {
    return TriageResultBriefCardEntiry(
      triageResultID: model.diagnosticReportId!,
      priority: model.carePlans!.first.activities!.first
          .plannedActivityReference!.serviceRequest!.priority!,
      reportTag: 'Post Op Care',
      patientName: 'Raghavi Mishra',
      patientImage: 'element.patientImage!',
      triageResultType: 'element.triageResultType!',
      triageResultSource: 'element.triageResultSource!',
      assessmentID: 'element.assessmentID!',
      triageResultStartDate: 'element.triageResultStartDate!',
      triageResultDescription: 'element.triageResultDescription!',
      isUpdateEnabled: false,
    );
  }
}
