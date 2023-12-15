// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionResponseModel _$$_QuestionResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionResponseModel(
      id: json['id'] as int?,
      definition: json['definition'] as String?,
      constraint: $enumDecodeNullable(_$ConstraintEnumMap, json['constraint']),
      defaultValue: json['defaultValue'] as String?,
      enableBehaviour: $enumDecodeNullable(
          _$EnableBehaviourEnumMap, json['enableBehaviour']),
      maxLength: json['maxLength'] as int?,
      disabledDisplay: $enumDecodeNullable(
          _$DisabledDisplayEnumMap, json['disabledDisplay']),
      prefix: json['prefix'] as String?,
      weight: json['weight'] as int?,
      image: json['image'] as String?,
      actionOnResponseDTO: (json['actionOnResponseDTO'] as List<dynamic>?)
          ?.map(
              (e) => ActionOnResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      readOnly: json['readOnly'] as bool?,
      required: json['required'] as bool?,
    );

Map<String, dynamic> _$$_QuestionResponseModelToJson(
        _$_QuestionResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'definition': instance.definition,
      'constraint': _$ConstraintEnumMap[instance.constraint],
      'defaultValue': instance.defaultValue,
      'enableBehaviour': _$EnableBehaviourEnumMap[instance.enableBehaviour],
      'maxLength': instance.maxLength,
      'disabledDisplay': _$DisabledDisplayEnumMap[instance.disabledDisplay],
      'prefix': instance.prefix,
      'weight': instance.weight,
      'image': instance.image,
      'actionOnResponseDTO': instance.actionOnResponseDTO,
      'readOnly': instance.readOnly,
      'required': instance.required,
    };

const _$ConstraintEnumMap = {
  Constraint.DATE: 'DATE',
  Constraint.DATETIME: 'DATETIME',
  Constraint.TEXT: 'TEXT',
  Constraint.INTEGER: 'INTEGER',
  Constraint.DECIMAL: 'DECIMAL',
  Constraint.ASSERTIVE: 'ASSERTIVE',
  Constraint.CHOICE: 'CHOICE',
  Constraint.MULTIFACATED: 'MULTIFACATED',
};

const _$EnableBehaviourEnumMap = {
  EnableBehaviour.ALL: 'ALL',
  EnableBehaviour.ANY: 'ANY',
};

const _$DisabledDisplayEnumMap = {
  DisabledDisplay.PROTECTED: 'PROTECTED',
  DisabledDisplay.HIDDEN: 'HIDDEN',
};
