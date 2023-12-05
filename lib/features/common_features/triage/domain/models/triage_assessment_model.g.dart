// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'triage_assessment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TriageAssessmentModel _$$_TriageAssessmentModelFromJson(
        Map<String, dynamic> json) =>
    _$_TriageAssessmentModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      organizationCode: json['organizationCode'] as String?,
      condition: $enumDecodeNullable(_$ConditionEnumMap, json['condition']),
      assessmentType:
          $enumDecodeNullable(_$AssessmentTypeEnumMap, json['assessmentType']),
      organ: $enumDecodeNullable(_$OrganEnumMap, json['organ']),
      questionnaireSectionsResponseDTOList:
          (json['questionnaireSectionsResponseDTOList'] as List<dynamic>?)
              ?.map((e) => QuestionnaireSectionsResponseModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      mediaListSectionResponseDTOList: (json['mediaListSectionResponseDTOList']
              as List<dynamic>?)
          ?.map((e) =>
              MediaListSectionResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      observationSetSectionResponseDTOList:
          (json['observationSetSectionResponseDTOList'] as List<dynamic>?)
              ?.map((e) => ObservationSetSectionResponseModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_TriageAssessmentModelToJson(
        _$_TriageAssessmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'organizationCode': instance.organizationCode,
      'condition': _$ConditionEnumMap[instance.condition],
      'assessmentType': _$AssessmentTypeEnumMap[instance.assessmentType],
      'organ': _$OrganEnumMap[instance.organ],
      'questionnaireSectionsResponseDTOList':
          instance.questionnaireSectionsResponseDTOList,
      'mediaListSectionResponseDTOList':
          instance.mediaListSectionResponseDTOList,
      'observationSetSectionResponseDTOList':
          instance.observationSetSectionResponseDTOList,
    };

const _$ConditionEnumMap = {
  Condition.VISION: 'VISION',
};

const _$AssessmentTypeEnumMap = {
  AssessmentType.TRIAGE: 'TRIAGE',
};

const _$OrganEnumMap = {
  Organ.EYE: 'EYE',
};

_$_MediaListSectionModel _$$_MediaListSectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_MediaListSectionModel(
      id: json['id'] as int?,
      index: json['index'] as int?,
      description: json['description'] as String?,
      mediaList: json['mediaList'] == null
          ? null
          : MediaListModel.fromJson(json['mediaList'] as Map<String, dynamic>),
      assessment: json['assessment'] == null
          ? null
          : AssessmentModel.fromJson(
              json['assessment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MediaListSectionModelToJson(
        _$_MediaListSectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'mediaList': instance.mediaList,
      'assessment': instance.assessment,
    };

_$_AssessmentModel _$$_AssessmentModelFromJson(Map<String, dynamic> json) =>
    _$_AssessmentModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      organizationCode: json['organizationCode'] as String?,
      condition: $enumDecodeNullable(_$ConditionEnumMap, json['condition']),
      assessmentType:
          $enumDecodeNullable(_$AssessmentTypeEnumMap, json['assessmentType']),
      organ: $enumDecodeNullable(_$OrganEnumMap, json['organ']),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$_AssessmentModelToJson(_$_AssessmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'organizationCode': instance.organizationCode,
      'condition': _$ConditionEnumMap[instance.condition],
      'assessmentType': _$AssessmentTypeEnumMap[instance.assessmentType],
      'organ': _$OrganEnumMap[instance.organ],
      'version': instance.version,
    };

_$_QuestionnaireModel _$$_QuestionnaireModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      version: json['version'] as String?,
      approvalDate:
          const TimestampConverter().fromJson(json['approvalDate'] as String?),
      lastReviewDate: const TimestampConverter()
          .fromJson(json['lastReviewDate'] as String?),
      effectiveFrom:
          const TimestampConverter().fromJson(json['effectiveFrom'] as String?),
      effectiveTill:
          const TimestampConverter().fromJson(json['effectiveTill'] as String?),
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
      lastModifiedDate: const TimestampConverter()
          .fromJson(json['lastModifiedDate'] as String?),
      publisherCode: json['publisherCode'] as int?,
      publisherType: json['publisherType'] as String?,
    );

Map<String, dynamic> _$$_QuestionnaireModelToJson(
        _$_QuestionnaireModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
      'approvalDate': const TimestampConverter().toJson(instance.approvalDate),
      'lastReviewDate':
          const TimestampConverter().toJson(instance.lastReviewDate),
      'effectiveFrom':
          const TimestampConverter().toJson(instance.effectiveFrom),
      'effectiveTill':
          const TimestampConverter().toJson(instance.effectiveTill),
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
      'lastModifiedDate':
          const TimestampConverter().toJson(instance.lastModifiedDate),
      'publisherCode': instance.publisherCode,
      'publisherType': instance.publisherType,
    };

_$_PostQuestionResponseModel _$$_PostQuestionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_PostQuestionResponseModel(
      linkId: json['linkId'] as int?,
      score: (json['score'] as num?)?.toDouble(),
      answer: (json['answer'] as List<dynamic>?)
          ?.map((e) => PostAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostQuestionResponseModelToJson(
        _$_PostQuestionResponseModel instance) =>
    <String, dynamic>{
      'linkId': instance.linkId,
      'score': instance.score,
      'answer': instance.answer,
    };

_$_PostAnswerModel _$$_PostAnswerModelFromJson(Map<String, dynamic> json) =>
    _$_PostAnswerModel(
      value: json['value'] as String?,
      score: (json['score'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PostAnswerModelToJson(_$_PostAnswerModel instance) =>
    <String, dynamic>{
      'value': instance.value,
      'score': instance.score,
    };

_$_ObservationSetSectionResponseModel
    _$$_ObservationSetSectionResponseModelFromJson(Map<String, dynamic> json) =>
        _$_ObservationSetSectionResponseModel(
          id: json['id'] as int?,
          index: json['index'] as int?,
          description: json['description'] as String?,
          observationSetResponseDTOList:
              (json['observationSetResponseDTOList'] as List<dynamic>?)
                  ?.map((e) => ObservationSetResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList(),
          supersection: json['supersection'] == null
              ? null
              : ObservationSetSectionModel.fromJson(
                  json['supersection'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$_ObservationSetSectionResponseModelToJson(
        _$_ObservationSetSectionResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'observationSetResponseDTOList': instance.observationSetResponseDTOList,
      'supersection': instance.supersection,
    };

_$_ObservationSetSectionModel _$$_ObservationSetSectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationSetSectionModel(
      id: json['id'] as int?,
      index: json['index'] as int?,
      description: json['description'] as String?,
      observationSet: json['observationSet'] == null
          ? null
          : ObservationSetModel.fromJson(
              json['observationSet'] as Map<String, dynamic>),
      assessment: json['assessment'] == null
          ? null
          : AssessmentModel.fromJson(
              json['assessment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ObservationSetSectionModelToJson(
        _$_ObservationSetSectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'observationSet': instance.observationSet,
      'assessment': instance.assessment,
    };

_$_ObservationSetModel _$$_ObservationSetModelFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationSetModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      version: json['version'] as String?,
      description: json['description'] as String?,
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
    );

Map<String, dynamic> _$$_ObservationSetModelToJson(
        _$_ObservationSetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
    };

_$_ObservationResponseModel _$$_ObservationResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      valueType: $enumDecodeNullable(_$ValueTypeEnumMap, json['valueType']),
      hiThreshold: json['hiThreshold'] as String?,
      loThreshold: json['loThreshold'] as String?,
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
      configs: json['configs'] as String?,
      weightage: (json['weightage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ObservationResponseModelToJson(
        _$_ObservationResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'valueType': _$ValueTypeEnumMap[instance.valueType],
      'hiThreshold': instance.hiThreshold,
      'loThreshold': instance.loThreshold,
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
      'configs': instance.configs,
      'weightage': instance.weightage,
    };

const _$ValueTypeEnumMap = {
  ValueType.STRING: 'STRING',
  ValueType.INTEGER: 'INTEGER',
  ValueType.FLOAT: 'FLOAT',
  ValueType.BOOLEAN: 'BOOLEAN',
};

_$_MediaListSectionResponseModel _$$_MediaListSectionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_MediaListSectionResponseModel(
      id: json['id'] as int?,
      index: json['index'] as int?,
      description: json['description'] as String?,
      supersection: json['supersection'] == null
          ? null
          : MediaListSectionModel.fromJson(
              json['supersection'] as Map<String, dynamic>),
      mediaListResponseDTOList: (json['mediaListResponseDTOList']
              as List<dynamic>?)
          ?.map(
              (e) => MediaListResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MediaListSectionResponseModelToJson(
        _$_MediaListSectionResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'supersection': instance.supersection,
      'mediaListResponseDTOList': instance.mediaListResponseDTOList,
    };

_$_MediaListResponseModel _$$_MediaListResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_MediaListResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      version: json['version'] as String?,
      description: json['description'] as String?,
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
      mediaResponseDTOList: (json['mediaResponseDTOList'] as List<dynamic>?)
          ?.map((e) => MediaResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MediaListResponseModelToJson(
        _$_MediaListResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
      'mediaResponseDTOList': instance.mediaResponseDTOList,
    };

_$_MediaListModel _$$_MediaListModelFromJson(Map<String, dynamic> json) =>
    _$_MediaListModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      version: json['version'] as String?,
      description: json['description'] as String?,
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
    );

Map<String, dynamic> _$$_MediaListModelToJson(_$_MediaListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
    };

_$_QuestionnaireSectionsResponseModel
    _$$_QuestionnaireSectionsResponseModelFromJson(Map<String, dynamic> json) =>
        _$_QuestionnaireSectionsResponseModel(
          id: json['id'] as int?,
          index: json['index'] as int?,
          description: json['description'] as String?,
          supersection: json['supersection'] == null
              ? null
              : QuestionnaireSectionModel.fromJson(
                  json['supersection'] as Map<String, dynamic>),
          questionnaireResponseDTOList:
              (json['questionnaireResponseDTOList'] as List<dynamic>?)
                  ?.map((e) => QuestionnaireResponseModel.fromJson(
                      e as Map<String, dynamic>))
                  .toList(),
        );

Map<String, dynamic> _$$_QuestionnaireSectionsResponseModelToJson(
        _$_QuestionnaireSectionsResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'supersection': instance.supersection,
      'questionnaireResponseDTOList': instance.questionnaireResponseDTOList,
    };

_$_QuestionnaireSectionModel _$$_QuestionnaireSectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionnaireSectionModel(
      id: json['id'] as int?,
      index: json['index'] as int?,
      description: json['description'] as String?,
      questionnaire: json['questionnaire'] == null
          ? null
          : QuestionnaireModel.fromJson(
              json['questionnaire'] as Map<String, dynamic>),
      assessment: json['assessment'] == null
          ? null
          : AssessmentModel.fromJson(
              json['assessment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionnaireSectionModelToJson(
        _$_QuestionnaireSectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'index': instance.index,
      'description': instance.description,
      'questionnaire': instance.questionnaire,
      'assessment': instance.assessment,
    };

_$_MediaResponseModel _$$_MediaResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_MediaResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']),
      maxSize: json['maxSize'] as int?,
      fileType: json['fileType'] as String?,
    );

Map<String, dynamic> _$$_MediaResponseModelToJson(
        _$_MediaResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'type': _$MediaTypeEnumMap[instance.type],
      'maxSize': instance.maxSize,
      'fileType': instance.fileType,
    };

const _$MediaTypeEnumMap = {
  MediaType.PHOTO: 'PHOTO',
  MediaType.VIDEO: 'VIDEO',
  MediaType.AUDIO: 'AUDIO',
};

_$_ObservationSetResponseModel _$$_ObservationSetResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_ObservationSetResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      version: json['version'] as String?,
      description: json['description'] as String?,
      creationDate:
          const TimestampConverter().fromJson(json['creationDate'] as String?),
      observationResponseDTO: json['observationResponseDTO'] == null
          ? null
          : ObservationResponseModel.fromJson(
              json['observationResponseDTO'] as Map<String, dynamic>),
      observationResponseDTOList:
          (json['observationResponseDTOList'] as List<dynamic>?)
              ?.map((e) =>
                  ObservationResponseModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$_ObservationSetResponseModelToJson(
        _$_ObservationSetResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'version': instance.version,
      'description': instance.description,
      'creationDate': const TimestampConverter().toJson(instance.creationDate),
      'observationResponseDTO': instance.observationResponseDTO,
      'observationResponseDTOList': instance.observationResponseDTOList,
    };
