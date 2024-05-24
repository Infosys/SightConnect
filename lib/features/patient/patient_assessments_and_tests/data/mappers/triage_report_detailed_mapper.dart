import 'dart:developer';

import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/observation_code.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/triage_diagnostic_report_template_FHIR_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_brief_entity.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/main.dart';

class AssessmentDetailedReportMapper {
  static TriageReportDetailedEntity toEntity(
    TriageReportUserEntity? profileEntity,
    TriageDetailedReportModel triageDetailedReport,
    DiagnosticReportTemplateFHIRModel triageAssessment,
  ) {
    return TriageReportDetailedEntity(
      triageResultDescription:
          triageDetailedReport.diagnosticReportDescription ?? "NA",
      questionResultDescription:
          triageDetailedReport.questionResultDescription ?? "NA",
      observationResultDescription:
          triageDetailedReport.observationResultDescription ?? "NA",
      mediaResultDescription:
          triageDetailedReport.mediaResultDescription ?? "NA",
      patientId: "${profileEntity?.id ?? ""}",
      patientName: profileEntity?.name ?? "",
      patientImage: profileEntity?.image,
      assessmentID: triageDetailedReport.assessmentCode ?? 0,
      diagnosticReportId: triageDetailedReport.diagnosticReportId ?? 0,
      reportDate: triageDetailedReport.issued ?? DateTime.now(),
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
      cumulativeSeverity: triageDetailedReport.cumulativeSeverity,
      icompleteTests: triageDetailedReport.incompleteTests,
      observationSeverity: triageDetailedReport.observationSeverity,
      mediaSeverity: triageDetailedReport.mediaSeverity,
      questionResponseSeverity: triageDetailedReport.questionResponseSeverity,
    );
  }

  static List<ImageBriefEntity> _getimageBreifEntity(
      DiagnosticReportTemplateFHIRModel triageAssessment,
      TriageDetailedReportModel triageDetailedReport) {
    try {
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
          imageBriefEntity.add(imagingStudyModel.endpoint != null &&
                  imagingStudyModel.endpoint!
                      .contains(imagingStudyModel.fileId ?? "")
              ? ImageBriefEntity(
                  imageId: imagingStudyModel.id,
                  imageIdentifier: imagingStudyModel.identifier ?? 0,
                  imageUrl:
                      "${imagingStudyModel.baseUrl}${imagingStudyModel.endpoint}",
                  bodySite: imageMap[imagingStudyModel.identifier].toString(),
                )
              : ImageBriefEntity(
                  imageId: imagingStudyModel.id,
                  imageIdentifier: imagingStudyModel.identifier ?? 0,
                  imageUrl:
                      "${imagingStudyModel.baseUrl}${imagingStudyModel.endpoint}/${imagingStudyModel.fileId}",
                  bodySite: imageMap[imagingStudyModel.identifier].toString(),
                ));
        }
      }

      return imageBriefEntity;
    } catch (e) {
      logger.d({
        "Some Error Happend while Mapping ImageBriefEntity": e,
      });
      return [];
    }
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
    try {
      final List<ObservationBriefEntity> observationBriefEntity = [];
      Map<int, Map<String, String>> observationMap = {};
      // if (triageAssessment.observations?.id != null) {
      //   int id = triageAssessment.observations?.id ?? 0;
      //   BodySite bodySite =
      //       triageAssessment.observations?.bodySite ?? BodySite.BOTH_EYES;
      //   observationMap[id] = {
      //     "bodySite": getBodySiteText(bodySite),
      //     "code": getCode(triageAssessment.observations!.code!),
      //   };
      // }

      for (ObservationDefinitionModel observation
          in triageAssessment.observations!.observationDefinition!) {
        int id = observation.id ?? 0;
        BodySite bodySite = observation.bodySite!;
        observationMap[id] = {
          "bodySite": getBodySiteText(bodySite),
          "code": getCode(observation.code!),
        };
      }
      logger.f("this is observation Map: $observationMap");
      for (Observation observation in triageDetailedReport.observations!) {
        if (observationMap.containsKey(observation.identifier)) {
          observationBriefEntity.add(
            ObservationBriefEntity(
              observationValue: double.parse(observation.value!),
              observationId: observation.id,
              observationValueIdentifier: observation.identifier ?? 0,
              bodySite: observationMap[observation.identifier]?["bodySite"]
                      .toString() ??
                  "",
              code: observationMap[observation.identifier]?["code"] ?? "",
            ),
          );
        }
      }

      log("Observation Brief Entity: ${observationBriefEntity.toString()}");
      return observationBriefEntity;
    } catch (e) {
      logger.d({
        "Some Error Happend while Mapping ObservationBriefEntity": e,
      });
      return [];
    }
  }

  static String getCode(ObservationCode code) {
    switch (code) {
      case ObservationCode.LOGMAR_DISTANT:
        return "Distance";
      case ObservationCode.LOGMAR_NEAR:
        return "Near";
      default:
        return "";
    }
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

  static List<QuestionResponseBriefEntity> _getQuestionsBriefEntity(
    DiagnosticReportTemplateFHIRModel triageAssessment,
    TriageDetailedReportModel triageDetailedReport,
  ) {
    try {
      final List<QuestionResponseBriefEntity> questionResponseBriefEntity = [];
      Map<int, String> questionResponseMap = {};
      for (var question in triageAssessment.questionnaire!.questionnaireItem!) {
        questionResponseMap[question.id!] = question.text!;
      }

      for (var response in triageDetailedReport.responses!) {
        if (questionResponseMap.containsKey(response.linkId)) {
          questionResponseBriefEntity.add(
            QuestionResponseBriefEntity(
              question: questionResponseMap[response.linkId]!,
              response: response.answers!.first.value,
            ),
          );
        }
      }

      return questionResponseBriefEntity;
    } catch (e) {
      logger.d({
        "Some Error Happend while Mapping QuestionResponseBriefEntity": e,
      });
      return [];
    }
  }
}
