import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/assessment_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/condition.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/organ.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'enums/action_type.dart';
import 'enums/constraint.dart';
import 'enums/disabled_display.dart';
import 'enums/enable_behaviour.dart';
import 'enums/media_type.dart';
import 'enums/operator.dart';
import 'enums/value_type.dart';

part 'triage_assessment_model.freezed.dart';
part 'triage_assessment_model.g.dart';

@freezed
class TriageAssessmentModel with _$TriageAssessmentModel {
  const factory TriageAssessmentModel({
    int? id,
    String? name,
    String? organizationCode,
    Condition? condition,
    AssessmentType? assessmentType,
    Organ? organ,
    List<QuestionnaireSectionsResponseModel>?
        questionnaireSectionsResponseDTOList,
    List<MediaListSectionResponseModel>? mediaListSectionResponseDTOList,
    List<ObservationSetSectionResponseModel>?
        observationSetSectionResponseDTOList,
  }) = _TriageAssessmentModel;

  factory TriageAssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$TriageAssessmentModelFromJson(json);
}

///////////////////////////////////////////////////////////////////

@freezed
class QuestionnaireSectionsResponseModel
    with _$QuestionnaireSectionsResponseModel {
  const factory QuestionnaireSectionsResponseModel({
    int? id,
    int? index,
    String? description,
    QuestionnaireSectionModel? supersection,
    List<QuestionnaireResponseModel>? questionnaireResponseDTOList,
  }) = _QuestionnaireSectionsResponseModel;

  factory QuestionnaireSectionsResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$QuestionnaireSectionsResponseModelFromJson(json);
}

@freezed
class QuestionnaireSectionModel with _$QuestionnaireSectionModel {
  const factory QuestionnaireSectionModel({
    int? id,
    int? index,
    String? description,
    QuestionnaireModel? questionnaire,
    AssessmentModel? assessment,
  }) = _QuestionnaireSectionModel;

  factory QuestionnaireSectionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireSectionModelFromJson(json);
}

@freezed
class AssessmentModel with _$AssessmentModel {
  const factory AssessmentModel({
    int? id,
    String? name,
    String? organizationCode,
    Condition? condition,
    AssessmentType? assessmentType,
    Organ? organ,
    String? version,
  }) = _AssessmentModel;

  factory AssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentModelFromJson(json);
}

@freezed
class QuestionnaireModel with _$QuestionnaireModel {
  const factory QuestionnaireModel({
    int? id,
    String? name,
    String? description,
    String? version,
    @TimestampConverter() DateTime? approvalDate,
    @TimestampConverter() DateTime? lastReviewDate,
    @TimestampConverter() DateTime? effectiveFrom,
    @TimestampConverter() DateTime? effectiveTill,
    @TimestampConverter() DateTime? creationDate,
    @TimestampConverter() DateTime? lastModifiedDate,
    int? publisherCode,
    String? publisherType,
  }) = _QuestionnaireModel;

  factory QuestionnaireModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireModelFromJson(json);
}

@freezed
class QuestionnaireResponseModel with _$QuestionnaireResponseModel {
  const factory QuestionnaireResponseModel({
    int? id,
    String? name,
    String? description,
    String? version,
    @TimestampConverter() DateTime? approvalDate,
    @TimestampConverter() DateTime? lastReviewDate,
    @TimestampConverter() DateTime? effectiveFrom,
    @TimestampConverter() DateTime? effectiveTill,
    @TimestampConverter() DateTime? creationDate,
    @TimestampConverter() DateTime? lastModifiedDate,
    int? publisherCode,
    String? publisherType,
    List<QuestionResponseModel>? questionResponseDTO,
  }) = _QuestionnaireResponseModel;

  factory QuestionnaireResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponseModelFromJson(json);
}

@freezed
class QuestionResponseModel with _$QuestionResponseModel {
  const factory QuestionResponseModel({
    int? id,
    String? definition,
    Constraint? constraint,
    String? defaultValue,
    EnableBehaviour? enableBehaviour,
    int? maxLength,
    DisabledDisplay? disabledDisplay,
    String? prefix,
    int? weight,
    String? image,
    List<ActionOnResponseModel>? actionOnResponseDTO,
    bool? readOnly,
    bool? required,
  }) = _QuestionResponseModel;

  factory QuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseModelFromJson(json);
}

