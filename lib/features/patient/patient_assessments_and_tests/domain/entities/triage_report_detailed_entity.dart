import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';

class TriageReportDetailedEntity {
  final String patientId;
  final String patientName;
  final String patientImage;
  final String assessmentID;
  final String reportDate;
  String? triageResultDescription;
  String? questionResultDescription;
  String? observationResultDescription;
  String? mediaResultDescription;
  RequestPriority? overallpriority;
  RequestPriority? quessionnairepriority;
  RequestPriority? observationpriority;
  RequestPriority? mediapriority;
  List<IncompleteTestModel>? icompleteTests;

  final List<QuestionResponseBriefEntity> questionResponseBriefEntity;
  final List<ObservationBriefEntity> visualAcuityBreifEntity;
  final List<ImageBriefEntity> imageBriefEntity;
  Severity? cumulativeSeverity;
  Severity? observationSeverity;
  Severity? mediaSeverity;
  Severity? questionResponseSeverity;

  TriageReportDetailedEntity({
    this.cumulativeSeverity,
    this.observationSeverity,
    this.mediaSeverity,
    this.questionResponseSeverity,
    this.triageResultDescription,
    this.questionResultDescription,
    this.observationResultDescription,
    this.mediaResultDescription,
    required this.patientId,
    required this.patientName,
    required this.patientImage,
    required this.assessmentID,
    this.overallpriority,
    this.quessionnairepriority,
    this.observationpriority,
    this.mediapriority,
    required this.reportDate,
    this.icompleteTests,
    required this.questionResponseBriefEntity,
    required this.visualAcuityBreifEntity,
    required this.imageBriefEntity,
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
  final String bodySite;
  const ObservationBriefEntity({
    required this.observationValue,
    required this.observationId,
    required this.observationValueIdentifier,
    required this.bodySite,
  });
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
