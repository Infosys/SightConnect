import 'package:eye_care_for_all/core/models/timestamp_converter.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/action_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/answer_constraint.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/body_site.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/category.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/disabled_display.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/enable_behaviour.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/file_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/jurisdiction.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/media_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/observation_category.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/observation_code.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/observations_method.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/operator.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/permitted_data_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/permitted_unit.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/questionnaire_code.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/questionnaire_status.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/questionnaire_type.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/range_category.dart';
import 'package:eye_care_for_all/features/common_features/triage/domain/models/enums/test_code.dart';
import 'package:eye_care_for_all/features/patient/patient_profile/domain/models/enums/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'triage_diagnostic_report_template_FHIR_model.freezed.dart';
part 'triage_diagnostic_report_template_FHIR_model.g.dart';

@freezed
class DiagnosticReportTemplateFHIRModel
    with _$DiagnosticReportTemplateFHIRModel {
  const factory DiagnosticReportTemplateFHIRModel(
          {int? id,
          String? name,
          int? organizationCode,
          Category? category,
          BodySite? bodySite,
          TestCode? code,
          String? version,
          ImagingStudyFHIRModel? study,
          ObservationDefinitionFHIRModel? observations,
          QuestionnaireFHIRModel? questionnaire,
          List<ObservationValueWeightModel>? observationValueWeight}) =
      _DiagnosticReportTemplateFHIRModel;

  factory DiagnosticReportTemplateFHIRModel.fromJson(
          Map<String, dynamic> json) =>
      _$DiagnosticReportTemplateFHIRModelFromJson(json);
}

// -------------------------------------------------------------------------------

@freezed
class ImagingStudyFHIRModel with _$ImagingStudyFHIRModel {
  const factory ImagingStudyFHIRModel({
    int? id,
    String? description,
    List<ImagingSelectionTemplateFHIRModel>? imagingSelectionTemplate,
    List<LanguageBasedTextModel>? languageBasedText,
  }) = _ImagingStudyFHIRModel;

  factory ImagingStudyFHIRModel.fromJson(Map<String, dynamic> json) =>
      _$ImagingStudyFHIRModelFromJson(json);
}

// ----------------------------------------------------------------------------------------

@freezed
class ImagingSelectionTemplateFHIRModel
    with _$ImagingSelectionTemplateFHIRModel {
  const factory ImagingSelectionTemplateFHIRModel(
          {int? id,
          String? name,
          String? description,
          MediaType? type,
          int? maxSize,
          FileType? fileType,
          List<RelatedImageFHIRModel>? relatedImage}) =
      _ImagingSelectionTemplateFHIRModel;

  factory ImagingSelectionTemplateFHIRModel.fromJson(
          Map<String, dynamic> json) =>
      _$ImagingSelectionTemplateFHIRModelFromJson(json);
}

// ----------------------------------------------------------------------------------------

@freezed
class RelatedImageFHIRModel with _$RelatedImageFHIRModel {
  const factory RelatedImageFHIRModel(
      {int? id,
      String? imageTitle,
      String? url,
      FileType? filetype}) = _RelatedImageFHIRModel;

  factory RelatedImageFHIRModel.fromJson(Map<String, dynamic> json) =>
      _$RelatedImageFHIRModelFromJson(json);
}

// ---------------------------------------------------------------------------------------------

@freezed
class ObservationDefinitionFHIRModel with _$ObservationDefinitionFHIRModel {
  const factory ObservationDefinitionFHIRModel({
    int? id,
    String? name,
    ObservationCategory? category,
    BodySite? bodySite,
    ObservationCode? code,
    ObservationMethod? method,
    Jurisdiction? jurisdiction,
    List<ObservationDefinitionModel>? observationDefinition,
    List<DataComponentFHIRModel>? dataComponent,
    List<RelatedImageFHIRModel>? relatedImage,
    List<QualifiedValueModel>? qualifiedValue,
    List<LanguageBasedTextModel>? languageBasedText,
  }) = _ObservationDefinitionFHIRModel;

  factory ObservationDefinitionFHIRModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationDefinitionFHIRModelFromJson(json);
}

// ------------------------------------------------------------------------------------------------------

@freezed
class ObservationDefinitionModel with _$ObservationDefinitionModel {
  const factory ObservationDefinitionModel({
    int? id,
    String? name,
    String? description,
    ObservationCategory? category,
    ObservationCode? code,
    BodySite? bodySite,
    ObservationMethod? method,
    Jurisdiction? jurisdiction,
  }) = _ObservationDefinitionModel;

  factory ObservationDefinitionModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationDefinitionModelFromJson(json);
}

// -----------------------------------------------------------------------------------------------------------------

