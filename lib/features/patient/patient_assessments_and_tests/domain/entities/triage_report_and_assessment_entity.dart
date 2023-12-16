import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/request_priority.dart';

class TriageReportDetailedEntity {
  final String patientId;
  final String patientName;
  final String patientImage;
  final String assessmentID;
  final RequestPriority priority;
  final String reportDate;
  final String triageResultDescription;
  final String questionResultDescription;
  final String observationResultDescription;
  final String mediaResultDescription;

  final List<QuestionResponseBriefEntity> questionResponseBriefEntity;
  final List<ObservationBriefEntity> visualAcuityBreifEntity;
  final List<ImageBriefEntity> imageBriefEntity;

  TriageReportDetailedEntity({ 
    required this.triageResultDescription,
  required  this.questionResultDescription,
  required  this.observationResultDescription, 
  required this.mediaResultDescription,
    required this.patientId,
    required this.patientName,
    required this.patientImage,
    required this.assessmentID,
    required this.priority,
    required this.reportDate,
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
