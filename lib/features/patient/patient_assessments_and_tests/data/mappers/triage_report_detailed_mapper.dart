import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';
import 'package:eye_care_for_all/main.dart';
import 'package:eye_care_for_all/shared/extensions/widget_extension.dart';

class AssessmentDetailedReportMapper {
  static TriageReportDetailedEntity toEntity(
    TriageReportUserEntity profileEntity,
    TriageDetailedReportModel triageDetailedReport,
    DiagnosticReportTemplateFHIRModel triageAssessment,
  ) {
    logger.d({
      "profileEntity": profileEntity,
      "triageDetailedReport": triageDetailedReport,
      "triageAssessment": triageAssessment,
      "observationSeverity": triageDetailedReport.observationSeverity,
    });
    return TriageReportDetailedEntity(
      triageResultDescription:
          triageDetailedReport.diagnosticReportDescription ?? "NA",
      questionResultDescription:
          triageDetailedReport.questionResultDescription ?? "NA",
      observationResultDescription:
          triageDetailedReport.observationResultDescription ?? "NA",
      mediaResultDescription:
          triageDetailedReport.mediaResultDescription ?? "NA",
      patientId: "${profileEntity.id}",
      patientName: profileEntity.name,
      patientImage: profileEntity.image,
      assessmentID: "${triageDetailedReport.assessmentCode ?? ""}",
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
      imageBriefEntity: _getimageBreifEntity(
        triageAssessment,
        triageDetailedReport,
      ),
      overallpriority: triageDetailedReport.carePlans!.first.activities!.first
          .plannedActivityReference!.serviceRequest!.priority!,
      cumulativeSeverity: triageDetailedReport.cumulativeSeverity,
      icompleteTests: triageDetailedReport.incompleteTests,
      observationSeverity: triageDetailedReport.observationSeverity,
      mediaSeverity: triageDetailedReport.mediaSeverity,
      questionResponseSeverity: triageDetailedReport.questionResponseSeverity,
      quessionnairepriority:
          getSevirityToPriority(triageDetailedReport.questionResponseSeverity),
      observationpriority:
          getSevirityToPriority(triageDetailedReport.observationSeverity),
      mediapriority: getSevirityToPriority(triageDetailedReport.mediaSeverity),
    );
  }

  static RequestPriority ? getSevirityToPriority(Severity? severity) {
    switch (severity) {
      case Severity.HIGH:
        return RequestPriority.URGENT;
      case Severity.LOW:
        return RequestPriority.ROUTINE;
      case Severity.ABNORMAL:
        return RequestPriority.ASAP;
      default:
        return null;
    }
  }

  static List<ImageBriefEntity> _getimageBreifEntity(
      DiagnosticReportTemplateFHIRModel triageAssessment,
      TriageDetailedReportModel triageDetailedReport) {
    final List<ImageBriefEntity> imageBriefEntity = [];
    Map<int, String> imageMap = {};
    List<ImagingSelectionTemplateFHIRModel>?
        imagingSelectionTemplateFHIRModels =
        triageAssessment.study?.imagingSelectionTemplate;
    for (ImagingSelectionTemplateFHIRModel relatedImageFHIRModel
        in imagingSelectionTemplateFHIRModels!) {
      imageMap[relatedImageFHIRModel.id!] = relatedImageFHIRModel.name ?? "";
    }
    for (Media imagingStudyModel in triageDetailedReport.media!) {
      if (imageMap.containsKey(imagingStudyModel.identifier)) {
        imageBriefEntity.add(
          ImageBriefEntity(
            imageId: imagingStudyModel.id,
            imageIdentifier: imagingStudyModel.identifier ?? 0,
            imageUrl:
                "${imagingStudyModel.baseUrl}${imagingStudyModel.endpoint}",
            bodySite: imageMap[imagingStudyModel.identifier].toString(),
          ),
        );
      }
    }

    return imageBriefEntity;
  }

  static BodySite calculateBodySite(String bodySite) {
    switch (bodySite) {
      case "LEFT_EYE":
        return BodySite.LEFT_EYE;
      case "RIGHT_EYE":
        return BodySite.RIGHT_EYE;
      case "BOTH_EYES":
        return BodySite.BOTH_EYES;
      default:
        return BodySite.BOTH_EYES;
    }
  }

  static List<ObservationBriefEntity> _getObservationBriefEntity(
    DiagnosticReportTemplateFHIRModel triageAssessment,
    TriageDetailedReportModel triageDetailedReport,
  ) {
    final List<ObservationBriefEntity> observationBriefEntity = [];
    Map<int, String> observationMap = {};
    if (triageAssessment.observations?.id != null) {
      int id = triageAssessment.observations?.id ?? 0;
      BodySite bodySite =
          triageAssessment.observations?.bodySite ?? BodySite.BOTH_EYES;
      observationMap[id] = getBodySiteText(bodySite);
    }
    for (ObservationDefinitionModel observation
        in triageAssessment.observations!.observationDefinition!) {
      int id = observation.id ?? 0;
      BodySite bodySite = observation.bodySite!;
      observationMap[id] = getBodySiteText(bodySite);
    }
    for (Observation observation in triageDetailedReport.observations!) {
      if (observationMap.containsKey(observation.identifier)) {
        observationBriefEntity.add(
          ObservationBriefEntity(
            observationValue: double.parse(observation.value!),
            observationId: observation.id,
            observationValueIdentifier: observation.identifier ?? 0,
            bodySite: observationMap[observation.identifier].toString(),
          ),
        );
      }
    }

    return observationBriefEntity;
  }

  static String getBodySiteText(BodySite bodySite) {
    switch (bodySite) {
      case BodySite.LEFT_EYE:
        return "Left Eye";
      case BodySite.RIGHT_EYE:
        return "Right Eye";
      case BodySite.BOTH_EYES:
        return "Both Eyes";
      default:
        return "";
    }
  }

  RequestPriority _getRequestPriorityFromSeverity(Severity severity) {
    switch (severity) {
      case Severity.ABNORMAL:
        return RequestPriority.ASAP;
      case Severity.HIGH:
        return RequestPriority.URGENT;
      case Severity.LOW:
        return RequestPriority.ROUTINE;
    }
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
