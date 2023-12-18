// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_diagnostic_report_template_FHIR_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiagnosticReportTemplateFHIRModel
    _$$_DiagnosticReportTemplateFHIRModelFromJson(Map<String, dynamic> json) =>
        _$_DiagnosticReportTemplateFHIRModel(
          id: json['id'] as int?,
          name: json['name'] as String?,
          organizationCode: json['organizationCode'] as int?,
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

Map<String, dynamic> _$$_DiagnosticReportTemplateFHIRModelToJson(
        _$_DiagnosticReportTemplateFHIRModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'organizationCode': instance.organizationCode,
      'category': _$CategoryEnumMap[instance.category],
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'code': _$TestCodeEnumMap[instance.code],
      'version': instance.version,
      'study': instance.study,
      'observations': instance.observations,
      'questionnaire': instance.questionnaire,
      'observationValueWeight': instance.observationValueWeight,
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

_$_ImagingStudyFHIRModel _$$_ImagingStudyFHIRModelFromJson(
        Map<String, dynamic> json) =>
    _$_ImagingStudyFHIRModel(
      id: json['id'] as int?,
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

Map<String, dynamic> _$$_ImagingStudyFHIRModelToJson(
        _$_ImagingStudyFHIRModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'imagingSelectionTemplate': instance.imagingSelectionTemplate,
      'languageBasedText': instance.languageBasedText,
    };

_$_ImagingSelectionTemplateFHIRModel
    _$$_ImagingSelectionTemplateFHIRModelFromJson(Map<String, dynamic> json) =>
        _$_ImagingSelectionTemplateFHIRModel(
          id: json['id'] as int?,
          name: json['name'] as String?,
          description: json['description'] as String?,
          type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']),
          maxSize: json['maxSize'] as int?,
          fileType: $enumDecodeNullable(_$FileTypeEnumMap, json['fileType']),
          relatedImage: (json['relatedImage'] as List<dynamic>?)
              ?.map((e) =>
                  RelatedImageFHIRModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_ImagingSelectionTemplateFHIRModelToJson(
        _$_ImagingSelectionTemplateFHIRModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$MediaTypeEnumMap[instance.type],
      'maxSize': instance.maxSize,
      'fileType': _$FileTypeEnumMap[instance.fileType],
      'relatedImage': instance.relatedImage,
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

_$_RelatedImageFHIRModel _$$_RelatedImageFHIRModelFromJson(
        Map<String, dynamic> json) =>
    _$_RelatedImageFHIRModel(
      id: json['id'] as int?,
      imageTitle: json['imageTitle'] as String?,
      url: json['url'] as String?,
      filetype: $enumDecodeNullable(_$FileTypeEnumMap, json['filetype']),
    );

Map<String, dynamic> _$$_RelatedImageFHIRModelToJson(
        _$_RelatedImageFHIRModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageTitle': instance.imageTitle,
      'url': instance.url,
      'filetype': _$FileTypeEnumMap[instance.filetype],
    };

_$_ObservationDefinitionFHIRModel _$$_ObservationDefinitionFHIRModelFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationDefinitionFHIRModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      category:
          $enumDecodeNullable(_$ObservationCategoryEnumMap, json['category']),
      bodySite: $enumDecodeNullable(_$BodySiteEnumMap, json['bodySite']),
      code: $enumDecodeNullable(_$ObservationCodeEnumMap, json['code']),
      method: $enumDecodeNullable(_$ObservationMethodEnumMap, json['method']),
      jurisdiction:
          $enumDecodeNullable(_$JurisdictionEnumMap, json['jurisdiction']),
      observationDefinition: (json['observationDefinition'] as List<dynamic>?)
          ?.map((e) =>
              ObservationDefinitionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dataComponent: (json['dataComponent'] as List<dynamic>?)
          ?.map(
              (e) => DataComponentFHIRModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedImage: (json['relatedImage'] as List<dynamic>?)
          ?.map(
              (e) => RelatedImageFHIRModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      qualifiedValue: (json['qualifiedValue'] as List<dynamic>?)
          ?.map((e) => QualifiedValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      languageBasedText: (json['languageBasedText'] as List<dynamic>?)
          ?.map(
              (e) => LanguageBasedTextModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ObservationDefinitionFHIRModelToJson(
        _$_ObservationDefinitionFHIRModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': _$ObservationCategoryEnumMap[instance.category],
      'bodySite': _$BodySiteEnumMap[instance.bodySite],
      'code': _$ObservationCodeEnumMap[instance.code],
      'method': _$ObservationMethodEnumMap[instance.method],
      'jurisdiction': _$JurisdictionEnumMap[instance.jurisdiction],
      'observationDefinition': instance.observationDefinition,
      'dataComponent': instance.dataComponent,
      'relatedImage': instance.relatedImage,
      'qualifiedValue': instance.qualifiedValue,
      'languageBasedText': instance.languageBasedText,
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

_$_ObservationDefinitionModel _$$_ObservationDefinitionModelFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationDefinitionModel(
      id: json['id'] as int?,
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

Map<String, dynamic> _$$_ObservationDefinitionModelToJson(
        _$_ObservationDefinitionModel instance) =>
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

_$_DataComponentFHIRModel _$$_DataComponentFHIRModelFromJson(
        Map<String, dynamic> json) =>
    _$_DataComponentFHIRModel(
      id: json['id'] as int?,
      permittedDataType: $enumDecodeNullable(
          _$PermittedDataTypeEnumMap, json['permittedDataType']),
      permittedUnit:
          $enumDecodeNullable(_$PermittedUnitEnumMap, json['permittedUnit']),
      qualifiedValue: (json['qualifiedValue'] as List<dynamic>?)
          ?.map((e) => QualifiedValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataComponentFHIRModelToJson(
        _$_DataComponentFHIRModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'permittedDataType':
          _$PermittedDataTypeEnumMap[instance.permittedDataType],
      'permittedUnit': _$PermittedUnitEnumMap[instance.permittedUnit],
      'qualifiedValue': instance.qualifiedValue,
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

_$_QualifiedValueModel _$$_QualifiedValueModelFromJson(
        Map<String, dynamic> json) =>
    _$_QualifiedValueModel(
      id: json['id'] as int?,
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

Map<String, dynamic> _$$_QualifiedValueModelToJson(
        _$_QualifiedValueModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isRange': instance.isRange,
      'value': instance.value,
      'rangeCategory': _$RangeCategoryEnumMap[instance.rangeCategory],
      'gender': _$GenderEnumMap[instance.gender],
      'range': instance.range,
      'observationDefinition': instance.observationDefinition,
      'dataComponent': instance.dataComponent,
    };

const _$RangeCategoryEnumMap = {
  RangeCategory.Reference: 'Reference',
  RangeCategory.Critical: 'Critical',
  RangeCategory.Absolute: 'Absolute',
};

const _$GenderEnumMap = {
  Gender.Male: 'Male',
  Gender.Female: 'Female',
  Gender.Other: 'Other',
};

_$_RangeModel _$$_RangeModelFromJson(Map<String, dynamic> json) =>
    _$_RangeModel(
      id: json['id'] as int?,
      low: (json['low'] as num?)?.toDouble(),
      high: (json['high'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_RangeModelToJson(_$_RangeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'low': instance.low,
      'high': instance.high,
    };

_$_DataComponentModel _$$_DataComponentModelFromJson(
        Map<String, dynamic> json) =>
    _$_DataComponentModel(
      id: json['id'] as int?,
      permittedDataType: $enumDecodeNullable(
          _$PermittedDataTypeEnumMap, json['permittedDataType']),
      permittedUnit:
          $enumDecodeNullable(_$PermittedUnitEnumMap, json['permittedUnit']),
      observationDefinition: json['observationDefinition'] == null
          ? null
          : ObservationDefinitionModel.fromJson(
              json['observationDefinition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataComponentModelToJson(
        _$_DataComponentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'permittedDataType':
          _$PermittedDataTypeEnumMap[instance.permittedDataType],
      'permittedUnit': _$PermittedUnitEnumMap[instance.permittedUnit],
      'observationDefinition': instance.observationDefinition,
    };

_$_QuestionnaireFHIRModel _$$_QuestionnaireFHIRModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireFHIRModel(
      id: json['id'] as int?,
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

Map<String, dynamic> _$$_QuestionnaireFHIRModelToJson(
        _$_QuestionnaireFHIRModel instance) =>
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
      'questionnaire': instance.questionnaire,
      'questionnaireItem': instance.questionnaireItem,
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

_$_QuestionnaireModel _$$_QuestionnaireModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireModel(
      id: json['id'] as int?,
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

Map<String, dynamic> _$$_QuestionnaireModelToJson(
        _$_QuestionnaireModel instance) =>
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

_$_QuestionnaireItemFHIRModel _$$_QuestionnaireItemFHIRModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireItemFHIRModel(
      id: json['id'] as int?,
      linkId: json['linkId'] as String?,
      prefix: json['prefix'] as String?,
      text: json['text'] as String?,
      type: $enumDecodeNullable(_$QuestionnaireTypeEnumMap, json['type']),
      enableBehaviour: $enumDecodeNullable(
          _$EnableBehaviourEnumMap, json['enableBehaviour']),
      required: json['required'] as bool?,
      repeats: json['repeats'] as bool?,
      readOnly: json['readOnly'] as bool?,
      maxlength: json['maxlength'] as int?,
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
    );

Map<String, dynamic> _$$_QuestionnaireItemFHIRModelToJson(
        _$_QuestionnaireItemFHIRModel instance) =>
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
      'disabledDisplay': _$DisabledDisplayEnumMap[instance.disabledDisplay],
      'answerConstraint': _$AnswerConstraintEnumMap[instance.answerConstraint],
      'ansewrValueSet': instance.ansewrValueSet,
      'initial': instance.initial,
      'questionnaire': instance.questionnaire,
      'questionnaireItem': instance.questionnaireItem,
      'actionOn': instance.actionOn,
      'answerOption': instance.answerOption,
      'enableWhen': instance.enableWhen,
      'answerItemWeight': instance.answerItemWeight,
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

_$_AnswerOptionModel _$$_AnswerOptionModelFromJson(Map<String, dynamic> json) =>
    _$_AnswerOptionModel(
      id: json['id'] as int?,
      initialSelected: json['initialSelected'] as bool?,
      answer: json['answer'] == null
          ? null
          : AnswerModel.fromJson(json['answer'] as Map<String, dynamic>),
      questionnaireItem: json['questionnaireItem'] == null
          ? null
          : QuestionnaireItemModel.fromJson(
              json['questionnaireItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnswerOptionModelToJson(
        _$_AnswerOptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialSelected': instance.initialSelected,
      'answer': instance.answer,
      'questionnaireItem': instance.questionnaireItem,
    };

_$_AnswerValueSetModel _$$_AnswerValueSetModelFromJson(
        Map<String, dynamic> json) =>
    _$_AnswerValueSetModel(
      id: json['id'] as int?,
      valueId: json['valueId'] as int?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_AnswerValueSetModelToJson(
        _$_AnswerValueSetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'valueId': instance.valueId,
      'value': instance.value,
    };

_$_AnswerModel _$$_AnswerModelFromJson(Map<String, dynamic> json) =>
    _$_AnswerModel(
      id: json['id'] as int?,
      answerBoolean: json['answerBoolean'] as bool?,
      answerDecimal: (json['answerDecimal'] as num?)?.toDouble(),
      answerInteger: json['answerInteger'] as int?,
      answerDateTime: const TimestampConverter()
          .fromJson(json['answerDateTime'] as String?),
      answerTime:
          const TimestampConverter().fromJson(json['answerTime'] as String?),
      answerString: json['answerString'] as String?,
      answerItemWeight: json['answerItemWeight'] == null
          ? null
          : AnswerItemWeightModel.fromJson(
              json['answerItemWeight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnswerModelToJson(_$_AnswerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answerBoolean': instance.answerBoolean,
      'answerDecimal': instance.answerDecimal,
      'answerInteger': instance.answerInteger,
      'answerDateTime':
          const TimestampConverter().toJson(instance.answerDateTime),
      'answerTime': const TimestampConverter().toJson(instance.answerTime),
      'answerString': instance.answerString,
      'answerItemWeight': instance.answerItemWeight,
    };

_$_AnswerItemWeightModel _$$_AnswerItemWeightModelFromJson(
        Map<String, dynamic> json) =>
    _$_AnswerItemWeightModel(
      id: json['id'] as int?,
      value: (json['value'] as num?)?.toDouble(),
      answerId: json['answerId'] as int?,
      questionResponseWeight: json['questionResponseWeight'] == null
          ? null
          : QuestionResponseWeightModel.fromJson(
              json['questionResponseWeight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnswerItemWeightModelToJson(
        _$_AnswerItemWeightModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'answerId': instance.answerId,
      'questionResponseWeight': instance.questionResponseWeight,
    };

_$_QuestionResponseWeightModel _$$_QuestionResponseWeightModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionResponseWeightModel(
      id: json['id'] as int?,
      quesId: json['quesId'] as int?,
      isRange: json['isRange'] as bool?,
      isCompare: json['isCompare'] as bool?,
      isAbsolute: json['isAbsolute'] as bool?,
    );

Map<String, dynamic> _$$_QuestionResponseWeightModelToJson(
        _$_QuestionResponseWeightModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quesId': instance.quesId,
      'isRange': instance.isRange,
      'isCompare': instance.isCompare,
      'isAbsolute': instance.isAbsolute,
    };

_$_QuestionnaireItemModel _$$_QuestionnaireItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireItemModel(
      id: json['id'] as int?,
      linkId: json['linkId'] as String?,
      prefix: json['prefix'] as String?,
      text: json['text'] as String?,
      type: $enumDecodeNullable(_$QuestionnaireTypeEnumMap, json['type']),
      enableBehaviour: $enumDecodeNullable(
          _$EnableBehaviourEnumMap, json['enableBehaviour']),
      isRequired: json['isRequired'] as bool?,
      repeats: json['repeats'] as bool?,
      readOnly: json['readOnly'] as bool?,
      maxlength: json['maxlength'] as int?,
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

Map<String, dynamic> _$$_QuestionnaireItemModelToJson(
        _$_QuestionnaireItemModel instance) =>
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
      'ansewrValueSet': instance.ansewrValueSet,
      'initial': instance.initial,
      'questionnaire': instance.questionnaire,
    };

_$_ActionOnModel _$$_ActionOnModelFromJson(Map<String, dynamic> json) =>
    _$_ActionOnModel(
      id: json['id'] as int?,
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

Map<String, dynamic> _$$_ActionOnModelToJson(_$_ActionOnModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'operator': _$OperatorEnumMap[instance.operator],
      'actionType': _$ActionTypeEnumMap[instance.actionType],
      'answer': instance.answer,
      'questionnaireItem': instance.questionnaireItem,
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

_$_EnableWhenModel _$$_EnableWhenModelFromJson(Map<String, dynamic> json) =>
    _$_EnableWhenModel(
      id: json['id'] as int?,
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

Map<String, dynamic> _$$_EnableWhenModelToJson(_$_EnableWhenModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'operator': _$OperatorEnumMap[instance.operator],
      'answer': instance.answer,
      'questionnaireItem': instance.questionnaireItem,
    };

_$_LanguageBasedTextModel _$$_LanguageBasedTextModelFromJson(
        Map<String, dynamic> json) =>
    _$_LanguageBasedTextModel(
      id: json['id'] as int?,
      textId: json['textId'] as String?,
      langId: json['langId'] as int?,
      textValue: json['textValue'] as String?,
      isDefault: json['isDefault'] as bool?,
    );

Map<String, dynamic> _$$_LanguageBasedTextModelToJson(
        _$_LanguageBasedTextModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'textId': instance.textId,
      'langId': instance.langId,
      'textValue': instance.textValue,
      'isDefault': instance.isDefault,
    };

_$_ObservationValueWeightModel _$$_ObservationValueWeightModelFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationValueWeightModel(
      id: json['id'] as int?,
      observationId: json['observationId'] as int?,
      organizationId: json['organizationId'] as int?,
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ObservationValueWeightModelToJson(
        _$_ObservationValueWeightModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'observationId': instance.observationId,
      'organizationId': instance.organizationId,
      'value': instance.value,
    };
