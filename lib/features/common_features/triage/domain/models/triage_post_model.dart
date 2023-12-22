import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/performer_role.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/source.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/service_type.dart';
import 'package:eye_care_for_all/features/patient/patient_assessments_and_tests/domain/enum/test_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'triage_post_model.freezed.dart';
part 'triage_post_model.g.dart';


@freezed
class TriagePostModel with _$TriagePostModel {
  const factory TriagePostModel({
    int? patientId,
    int ? encounterId,
    ServiceType ? serviceType,
    int? organizationCode,
    List<Performer>? performer,
    int? assessmentCode,
    String? assessmentVersion,
    @TimestampConverter() DateTime ?  issued,
    @TimestampConverter() DateTime ? userStartDate,
    Source? source,
    String? sourceVersion,
    List<PostIncompleteTestModel>? incompleteSection,
    int? cummulativeScore,
    List<Map<String, double> >? score,
    List<PostTriageImagingSelectionModel>? imagingSelection,
    List<PostTriageObservationsModel>? observations,
    List<PostTriageQuestionModel>? questionResponse,
  }) = _TriagePostModel;

  factory TriagePostModel.fromJson(Map<String, dynamic> json) =>
      _$TriagePostModelFromJson(json);
}


@freezed
class PostTriageQuestionModel with _$PostTriageQuestionModel {
  const factory PostTriageQuestionModel({
    int? linkId,
    double? score,
    List<PostTriageAnswerModel>? answers,
  }) = _PostTriageQuestionModel;

  factory PostTriageQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$PostTriageQuestionModelFromJson(json);
  
}

@freezed
class PostTriageAnswerModel with _$PostTriageAnswerModel {
  const factory PostTriageAnswerModel({
    String? value,
    int? answerCode,
    double? score,
  }) = _PostTriageAnswerModel;

  factory PostTriageAnswerModel.fromJson(Map<String, dynamic> json) =>
      _$PostTriageAnswerModelFromJson(json);
}


@freezed
class Performer with _$Performer {
  const factory Performer({
    PerformerRole? role,
    int? identifier,
  }) = _Performer;

  factory Performer.fromJson(Map<String, dynamic> json) =>
      _$PerformerFromJson(json);
}

@freezed
class PostIncompleteTestModel with _$PostIncompleteTestModel {
  const factory PostIncompleteTestModel({
    TestType? testName,
  }) = _PostIncompleteTestModel;

  factory PostIncompleteTestModel.fromJson(Map<String, dynamic> json) =>
      _$PostIncompleteTestModelFromJson(json);
}


@freezed
class PostTriageObservationsModel with _$PostTriageObservationsModel {
  const factory PostTriageObservationsModel({
    int? identifier,
    String? value,
    double? score,
  }) = _PostTriageObservationsModel;

  factory PostTriageObservationsModel.fromJson(Map<String, dynamic> json) =>
      _$PostTriageObservationsModelFromJson(json);
}

@freezed
class PostTriageImagingSelectionModel with _$PostTriageImagingSelectionModel {
  const factory PostTriageImagingSelectionModel({
    int? identifier,
    String? endpoint,
    String? baseUrl,
    double? score,
    String ? fileId
  }) = _PostTriageImagingSelectionModel;

  factory PostTriageImagingSelectionModel.fromJson(Map<String, dynamic> json) =>
      _$PostTriageImagingSelectionModelFromJson(json);
}


