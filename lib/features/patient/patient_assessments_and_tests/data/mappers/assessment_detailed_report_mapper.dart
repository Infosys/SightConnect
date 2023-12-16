import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_detailed_report_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_and_assessment_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

class AssessmentDetailedReportMapper {
  static TriageReportDetailedEntity toEntity(
    TriageReportUserEntity profileEntity,
    TriageDetailedReportModel triageDetailedReport,
    DiagnosticReportTemplateFHIRModel triageAssessment,
  ) {
    logger.f({
      "profileEntity": profileEntity,
      "triageDetailedReport": triageDetailedReport,
      "triageAssessment": triageAssessment,
    });
    return TriageReportDetailedEntity(
      patientId: "${profileEntity.id}",
      patientName: profileEntity.name,
      patientImage: profileEntity.image,
      assessmentID: "${triageDetailedReport.assessmentCode ?? ""}",
      priority: RequestPriority.ROUTINE,
      reportDate: triageDetailedReport.issued?.formateDateWithTime ?? "",
      questionResponseBriefEntity:
          AssessmentDetailedReportMapper._getQuestionsBriefEntity(
        triageAssessment,
        triageDetailedReport,
      ),
      visualAcuityBreifEntity: _getObservationBriefEntity(
        triageAssessment,
        triageDetailedReport,
      ),
      imageBriefEntity: [],
    );
  }

  static List<ObservationBriefEntity> _getObservationBriefEntity(
    DiagnosticReportTemplateFHIRModel triageAssessment,
    TriageDetailedReportModel triageDetailedReport,
  ) {
    final List<ObservationBriefEntity> observationBriefEntity = [];
    Map<int, String> observationMap = {};
    if (triageAssessment.observations?.id == null) {
      int id = triageAssessment.observations?.id ?? 0;
      BodySite bodySite =
          triageAssessment.observations?.bodySite ?? BodySite.RIGHT_EYE;
      observationMap[id] = bodySite.toString();
    }
    for (ObservationDefinitionModel observation
        in triageAssessment.observations!.observationDefinition!) {
      int id = observation?.id ?? 0;
      BodySite bodySite = observation.bodySite!;
      observationMap[id] = bodySite.toString();
    }
    for (Observation observation in triageDetailedReport.observations!) {
      if (observationMap.containsKey(observation.identifier)) {
        observationBriefEntity.add(
          ObservationBriefEntity(
            observationValue: double.parse(observation.value!),
            observationId: observation.id ?? 0,
            observationValueIdentifier: observation.identifier ?? 0,
            bodySite: observationMap[observation.identifier].toString(),
          ),
        );
      }
    }

    return observationBriefEntity;
  }

  static List<QuestionResponseBriefEntity> _getQuestionsBriefEntity(
    DiagnosticReportTemplateFHIRModel triageAssessment,
    TriageDetailedReportModel triageDetailedReport,
  ) {
    final List<QuestionResponseBriefEntity> questionResponseBriefEntity = [];
    Map<int, Map<String, dynamic>> questionResponseMap = {};
    for (var question in triageAssessment.questionnaire!.questionnaireItem!) {
      questionResponseMap[question.id!] = {
        "question": question.text,
      };
    }
    for (var response in triageDetailedReport.responses!) {
      if (questionResponseMap.containsKey(response.linkId)) {
        questionResponseMap[response.linkId]!["response"] =
            response.answers!.first.value;
      }
    }
    questionResponseMap.forEach(
      (key, value) {
        questionResponseBriefEntity.add(
          QuestionResponseBriefEntity(
            question: value["question"],
            response: value["response"],
          ),
        );
      },
    );
    return questionResponseBriefEntity;
  }
}
