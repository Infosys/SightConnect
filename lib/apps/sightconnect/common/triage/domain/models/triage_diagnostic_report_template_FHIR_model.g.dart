/*
 * Copyright 2024 Infosys Ltd.
 * Use of this source code is governed by Apache License 2.0 that can be found in the LICENSE file or at
 * http://www.apache.org/licenses/LICENSE-2.0
 */

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_diagnostic_report_template_FHIR_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiagnosticReportTemplateFHIRModelImpl
    _$$DiagnosticReportTemplateFHIRModelImplFromJson(
            Map<String, dynamic> json) =>
        _$DiagnosticReportTemplateFHIRModelImpl(
          id: (json['id'] as num?)?.toInt(),
          name: json['name'] as String?,
          organizationCode: (json['organizationCode'] as num?)?.toInt(),
          tenantCode: (json['tenantCode'] as num?)?.toInt(),
          category: $enumDecodeNullable(_$CategoryEnumMap, json['category']),
          bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
          code: $enumDecodeNullable(_$TestCodeEnumMap, json['code']),
          version: json['version'] as String?,
          study: json['study'] == null
              ? null
              : ImagingStudyFHIRModel.fromJson(
                  json['study'] as Map<String, dynamic>),
          observations: json['observations'] == null
              ? null
              : ObservationDefinitionFHIRModel.fromJson(
                  json['observations'] as Map<String, dynamic>),
          questionnaire: json['questionnaire'] == null
              ? null
              : QuestionnaireFHIRModel.fromJson(
                  json['questionnaire'] as Map<String, dynamic>),
          observationValueWeight:
              (json['observationValueWeight'] as List<dynamic>?)
                  ?.map((e) => ObservationValueWeightModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList(),
        );

Map<String, dynamic> _$$DiagnosticReportTemplateFHIRModelImplToJson(
        _$DiagnosticReportTemplateFHIRModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'organizationCode': instance.organizationCode,
      'tenantCode': instance.tenantCode,
      'category': _$CategoryEnumMap[instance.category],
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'code': _$TestCodeEnumMap[instance.code],
      'version': instance.version,
      'study': instance.study?.toJson(),
      'observations': instance.observations?.toJson(),
      'questionnaire': instance.questionnaire?.toJson(),
      'observationValueWeight':
          instance.observationValueWeight?.map((e) => e.toJson()).toList(),
    };

const _$CategoryEnumMap = {
  Category.EYE: 'EYE',
  Category.TRIAGE: 'TRIAGE',
  Category.OTHER: 'OTHER',
};

const _$BodySiteEnumMap = {
  BodySite.LEFT_EYE: 'LEFT_EYE',
  BodySite.RIGHT_EYE: 'RIGHT_EYE',
  BodySite.BOTH_EYES: 'BOTH_EYES',
};

const _$TestCodeEnumMap = {
  TestCode.EYE_TEST: 'EYE_TEST',
};

_$ImagingStudyFHIRModelImpl _$$ImagingStudyFHIRModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ImagingStudyFHIRModelImpl(
      id: (json['id'] as num?)?.toInt(),
      description: json['description'] as String?,
      imagingSelectionTemplate:
          (json['imagingSelectionTemplate'] as List<dynamic>?)
              ?.map((e) => ImagingSelectionTemplateFHIRModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      languageBasedText: (json['languageBasedText'] as List<dynamic>?)
          ?.map(
              (e) => LanguageBasedTextModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ImagingStudyFHIRModelImplToJson(
        _$ImagingStudyFHIRModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'imagingSelectionTemplate':
          instance.imagingSelectionTemplate?.map((e) => e.toJson()).toList(),
      'languageBasedText':
          instance.languageBasedText?.map((e) => e.toJson()).toList(),
    };

_$ImagingSelectionTemplateFHIRModelImpl
    _$$ImagingSelectionTemplateFHIRModelImplFromJson(
            Map<String, dynamic> json) =>
        _$ImagingSelectionTemplateFHIRModelImpl(
          id: (json['id'] as num?)?.toInt(),
          name: json['name'] as String?,
          description: json['description'] as String?,
          type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']),
          maxSize: (json['maxSize'] as num?)?.toInt(),
          fileType: $enumDecodeNullable(_$FileTypeEnumMap, json['fileType']),
          relatedImage: (json['relatedImage'] as List<dynamic>?)
              ?.map((e) =>
                  RelatedImageFHIRModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ImagingSelectionTemplateFHIRModelImplToJson(
        _$ImagingSelectionTemplateFHIRModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$MediaTypeEnumMap[instance.type],
      'maxSize': instance.maxSize,
      'fileType': _$FileTypeEnumMap[instance.fileType],
      'relatedImage': instance.relatedImage?.map((e) => e.toJson()).toList(),
    };

const _$MediaTypeEnumMap = {
  MediaType.PHOTO: 'PHOTO',
  MediaType.VIDEO: 'VIDEO',
  MediaType.AUDIO: 'AUDIO',
};

const _$FileTypeEnumMap = {
  FileType.JPEG: 'JPEG',
  FileType.PNG: 'PNG',
  FileType.BMP: 'BMP',
  FileType.MP3: 'MP3',
  FileType.WAV: 'WAV',
  FileType.MP4: 'MP4',
  FileType.AVI: 'AVI',
  FileType.PDF: 'PDF',
  FileType.DOC: 'DOC',
  FileType.JPG: 'JPG',
};

_$RelatedImageFHIRModelImpl _$$RelatedImageFHIRModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RelatedImageFHIRModelImpl(
      id: (json['id'] as num?)?.toInt(),
      imageTitle: json['imageTitle'] as String?,
      url: json['url'] as String?,
      filetype: $enumDecodeNullable(_$FileTypeEnumMap, json['filetype']),
    );

Map<String, dynamic> _$$RelatedImageFHIRModelImplToJson(
        _$RelatedImageFHIRModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageTitle': instance.imageTitle,
      'url': instance.url,
      'filetype': _$FileTypeEnumMap[instance.filetype],
    };

_$ObservationDefinitionFHIRModelImpl
    _$$ObservationDefinitionFHIRModelImplFromJson(Map<String, dynamic> json) =>
        _$ObservationDefinitionFHIRModelImpl(
          id: (json['id'] as num?)?.toInt(),
          name: json['name'] as String?,
          category: $enumDecodeNullable(
              _$ObservationCategoryEnumMap, json['category']),
          bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
          code: $enumDecodeNullable(_$ObservationCodeEnumMap, json['code']),
          method:
              $enumDecodeNullable(_$ObservationMethodEnumMap, json['method']),
          jurisdiction:
              $enumDecodeNullable(_$JurisdictionEnumMap, json['jurisdiction']),
          observationDefinition:
              (json['observationDefinition'] as List<dynamic>?)
                  ?.map((e) => ObservationDefinitionModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList(),
          dataComponent: (json['dataComponent'] as List<dynamic>?)
              ?.map((e) =>
                  DataComponentFHIRModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          relatedImage: (json['relatedImage'] as List<dynamic>?)
              ?.map((e) =>
                  RelatedImageFHIRModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          qualifiedValue: (json['qualifiedValue'] as List<dynamic>?)
              ?.map((e) =>
                  QualifiedValueModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          languageBasedText: (json['languageBasedText'] as List<dynamic>?)
              ?.map((e) =>
                  LanguageBasedTextModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$ObservationDefinitionFHIRModelImplToJson(
        _$ObservationDefinitionFHIRModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': _$ObservationCategoryEnumMap[instance.category],
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'code': _$ObservationCodeEnumMap[instance.code],
      'method': _$ObservationMethodEnumMap[instance.method],
      'jurisdiction': _$JurisdictionEnumMap[instance.jurisdiction],
      'observationDefinition':
          instance.observationDefinition?.map((e) => e.toJson()).toList(),
      'dataComponent': instance.dataComponent?.map((e) => e.toJson()).toList(),
      'relatedImage': instance.relatedImage?.map((e) => e.toJson()).toList(),
      'qualifiedValue':
          instance.qualifiedValue?.map((e) => e.toJson()).toList(),
      'languageBasedText':
          instance.languageBasedText?.map((e) => e.toJson()).toList(),
    };

const _$ObservationCategoryEnumMap = {
  ObservationCategory.Social: 'Social',
  ObservationCategory.History: 'History',
  ObservationCategory.Vital: 'Vital',
  ObservationCategory.Signs: 'Signs',
  ObservationCategory.Imaging: 'Imaging',
  ObservationCategory.Laboratory: 'Laboratory',
  ObservationCategory.Procedure: 'Procedure',
  ObservationCategory.Survey: 'Survey',
  ObservationCategory.Exam: 'Exam',
  ObservationCategory.Therapy: 'Therapy',
  ObservationCategory.Activity: 'Activity',
};

const _$ObservationCodeEnumMap = {
  ObservationCode.Eye: 'Eye',
  ObservationCode.Sight: 'Sight',
  ObservationCode.Testing: 'Testing',
  ObservationCode.LOGMAR_NEAR: 'LOGMAR_NEAR',
  ObservationCode.LOGMAR_DISTANT: 'LOGMAR_DISTANT',
};

const _$ObservationMethodEnumMap = {
  ObservationMethod.Limited: 'Limited',
  ObservationMethod.Eye: 'Eye',
  ObservationMethod.Examination: 'Examination',
};

const _$JurisdictionEnumMap = {
  Jurisdiction.ALL: 'ALL',
  Jurisdiction.INDIA: 'INDIA',
};

_$ObservationDefinitionModelImpl _$$ObservationDefinitionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ObservationDefinitionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      category:
          $enumDecodeNullable(_$ObservationCategoryEnumMap, json['category']),
      code: $enumDecodeNullable(_$ObservationCodeEnumMap, json['code']),
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
      method: $enumDecodeNullable(_$ObservationMethodEnumMap, json['method']),
      jurisdiction:
          $enumDecodeNullable(_$JurisdictionEnumMap, json['jurisdiction']),
    );

Map<String, dynamic> _$$ObservationDefinitionModelImplToJson(
        _$ObservationDefinitionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': _$ObservationCategoryEnumMap[instance.category],
      'code': _$ObservationCodeEnumMap[instance.code],
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'method': _$ObservationMethodEnumMap[instance.method],
      'jurisdiction': _$JurisdictionEnumMap[instance.jurisdiction],
    };

_$DataComponentFHIRModelImpl _$$DataComponentFHIRModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DataComponentFHIRModelImpl(
      id: (json['id'] as num?)?.toInt(),
      permittedDataType: $enumDecodeNullable(
          _$PermittedDataTypeEnumMap, json['permittedDataType']),
      permittedUnit:
          $enumDecodeNullable(_$PermittedUnitEnumMap, json['permittedUnit']),
      qualifiedValue: (json['qualifiedValue'] as List<dynamic>?)
          ?.map((e) => QualifiedValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataComponentFHIRModelImplToJson(
        _$DataComponentFHIRModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'permittedDataType':
          _$PermittedDataTypeEnumMap[instance.permittedDataType],
      'permittedUnit': _$PermittedUnitEnumMap[instance.permittedUnit],
      'qualifiedValue':
          instance.qualifiedValue?.map((e) => e.toJson()).toList(),
    };

const _$PermittedDataTypeEnumMap = {
  PermittedDataType.Quantity: 'Quantity',
  PermittedDataType.String: 'String',
  PermittedDataType.Boolean: 'Boolean',
  PermittedDataType.Integer: 'Integer',
  PermittedDataType.Range: 'Range',
  PermittedDataType.Ratio: 'Ratio',
  PermittedDataType.Time: 'Time',
  PermittedDataType.DateTime: 'DateTime',
  PermittedDataType.Period: 'Period',
};

const _$PermittedUnitEnumMap = {
  PermittedUnit.Cm: 'Cm',
  PermittedUnit.Number: 'Number',
};

_$QualifiedValueModelImpl _$$QualifiedValueModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QualifiedValueModelImpl(
      id: (json['id'] as num?)?.toInt(),
      isRange: json['isRange'] as bool?,
      value: json['value'] as String?,
      rangeCategory:
          $enumDecodeNullable(_$RangeCategoryEnumMap, json['rangeCategory']),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
      range: json['range'] == null
          ? null
          : RangeModel.fromJson(json['range'] as Map<String, dynamic>),
      observationDefinition: json['observationDefinition'] == null
          ? null
          : ObservationDefinitionModel.fromJson(
              json['observationDefinition'] as Map<String, dynamic>),
      dataComponent: json['dataComponent'] == null
          ? null
          : DataComponentModel.fromJson(
              json['dataComponent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QualifiedValueModelImplToJson(
        _$QualifiedValueModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isRange': instance.isRange,
      'value': instance.value,
      'rangeCategory': _$RangeCategoryEnumMap[instance.rangeCategory],
      'gender': _$GenderEnumMap[instance.gender],
      'range': instance.range?.toJson(),
      'observationDefinition': instance.observationDefinition?.toJson(),
      'dataComponent': instance.dataComponent?.toJson(),
    };

const _$RangeCategoryEnumMap = {
  RangeCategory.Reference: 'Reference',
  RangeCategory.Critical: 'Critical',
  RangeCategory.Absolute: 'Absolute',
};

const _$GenderEnumMap = {
  Gender.MALE: 'MALE',
  Gender.FEMALE: 'FEMALE',
  Gender.Male: 'Male',
  Gender.Female: 'Female',
  Gender.Other: 'Other',
  Gender.M: 'M',
  Gender.F: 'F',
  Gender.OTHER: 'OTHER',
};

_$RangeModelImpl _$$RangeModelImplFromJson(Map<String, dynamic> json) =>
    _$RangeModelImpl(
      id: (json['id'] as num?)?.toInt(),
      low: (json['low'] as num?)?.toDouble(),
      high: (json['high'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RangeModelImplToJson(_$RangeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'low': instance.low,
      'high': instance.high,
    };

_$DataComponentModelImpl _$$DataComponentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DataComponentModelImpl(
      id: (json['id'] as num?)?.toInt(),
      permittedDataType: $enumDecodeNullable(
          _$PermittedDataTypeEnumMap, json['permittedDataType']),
      permittedUnit:
          $enumDecodeNullable(_$PermittedUnitEnumMap, json['permittedUnit']),
      observationDefinition: json['observationDefinition'] == null
          ? null
          : ObservationDefinitionModel.fromJson(
              json['observationDefinition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataComponentModelImplToJson(
        _$DataComponentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'permittedDataType':
          _$PermittedDataTypeEnumMap[instance.permittedDataType],
      'permittedUnit': _$PermittedUnitEnumMap[instance.permittedUnit],
      'observationDefinition': instance.observationDefinition?.toJson(),
    };

_$QuestionnaireFHIRModelImpl _$$QuestionnaireFHIRModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireFHIRModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      title: json['title'] as String?,
      status: $enumDecodeNullable(_$QuestionnaireStatusEnumMap, json['status']),
      experimental: json['experimental'] as bool?,
      date: const TimestampConverter().fromJson(json['date'] as String?),
      description: json['description'] as String?,
      jurisdiction:
          $enumDecodeNullable(_$JurisdictionEnumMap, json['jurisdiction']),
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      code: $enumDecodeNullable(_$QuestionnaireCodeEnumMap, json['code']),
      version: json['version'] as String?,
      lastReviewDate: const TimestampConverter()
          .fromJson(json['lastReviewDate'] as String?),
      approvalDate:
          const TimestampConverter().fromJson(json['approvalDate'] as String?),
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
      lastModifiedDate: const TimestampConverter()
          .fromJson(json['lastModifiedDate'] as String?),
      publisherCode:
          const TimestampConverter().fromJson(json['publisherCode'] as String?),
      publisherType: json['publisherType'] as String?,
      questionnaire: json['questionnaire'] == null
          ? null
          : QuestionnaireModel.fromJson(
              json['questionnaire'] as Map<String, dynamic>),
      questionnaireItem: (json['questionnaireItem'] as List<dynamic>?)
          ?.map((e) =>
              QuestionnaireItemFHIRModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionnaireFHIRModelImplToJson(
        _$QuestionnaireFHIRModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'status': _$QuestionnaireStatusEnumMap[instance.status],
      'experimental': instance.experimental,
      'date': const TimestampConverter().toJson(instance.date),
      'description': instance.description,
      'jurisdiction': _$JurisdictionEnumMap[instance.jurisdiction],
      'publisher': instance.publisher,
      'purpose': instance.purpose,
      'code': _$QuestionnaireCodeEnumMap[instance.code],
      'version': instance.version,
      'lastReviewDate':
          const TimestampConverter().toJson(instance.lastReviewDate),
      'approvalDate': const TimestampConverter().toJson(instance.approvalDate),
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
      'lastModifiedDate':
          const TimestampConverter().toJson(instance.lastModifiedDate),
      'publisherCode':
          const TimestampConverter().toJson(instance.publisherCode),
      'publisherType': instance.publisherType,
      'questionnaire': instance.questionnaire?.toJson(),
      'questionnaireItem':
          instance.questionnaireItem?.map((e) => e.toJson()).toList(),
    };

const _$QuestionnaireStatusEnumMap = {
  QuestionnaireStatus.DRAFT: 'DRAFT',
  QuestionnaireStatus.ACTIVE: 'ACTIVE',
  QuestionnaireStatus.RETIRED: 'RETIRED',
  QuestionnaireStatus.UNKNOWN: 'UNKNOWN',
};

const _$QuestionnaireCodeEnumMap = {
  QuestionnaireCode.Physical_findings_of_Eye_Narrative:
      'Physical_findings_of_Eye_Narrative',
  QuestionnaireCode.History_of_Eyes_disorders_Narrative:
      'History_of_Eyes_disorders_Narrative',
};

_$QuestionnaireModelImpl _$$QuestionnaireModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      title: json['title'] as String?,
      status: $enumDecodeNullable(_$QuestionnaireStatusEnumMap, json['status']),
      experimental: json['experimental'] as bool?,
      date: const TimestampConverter().fromJson(json['date'] as String?),
      description: json['description'] as String?,
      jurisdiction:
          $enumDecodeNullable(_$JurisdictionEnumMap, json['jurisdiction']),
      publisher: json['publisher'] as String?,
      purpose: json['purpose'] as String?,
      code: $enumDecodeNullable(_$QuestionnaireCodeEnumMap, json['code']),
      version: json['version'] as String?,
      lastReviewDate: const TimestampConverter()
          .fromJson(json['lastReviewDate'] as String?),
      approvalDate:
          const TimestampConverter().fromJson(json['approvalDate'] as String?),
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
      lastModifiedDate: const TimestampConverter()
          .fromJson(json['lastModifiedDate'] as String?),
      publisherCode:
          const TimestampConverter().fromJson(json['publisherCode'] as String?),
      publisherType: json['publisherType'] as String?,
    );

Map<String, dynamic> _$$QuestionnaireModelImplToJson(
        _$QuestionnaireModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'status': _$QuestionnaireStatusEnumMap[instance.status],
      'experimental': instance.experimental,
      'date': const TimestampConverter().toJson(instance.date),
      'description': instance.description,
      'jurisdiction': _$JurisdictionEnumMap[instance.jurisdiction],
      'publisher': instance.publisher,
      'purpose': instance.purpose,
      'code': _$QuestionnaireCodeEnumMap[instance.code],
      'version': instance.version,
      'lastReviewDate':
          const TimestampConverter().toJson(instance.lastReviewDate),
      'approvalDate': const TimestampConverter().toJson(instance.approvalDate),
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
      'lastModifiedDate':
          const TimestampConverter().toJson(instance.lastModifiedDate),
      'publisherCode':
          const TimestampConverter().toJson(instance.publisherCode),
      'publisherType': instance.publisherType,
    };

_$QuestionnaireItemFHIRModelImpl _$$QuestionnaireItemFHIRModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireItemFHIRModelImpl(
      id: (json['id'] as num?)?.toInt(),
      linkId: json['linkId'] as String?,
      prefix: json['prefix'] as String?,
      text: json['text'] as String?,
      type: $enumDecodeNullable(_$QuestionnaireTypeEnumMap, json['type']),
      enableBehaviour: $enumDecodeNullable(
          _$EnableBehaviourEnumMap, json['enableBehaviour']),
      required: json['required'] as bool?,
      repeats: json['repeats'] as bool?,
      readOnly: json['readOnly'] as bool?,
      maxlength: (json['maxlength'] as num?)?.toInt(),
      shortText: json['shortText'] as String?,
      disabledDisplay: $enumDecodeNullable(
          _$DisabledDisplayEnumMap, json['disabledDisplay']),
      answerConstraint: $enumDecodeNullable(
          _$AnswerConstraintEnumMap, json['answerConstraint']),
      ansewrValueSet: json['ansewrValueSet'] == null
          ? null
          : AnswerValueSetModel.fromJson(
              json['ansewrValueSet'] as Map<String, dynamic>),
      initial: json['initial'] == null
          ? null
          : AnswerModel.fromJson(json['initial'] as Map<String, dynamic>),
      quesExplanationText: json['quesExplanationText'] as String?,
      questionnaire: json['questionnaire'] == null
          ? null
          : QuestionnaireModel.fromJson(
              json['questionnaire'] as Map<String, dynamic>),
      questionnaireItem: json['questionnaireItem'] == null
          ? null
          : QuestionnaireItemModel.fromJson(
              json['questionnaireItem'] as Map<String, dynamic>),
      actionOn: (json['actionOn'] as List<dynamic>?)
          ?.map((e) => ActionOnModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      answerOption: (json['answerOption'] as List<dynamic>?)
          ?.map((e) => AnswerOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      enableWhen: (json['enableWhen'] as List<dynamic>?)
          ?.map((e) => EnableWhenModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      answerItemWeight: (json['answerItemWeight'] as List<dynamic>?)
          ?.map(
              (e) => AnswerItemWeightModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedImage: (json['relatedImage'] as List<dynamic>?)
          ?.map(
              (e) => RelatedImageFHIRModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionnaireItemFHIRModelImplToJson(
        _$QuestionnaireItemFHIRModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'linkId': instance.linkId,
      'prefix': instance.prefix,
      'text': instance.text,
      'type': _$QuestionnaireTypeEnumMap[instance.type],
      'enableBehaviour': _$EnableBehaviourEnumMap[instance.enableBehaviour],
      'required': instance.required,
      'repeats': instance.repeats,
      'readOnly': instance.readOnly,
      'maxlength': instance.maxlength,
      'shortText': instance.shortText,
      'disabledDisplay': _$DisabledDisplayEnumMap[instance.disabledDisplay],
      'answerConstraint': _$AnswerConstraintEnumMap[instance.answerConstraint],
      'ansewrValueSet': instance.ansewrValueSet?.toJson(),
      'initial': instance.initial?.toJson(),
      'quesExplanationText': instance.quesExplanationText,
      'questionnaire': instance.questionnaire?.toJson(),
      'questionnaireItem': instance.questionnaireItem?.toJson(),
      'actionOn': instance.actionOn?.map((e) => e.toJson()).toList(),
      'answerOption': instance.answerOption?.map((e) => e.toJson()).toList(),
      'enableWhen': instance.enableWhen?.map((e) => e.toJson()).toList(),
      'answerItemWeight':
          instance.answerItemWeight?.map((e) => e.toJson()).toList(),
      'relatedImage': instance.relatedImage?.map((e) => e.toJson()).toList(),
    };

const _$QuestionnaireTypeEnumMap = {
  QuestionnaireType.Group: 'Group',
  QuestionnaireType.Display: 'Display',
  QuestionnaireType.Question: 'Question',
  QuestionnaireType.Boolean: 'Boolean',
  QuestionnaireType.Decimal: 'Decimal',
  QuestionnaireType.Integer: 'Integer',
  QuestionnaireType.Date: 'Date',
  QuestionnaireType.Time: 'Time',
  QuestionnaireType.String: 'String',
  QuestionnaireType.Choice: 'Choice',
};

const _$EnableBehaviourEnumMap = {
  EnableBehaviour.ALL: 'ALL',
  EnableBehaviour.ANY: 'ANY',
};

const _$DisabledDisplayEnumMap = {
  DisabledDisplay.PROTECTED: 'PROTECTED',
  DisabledDisplay.HIDDEN: 'HIDDEN',
};

const _$AnswerConstraintEnumMap = {
  AnswerConstraint.OptionsOnly: 'OptionsOnly',
  AnswerConstraint.OptionsOrType: 'OptionsOrType',
  AnswerConstraint.OptionsOrString: 'OptionsOrString',
};

_$AnswerOptionModelImpl _$$AnswerOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerOptionModelImpl(
      id: (json['id'] as num?)?.toInt(),
      initialSelected: json['initialSelected'] as bool?,
      answer: json['answer'] == null
          ? null
          : AnswerModel.fromJson(json['answer'] as Map<String, dynamic>),
      questionnaireItem: json['questionnaireItem'] == null
          ? null
          : QuestionnaireItemModel.fromJson(
              json['questionnaireItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnswerOptionModelImplToJson(
        _$AnswerOptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialSelected': instance.initialSelected,
      'answer': instance.answer?.toJson(),
      'questionnaireItem': instance.questionnaireItem?.toJson(),
    };

_$AnswerValueSetModelImpl _$$AnswerValueSetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerValueSetModelImpl(
      id: (json['id'] as num?)?.toInt(),
      valueId: (json['valueId'] as num?)?.toInt(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$AnswerValueSetModelImplToJson(
        _$AnswerValueSetModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'valueId': instance.valueId,
      'value': instance.value,
    };

_$AnswerModelImpl _$$AnswerModelImplFromJson(Map<String, dynamic> json) =>
    _$AnswerModelImpl(
      id: (json['id'] as num?)?.toInt(),
      answerBoolean: json['answerBoolean'] as bool?,
      answerDecimal: (json['answerDecimal'] as num?)?.toDouble(),
      answerInteger: (json['answerInteger'] as num?)?.toInt(),
      answerDateTime: const TimestampConverter()
          .fromJson(json['answerDateTime'] as String?),
      answerTime:
          const TimestampConverter().fromJson(json['answerTime'] as String?),
      answerString: json['answerString'] as String?,
      answerDisplayString: json['answerDisplayString'] as String?,
      answerItemWeight: json['answerItemWeight'] == null
          ? null
          : AnswerItemWeightModel.fromJson(
              json['answerItemWeight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnswerModelImplToJson(_$AnswerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answerBoolean': instance.answerBoolean,
      'answerDecimal': instance.answerDecimal,
      'answerInteger': instance.answerInteger,
      'answerDateTime':
          const TimestampConverter().toJson(instance.answerDateTime),
      'answerTime': const TimestampConverter().toJson(instance.answerTime),
      'answerString': instance.answerString,
      'answerDisplayString': instance.answerDisplayString,
      'answerItemWeight': instance.answerItemWeight?.toJson(),
    };

_$AnswerItemWeightModelImpl _$$AnswerItemWeightModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnswerItemWeightModelImpl(
      id: (json['id'] as num?)?.toInt(),
      value: (json['value'] as num?)?.toDouble(),
      answerId: (json['answerId'] as num?)?.toInt(),
      questionResponseWeight: json['questionResponseWeight'] == null
          ? null
          : QuestionResponseWeightModel.fromJson(
              json['questionResponseWeight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnswerItemWeightModelImplToJson(
        _$AnswerItemWeightModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'answerId': instance.answerId,
      'questionResponseWeight': instance.questionResponseWeight?.toJson(),
    };

_$QuestionResponseWeightModelImpl _$$QuestionResponseWeightModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionResponseWeightModelImpl(
      id: (json['id'] as num?)?.toInt(),
      quesId: (json['quesId'] as num?)?.toInt(),
      isRange: json['isRange'] as bool?,
      isCompare: json['isCompare'] as bool?,
      isAbsolute: json['isAbsolute'] as bool?,
    );

Map<String, dynamic> _$$QuestionResponseWeightModelImplToJson(
        _$QuestionResponseWeightModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quesId': instance.quesId,
      'isRange': instance.isRange,
      'isCompare': instance.isCompare,
      'isAbsolute': instance.isAbsolute,
    };

_$QuestionnaireItemModelImpl _$$QuestionnaireItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireItemModelImpl(
      id: (json['id'] as num?)?.toInt(),
      linkId: json['linkId'] as String?,
      prefix: json['prefix'] as String?,
      text: json['text'] as String?,
      type: $enumDecodeNullable(_$QuestionnaireTypeEnumMap, json['type']),
      enableBehaviour: $enumDecodeNullable(
          _$EnableBehaviourEnumMap, json['enableBehaviour']),
      isRequired: json['isRequired'] as bool?,
      repeats: json['repeats'] as bool?,
      readOnly: json['readOnly'] as bool?,
      maxlength: (json['maxlength'] as num?)?.toInt(),
      disabledDisplay: $enumDecodeNullable(
          _$DisabledDisplayEnumMap, json['disabledDisplay']),
      answerConstraint: $enumDecodeNullable(
          _$AnswerConstraintEnumMap, json['answerConstraint']),
      ansewrValueSet: json['ansewrValueSet'] == null
          ? null
          : AnswerValueSetModel.fromJson(
              json['ansewrValueSet'] as Map<String, dynamic>),
      initial: json['initial'] == null
          ? null
          : AnswerModel.fromJson(json['initial'] as Map<String, dynamic>),
      questionnaire: json['questionnaire'] == null
          ? null
          : QuestionnaireModel.fromJson(
              json['questionnaire'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuestionnaireItemModelImplToJson(
        _$QuestionnaireItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'linkId': instance.linkId,
      'prefix': instance.prefix,
      'text': instance.text,
      'type': _$QuestionnaireTypeEnumMap[instance.type],
      'enableBehaviour': _$EnableBehaviourEnumMap[instance.enableBehaviour],
      'isRequired': instance.isRequired,
      'repeats': instance.repeats,
      'readOnly': instance.readOnly,
      'maxlength': instance.maxlength,
      'disabledDisplay': _$DisabledDisplayEnumMap[instance.disabledDisplay],
      'answerConstraint': _$AnswerConstraintEnumMap[instance.answerConstraint],
      'ansewrValueSet': instance.ansewrValueSet?.toJson(),
      'initial': instance.initial?.toJson(),
      'questionnaire': instance.questionnaire?.toJson(),
    };

_$ActionOnModelImpl _$$ActionOnModelImplFromJson(Map<String, dynamic> json) =>
    _$ActionOnModelImpl(
      id: (json['id'] as num?)?.toInt(),
      operator: $enumDecodeNullable(_$OperatorEnumMap, json['operator']),
      actionType: $enumDecodeNullable(_$ActionTypeEnumMap, json['actionType']),
      answer: json['answer'] == null
          ? null
          : AnswerModel.fromJson(json['answer'] as Map<String, dynamic>),
      questionnaireItem: json['questionnaireItem'] == null
          ? null
          : QuestionnaireItemModel.fromJson(
              json['questionnaireItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActionOnModelImplToJson(_$ActionOnModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'operator': _$OperatorEnumMap[instance.operator],
      'actionType': _$ActionTypeEnumMap[instance.actionType],
      'answer': instance.answer?.toJson(),
      'questionnaireItem': instance.questionnaireItem?.toJson(),
    };

const _$OperatorEnumMap = {
  Operator.EXISTS: 'EXISTS',
  Operator.EQUALS: 'EQUALS',
  Operator.NOT_EQUALS: 'NOT_EQUALS',
  Operator.GREATER_THAN: 'GREATER_THAN',
  Operator.LESS_THAN: 'LESS_THAN',
  Operator.GREATER_OR_EQUALS: 'GREATER_OR_EQUALS',
  Operator.LESS_OR_EQUALS: 'LESS_OR_EQUALS',
};

const _$ActionTypeEnumMap = {
  ActionType.EXIT_QUESTIONNAIRE: 'EXIT_QUESTIONNAIRE',
  ActionType.EXIT_ALL_QUESTIONNAIRE: 'EXIT_ALL_QUESTIONNAIRE',
  ActionType.EXIT_ASSESSMENT: 'EXIT_ASSESSMENT',
};

_$EnableWhenModelImpl _$$EnableWhenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EnableWhenModelImpl(
      id: (json['id'] as num?)?.toInt(),
      question: json['question'] as String?,
      operator: $enumDecodeNullable(_$OperatorEnumMap, json['operator']),
      answer: json['answer'] == null
          ? null
          : AnswerModel.fromJson(json['answer'] as Map<String, dynamic>),
      questionnaireItem: json['questionnaireItem'] == null
          ? null
          : QuestionnaireItemModel.fromJson(
              json['questionnaireItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EnableWhenModelImplToJson(
        _$EnableWhenModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'operator': _$OperatorEnumMap[instance.operator],
      'answer': instance.answer?.toJson(),
      'questionnaireItem': instance.questionnaireItem?.toJson(),
    };

_$LanguageBasedTextModelImpl _$$LanguageBasedTextModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LanguageBasedTextModelImpl(
      id: (json['id'] as num?)?.toInt(),
      textId: json['textId'] as String?,
      langId: (json['langId'] as num?)?.toInt(),
      textValue: json['textValue'] as String?,
      isDefault: json['isDefault'] as bool?,
    );

Map<String, dynamic> _$$LanguageBasedTextModelImplToJson(
        _$LanguageBasedTextModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'textId': instance.textId,
      'langId': instance.langId,
      'textValue': instance.textValue,
      'isDefault': instance.isDefault,
    };

_$ObservationValueWeightModelImpl _$$ObservationValueWeightModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ObservationValueWeightModelImpl(
      id: (json['id'] as num?)?.toInt(),
      observationId: (json['observationId'] as num?)?.toInt(),
      organizationId: (json['organizationId'] as num?)?.toInt(),
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ObservationValueWeightModelImplToJson(
        _$ObservationValueWeightModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'observationId': instance.observationId,
      'organizationId': instance.organizationId,
      'value': instance.value,
    };