@freezed
class DataComponentFHIRModel with _$DataComponentFHIRModel {
  const factory DataComponentFHIRModel({
    int? id,
    PermittedDataType? permittedDataType,
    PermittedUnit? permittedUnit,
    List<QualifiedValueModel>? qualifiedValue,
  }) = _DataComponentFHIRModel;

  factory DataComponentFHIRModel.fromJson(Map<String, dynamic> json) =>
      _$DataComponentFHIRModelFromJson(json);
}

// ------------------------------------------------------------------------------------------------------------

@freezed
class QualifiedValueModel with _$QualifiedValueModel {
  const factory QualifiedValueModel({
    int? id,
    bool? isRange,
    String? value,
    RangeCategory? rangeCategory,
    Gender? gender,
    RangeModel? range,
    ObservationDefinitionModel? observationDefinition,
    DataComponentModel? dataComponent,
  }) = _QualifiedValueModel;

  factory QualifiedValueModel.fromJson(Map<String, dynamic> json) =>
      _$QualifiedValueModelFromJson(json);
}

// ----------------------------------------------------------------------------------------------------------------

@freezed
class RangeModel with _$RangeModel {
  const factory RangeModel({int? id, double? low, double? high}) = _RangeModel;

  factory RangeModel.fromJson(Map<String, dynamic> json) =>
      _$RangeModelFromJson(json);
}

// --------------------------------------------------------------------------------------------------------------------

@freezed
class DataComponentModel with _$DataComponentModel {
  const factory DataComponentModel({
    int? id,
    PermittedDataType? permittedDataType,
    PermittedUnit? permittedUnit,
    ObservationDefinitionModel? observationDefinition,
  }) = _DataComponentModel;

  factory DataComponentModel.fromJson(Map<String, dynamic> json) =>
      _$DataComponentModelFromJson(json);
}

// -------------------------------------------------------------------------------------------------------------

@freezed
class QuestionnaireFHIRModel with _$QuestionnaireFHIRModel {
  const factory QuestionnaireFHIRModel({
    int? id,
    String? name,
    String? title,
    QuestionnaireStatus? status,
    bool? experimental,
    @TimestampConverter() DateTime? date,
    String? description,
    Jurisdiction? jurisdiction,
    String? publisher,
    String? purpose,
    QuestionnaireCode? code,
    String? version,
    @TimestampConverter() DateTime? lastReviewDate,
    @TimestampConverter() DateTime? approvalDate,
    @TimestampConverter() DateTime? creationDate,
    @TimestampConverter() DateTime? lastModifiedDate,
    @TimestampConverter() DateTime? publisherCode,
    String? publisherType,
    QuestionnaireModel? questionnaire,
    List<QuestionnaireItemFHIRModel>? questionnaireItem,
  }) = _QuestionnaireFHIRModel;

  factory QuestionnaireFHIRModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireFHIRModelFromJson(json);
}

// -------------------------------------------------------------------------------------

@freezed
class QuestionnaireModel with _$QuestionnaireModel {
  const factory QuestionnaireModel({
    int? id,
    String? name,
    String? title,
    QuestionnaireStatus? status,
    bool? experimental,
    @TimestampConverter() DateTime? date,
    String? description,
    Jurisdiction? jurisdiction,
    String? publisher,
    String? purpose,
    QuestionnaireCode? code,
    String? version,
    @TimestampConverter() DateTime? lastReviewDate,
    @TimestampConverter() DateTime? approvalDate,
    @TimestampConverter() DateTime? creationDate,
    @TimestampConverter() DateTime? lastModifiedDate,
    @TimestampConverter() DateTime? publisherCode,
    String? publisherType,
  }) = _QuestionnaireModel;

  factory QuestionnaireModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireModelFromJson(json);
}

// --------------------------------------------------------------------------------------------------------

@freezed
class QuestionnaireItemFHIRModel with _$QuestionnaireItemFHIRModel {
  const factory QuestionnaireItemFHIRModel({
    int? id,
    String? linkId,
    String? prefix,
    String? text,
    QuestionnaireType? type,
    EnableBehaviour? enableBehaviour,
    bool? required,
    bool? repeats,
    bool? readOnly,
    int? maxlength,
    DisabledDisplay? disabledDisplay,
    AnswerConstraint? answerConstraint,
    AnswerValueSetModel? ansewrValueSet,
    AnswerModel? initial,
    QuestionnaireModel? questionnaire,
    QuestionnaireItemModel? questionnaireItem,
    List<ActionOnModel>? actionOn,
    List<AnswerOptionModel>? answerOption,
    List<EnableWhenModel>? enableWhen,
    List<AnswerItemWeightModel>? answerItemWeight,
    List<RelatedImageFHIRModel>? relatedImage,
  }) = _QuestionnaireItemFHIRModel;

  factory QuestionnaireItemFHIRModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireItemFHIRModelFromJson(json);
}

// --------------------------------------------------------------------------------------------------------

@freezed
class AnswerOptionModel with _$AnswerOptionModel {
  const factory AnswerOptionModel({
    int? id,
    bool? initialSelected,
    AnswerModel? answer,
    QuestionnaireItemModel? questionnaireItem,
  }) = _AnswerOptionModel;

  factory AnswerOptionModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerOptionModelFromJson(json);
}

// -----------------------------------------------------------------------------------------------

@freezed
class AnswerValueSetModel with _$AnswerValueSetModel {
  const factory AnswerValueSetModel({int? id, int? valueId, String? value}) =
      _AnswerValueSetModel;

  factory AnswerValueSetModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerValueSetModelFromJson(json);
}

// -----------------------------------------------------------------------------------------------------------

@freezed
class AnswerModel with _$AnswerModel {
  const factory AnswerModel({
    int? id,
    bool? answerBoolean,
    double? answerDecimal,
    int? answerInteger,
    @TimestampConverter() DateTime? answerDateTime,
    @TimestampConverter() DateTime? answerTime,
    String? answerString,
    AnswerItemWeightModel? answerItemWeight,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);
}

// ----------------------------------------------------------------------------------------------------------------------

@freezed
class AnswerItemWeightModel with _$AnswerItemWeightModel {
  const factory AnswerItemWeightModel(
          {int? id,
          double? value,
          int? answerId,
          QuestionResponseWeightModel? questionResponseWeight}) =
      _AnswerItemWeightModel;

  factory AnswerItemWeightModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerItemWeightModelFromJson(json);
}

// -----------------------------------------------------------------------------------------------------------------------------

@freezed
class QuestionResponseWeightModel with _$QuestionResponseWeightModel {
  const factory QuestionResponseWeightModel(
      {int? id,
      int? quesId,
      bool? isRange,
      bool? isCompare,
      bool? isAbsolute}) = _QuestionResponseWeightModel;

  factory QuestionResponseWeightModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseWeightModelFromJson(json);
}

// -----------------------------------------------------------------------------------------------------------------------------

@freezed
class QuestionnaireItemModel with _$QuestionnaireItemModel {
  const factory QuestionnaireItemModel(
      {int? id,
      String? linkId,
      String? prefix,
      String? text,
      QuestionnaireType? type,
      EnableBehaviour? enableBehaviour,
      bool? isRequired,
      bool? repeats,
      bool? readOnly,
      int? maxlength,
      DisabledDisplay? disabledDisplay,
      AnswerConstraint? answerConstraint,
      AnswerValueSetModel? ansewrValueSet,
      AnswerModel? initial,
      QuestionnaireModel? questionnaire}) = _QuestionnaireItemModel;

  factory QuestionnaireItemModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireItemModelFromJson(json);
}

// -------------------------------------------------------------------------------------------

@freezed
class ActionOnModel with _$ActionOnModel {
  const factory ActionOnModel({
    int? id,
    Operator? operator,
    ActionType? actionType,
    AnswerModel? answer,
    QuestionnaireItemModel? questionnaireItem,
  }) = _ActionOnModel;

  factory ActionOnModel.fromJson(Map<String, dynamic> json) =>
      _$ActionOnModelFromJson(json);
}

// -------------------------------------------------------------------------------------------------

@freezed
class EnableWhenModel with _$EnableWhenModel {
  const factory EnableWhenModel({
    int? id,
    String? question,
    Operator? operator,
    AnswerModel? answer,
    QuestionnaireItemModel? questionnaireItem,
  }) = _EnableWhenModel;

  factory EnableWhenModel.fromJson(Map<String, dynamic> json) =>
      _$EnableWhenModelFromJson(json);
}

// -----------------------------------------------------------------------------------------------------------

@freezed
class LanguageBasedTextModel with _$LanguageBasedTextModel {
  const factory LanguageBasedTextModel(
      {int? id,
      String? textId,
      int? langId,
      String? textValue,
      bool? isDefault}) = _LanguageBasedTextModel;

  factory LanguageBasedTextModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageBasedTextModelFromJson(json);
}

// --------------------------------------------------------------------------------------------------------------

@freezed
class ObservationValueWeightModel with _$ObservationValueWeightModel {
  const factory ObservationValueWeightModel(
      {int? id,
      int? observationId,
      int? organizationId,
      double? value}) = _ObservationValueWeightModel;

  factory ObservationValueWeightModel.fromJson(Map<String, dynamic> json) =>
      _$ObservationValueWeightModelFromJson(json);
}
