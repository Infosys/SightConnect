import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';

class TriageReportDetailedEntity {
  final String patientId;
  final String patientName;
  String? patientImage;
  final int assessmentID;
  final int diagnosticReportId;
  DateTime? reportDate;
  String? triageResultDescription;
  String? questionResultDescription;
  String? observationResultDescription;
  String? mediaResultDescription;
  List<IncompleteTestModel>? icompleteTests;

  List<QuestionResponseBriefEntity>? questionResponseBriefEntity;
  List<ObservationBriefEntity>? visualAcuityBreifEntity;
  List<ImageBriefEntity>? imageBriefEntity;
  Severity? cumulativeSeverity;
  Severity? observationSeverity;
  Severity? mediaSeverity;
  Severity? questionResponseSeverity;

  TriageReportDetailedEntity({
    this.cumulativeSeverity,
    this.observationSeverity,
    this.mediaSeverity,
    this.questionResponseSeverity,
    required this.diagnosticReportId,
    this.triageResultDescription,
    this.questionResultDescription,
    this.observationResultDescription,
    this.mediaResultDescription,
    required this.patientId,
    required this.patientName,
    this.patientImage,
    required this.assessmentID,
    this.reportDate,
    this.icompleteTests,
    this.questionResponseBriefEntity,
    this.visualAcuityBreifEntity,
    this.imageBriefEntity,
  });
}

class QuestionResponseBriefEntity {
  final String question;

  final String response;

  const QuestionResponseBriefEntity({
    required this.question,
    required this.response,
  });
}

class ObservationBriefEntity {
  final double observationValue;
  final int observationId;
  final int observationValueIdentifier;
  String? bodySite;
  String? code;
  ObservationBriefEntity({
    required this.observationValue,
    required this.observationId,
    required this.observationValueIdentifier,
    this.bodySite,
    this.code,
  });

   @override
  String toString() {
    return 'ObservationBriefEntity(observationValue: $observationValue, observationId: $observationId, observationValueIdentifier: $observationValueIdentifier, bodySite: $bodySite, code: $code)';
  }
}

class ImageBriefEntity {
  final String imageUrl;
  final int imageId;
  final int imageIdentifier;
  final String bodySite;
  const ImageBriefEntity({
    required this.imageUrl,
    required this.imageId,
    required this.imageIdentifier,
    required this.bodySite,
  });
}
