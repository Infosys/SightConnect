import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/source.dart';

class TriageUpdateModel {
  int? patientId;
  int? diagnosticReportId;
  int? organizationCode;
  List<Performer>? performer;
  int? assementCode;
  String? assessmentVersion;
  DateTime? issued;
  Source? source;
  String? sourceVersion;
  List<IncompleteTestModel>? incompleteSection;
  int? cummulativeScore;
  Map<String, int>? score;
  List<PatchImagingSelectionModel>? imagingSelection;
  List<PatchObservationsModel>? observations;
  List<PatchImagingSelectionModel>? questionResponse;

  TriageUpdateModel({
    this.patientId,
    this.diagnosticReportId,
    this.organizationCode,
    this.performer,
    this.assementCode,
    this.assessmentVersion,
    this.issued,
    this.source,
    this.sourceVersion,
    this.incompleteSection,
    this.cummulativeScore,
    this.score,
    this.imagingSelection,
    this.observations,
    this.questionResponse,
  });
}

class PatchQuestionResponseModel {
  int? id;
  Action? action;
  int? linkId;
  double? score;
  List<PatchAnswerModel>? answers;
  PatchQuestionResponseModel({
    this.id,
    this.action,
    this.linkId,
    this.score,
    this.answers,
  });
}

class PatchAnswerModel {
  int? id;
  Action? action;
  String? value;
  double? answerCode;
  double? score;
  PatchAnswerModel({
    this.id,
    this.action,
    this.value,
    this.answerCode,
    this.score,
  });
}

class Performer {
  PerformerRole? role;
  int? identifier;
  Performer({
    this.role,
    this.identifier,
  });
}

class IncompleteTestModel {
  TestType? testName;
  IncompleteTestModel({
    this.testName,
  });
}

class PatchObservationsModel {
  int? id;
  int? identifier;
  Action? action;
  String? value;
  double? score;
  PatchObservationsModel({
    this.id,
    this.identifier,
    this.action,
    this.value,
    this.score,
  });
}

class PatchImagingSelectionModel {
  int? id;
  int? identifier;
  Action? action;
  String? endpoint;
  String? baseUrl;
  double? score;

  PatchImagingSelectionModel({
    this.id,
    this.identifier,
    this.action,
    this.endpoint,
    this.baseUrl,
    this.score,
  });
}

enum Action { ADD, REMOVE, UPDATE }

enum TestType { QUESTIONNAIRE, OBSERVATION, IMAGE }
