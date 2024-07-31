import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/data/model/triage_detailed_report_model.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/entities/triage_report_detailed_entity.dart';
import 'package:eye_care_for_all/apps/sightconnect/features/patient/patient_assessments_and_tests/domain/enum/severity.dart';

class AssessmentAndTriageReportDetailedEntity {
  String? patientImage;
  final int assessmentID;
  DateTime? reportDate;
  String? triageResultDescription;
  String? questionResultDescription;
  String? observationResultDescription;
  String? mediaResultDescription;
  List<IncompleteTestModel>? icompleteTests;
  List<CarePlan>? carePlans;
  List<QuestionResponseBriefEntity>? questionResponseBriefEntity;
  List<ObservationBriefEntity>? visualAcuityBreifEntity;
  List<ImageBriefEntity>? imageBriefEntity;
  Severity? cumulativeSeverity;
  Severity? observationSeverity;
  Severity? mediaSeverity;
  Severity? questionResponseSeverity;
  int? visionCenterId;
  String? remarks;

  AssessmentAndTriageReportDetailedEntity({
    this.cumulativeSeverity,
    this.observationSeverity,
    this.mediaSeverity,
    this.questionResponseSeverity,
    this.triageResultDescription,
    this.questionResultDescription,
    this.observationResultDescription,
    this.mediaResultDescription,
    this.patientImage,
    this.carePlans,
    required this.assessmentID,
    this.reportDate,
    this.icompleteTests,
    this.questionResponseBriefEntity,
    this.visualAcuityBreifEntity,
    this.imageBriefEntity,
    this.visionCenterId,
    this.remarks,
  });

  Map<String, dynamic> toJson() {
    return {
      "assessmentID": assessmentID,
      "triageResultDescription": triageResultDescription,
      "questionResultDescription": questionResultDescription,
      "carePlans": carePlans,
      "observationResultDescription": observationResultDescription,
      "mediaResultDescription": mediaResultDescription,
      "patientImage": patientImage,
      "reportDate": reportDate,
      "icompleteTests": icompleteTests,
      "questionResponseBriefEntity": questionResponseBriefEntity,
      "visualAcuityBreifEntity": visualAcuityBreifEntity,
      "imageBriefEntity": imageBriefEntity,
      "cumulativeSeverity": cumulativeSeverity,
      "observationSeverity": observationSeverity,
      "mediaSeverity": mediaSeverity,
      "questionResponseSeverity": questionResponseSeverity,
      "visionCenterId": visionCenterId,
      "remarks": remarks
    };
  }
}