@freezed
class ActionOnResponseModel with _$ActionOnResponseModel {
  const factory ActionOnResponseModel({
    int? id,
    Operator? operator,
    String? answer,
    ActionType? actionType,
  }) = _ActionOnResponseModel;

  factory ActionOnResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ActionOnResponseModelFromJson(json);
}

@freezed
class MediaListSectionResponseModel with _$MediaListSectionResponseModel {
  const factory MediaListSectionResponseModel({
    int? id,
    int? index,
    String? description,
    MediaListSectionModel? supersection,
    List<MediaListResponseModel>? mediaListResponseDTOList,
  }) = _MediaListSectionResponseModel;

  factory MediaListSectionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MediaListSectionResponseModelFromJson(json);
}

@freezed
class MediaListResponseModel with _$MediaListResponseModel {
  const factory MediaListResponseModel({
    int? id,
    String? name,
    String? version,
    String? description,
    @TimestampConverter() DateTime? creationDate,
    List<MediaResponseModel>? mediaResponseDTOList,
  }) = _MediaListResponseModel;

  factory MediaListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MediaListResponseModelFromJson(json);
}

@freezed
class MediaResponseModel with _$MediaResponseModel {
  const factory MediaResponseModel({
    int? id,
    String? name,
    String? description,
    MediaType? type,
    int? maxSize,
    String? fileType,
  }) = _MediaResponseModel;

  factory MediaResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MediaResponseModelFromJson(json);
}

@freezed
class ObservationSetSectionResponseModel
    with _$ObservationSetSectionResponseModel {
  const factory ObservationSetSectionResponseModel({
    int? id,
    int? index,
    String? description,
    List<ObservationSetResponseModel>? observationSetResponseDTOList,
    ObservationSetSectionModel? supersection,
  }) = _ObservationSetSectionResponseModel;

  factory ObservationSetSectionResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$ObservationSetSectionResponseModelFromJson(json);
}

@freezed
class ObservationSetResponseModel with _$ObservationSetResponseModel {
  const factory ObservationSetResponseModel({
    int? id,
    String? name,
    String? version,
    String? description,
    @TimestampConverter() DateTime? creationDate,
    ObservationResponseModel? observationResponseDTO,
    List<ObservationResponseModel>? observationResponseDTOList,
  }) = _ObservationSetResponseModel;

  factory ObservationSetResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationSetResponseModelFromJson(json);
}




@freezed
class ObservationResponseModel with _$ObservationResponseModel {
  const factory ObservationResponseModel({
    int? id,
    String? name,
    ValueType? valueType,
    String? hiThreshold,
    String? loThreshold,
    @TimestampConverter() DateTime? creationDate,
    String? configs,
    double? weightage,
  }) = _ObservationResponseModel;

  factory ObservationResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationResponseModelFromJson(json);
}

@freezed
class ObservationSetSectionModel with _$ObservationSetSectionModel {
  const factory ObservationSetSectionModel({
    int? id,
    int? index,
    String? description,
    ObservationSetModel? observationSet,
    AssessmentModel? assessment,
  }) = _ObservationSetSectionModel;

  factory ObservationSetSectionModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationSetSectionModelFromJson(json);
}

@freezed
class ObservationSetModel with _$ObservationSetModel {
  const factory ObservationSetModel({
    int? id,
    String? name,
    String? version,
    String? description,
    @TimestampConverter() DateTime? creationDate,
  }) = _ObservationSetModel;

  factory ObservationSetModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationSetModelFromJson(json);
}

@freezed
class MediaListSectionModel with _$MediaListSectionModel {
  const factory MediaListSectionModel({
    int? id,
    int? index,
    String? description,
    MediaListModel? mediaList,
    AssessmentModel? assessment,
  }) = _MediaListSectionModel;

  factory MediaListSectionModel.fromJson(Map<String, dynamic> json) =>
      _$MediaListSectionModelFromJson(json);
}

@freezed
class MediaListModel with _$MediaListModel {
  const factory MediaListModel({
    int? id,
    String? name,
    String? version,
    String? description,
    @TimestampConverter() DateTime? creationDate,
  }) = _MediaListModel;

  factory MediaListModel.fromJson(Map<String, dynamic> json) =>
      _$MediaListModelFromJson(json);
}


///////////////////////////////////////////////////////////////////



















