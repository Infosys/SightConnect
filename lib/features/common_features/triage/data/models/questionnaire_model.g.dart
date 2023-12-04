// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
