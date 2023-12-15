import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_detailed_report_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_and_assessment_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';

class AssessmentDetailedReportMapper {
  static TriageReportAndAssementPageEntity toEntity(
    TriageResultUserEntity profileEntity,
    TriageDetailedReportModel triageDetailedReport,
    DiagnosticReportTemplateFHIRModel triageAssessment,
  ) {
    return TriageReportAndAssementPageEntity(
      name: profileEntity.name,
      triageResultID: 0,
      priority: RequestPriority.URGENT,
      reportTag: 'Eye Triage',
      triageResultType: 'Eye Triage',
      triageResultSource: Source.IN_PERSION,
      assessmentID: 0,
      triageResultStartDate: DateTime.now(),
      triageResultDescription: 'Eye Triage',
      doctorName: 'Dr. Avendra Singh',
      doctorId: 'ABC123',
      doctorTitle: 'Dr. Avendra Singh',
      patientId: 'Dr. Avendra Singh',
      appointementDateTime: DateTime.now(),
      questionResponseBreifEntity: const [
        QuestionResponseBreifEntity(
          question: 'Dr. Avendra Singh',
          questionId: 123,
          responseId: 123,
          response: 'Dr. Avendra Singh',
        )
      ],
      visualAcuityBreifEntity: const [
        ObservationBreifEntity(
          observationId: 1,
          observationValue: 1,
          observationValueIdentifier: 1,
          bodySite: '',
        ),
        ObservationBreifEntity(
          observationId: 1,
          observationValue: 1,
          observationValueIdentifier: 1,
          bodySite: '',
        ),
        ObservationBreifEntity(
          observationId: 1,
          observationValue: 1,
          observationValueIdentifier: 1,
          bodySite: '',
        )
      ],
      imageBreifEntity: const [
        ImageBreifEntity(
          bodySite: '',
          imageUrl: '',
          imageId: 123,
          imageIdentifier: 123,
        )
      ],
    );
  }
}
